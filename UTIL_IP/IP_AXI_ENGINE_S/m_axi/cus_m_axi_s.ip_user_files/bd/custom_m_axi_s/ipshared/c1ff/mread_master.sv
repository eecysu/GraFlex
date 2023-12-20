// ======================================================================
// Customized AXI read engine for coalescing memory request
//   Memory Read Request Tuple Format:
//     [31 :32-TUPLE_LEN_WIDTH] for the legth (directly used as arlen)
//     [TUPLE_ADDR_WIDTH-1: 0]  for the address
// ======================================================================
`default_nettype none
`timescale 1ns/1ps

module mread_master #(
  parameter   ADDR_WIDTH        = 64,   // only 33 LSBs are used
  parameter   DATA_WIDTH        = 256,  // fixed 256 bit for HBM
  parameter   ID_WIDTH          = 6,    // fixed, maximum 2^6=64 IDs
  parameter   TUPLE_LEN_WIDTH   = 4,    // according to AXI3 burst length
  parameter   TUPLE_ADDR_WIDTH  = 28,
  parameter   C_MAX_OUTSTANDING = 16,
  parameter   C_MAX_BURST_LENGTH= 16
)(
  // System signals
  input  wire      clk,
  input  wire      rst_n,
  // Memory request tuple FIFO interface
  input  wire [ADDR_WIDTH-1:0]   baseAddr,       // base Address
  input  wire [32-1:0]           req_din,        // mem_read request tuple in the (len, addr) format
  output wire                    req_full_n,     // indicating request fifo is full, when eual to 1'b0
  input  wire                    req_wr_en,      // write enable
  // Memory request start, assert when a 'batch' is ready
  input  wire                    req_start,      // should be a pulse signal
  output reg										 req_done,
  // AXI signals: Read Address Channel 
  output wire                    m_axi_ARVALID,
  output wire [8-1:0]            m_axi_ARLEN,    // only 4 LSBs are used
  output reg  [ADDR_WIDTH-1:0]   m_axi_ARADDR,
  output reg  [ID_WIDTH-1:0]     m_axi_ARID,     // fixed
  output reg  [3-1:0]            m_axi_ARSIZE,   // fixed to 32B(256 bit)
  output reg  [1:0]              m_axi_ARBURST,  // fixed to INCR
  output reg  [1:0]              m_axi_ARLOCK,   // unused, left to dangling
  output reg  [3:0]              m_axi_ARCACHE,  // unused, left to dangling
  output reg  [3:0]              m_axi_ARQOS,    // unused, left to dangling
  output reg  [3:0]              m_axi_ARREGION, // unused, left to dangling
  input  wire                    m_axi_ARREADY,  // slave: ready to accept addr
  // AXI signals: Read Data Channel
  input  wire                    m_axi_RVALID,   // slave: data is valid on the bus
  input  wire [DATA_WIDTH-1:0]   m_axi_RDATA,    // slave: requested data 
  input  wire                    m_axi_RLAST,    // slave: last txfr beat
  input  wire [ID_WIDTH-1:0]     m_axi_RID,      // do not care
  input  wire [1:0]              m_axi_RRESP,    // do not care
  output wire                    m_axi_RREADY,   // master: ready to accept data
  // AXI-4 Stream Master Interface
  output wire                    m_axis_tvalid,
  input  wire                    m_axis_tready,
  output wire                    m_axis_tlast,
  output wire [DATA_WIDTH/8-1:0] m_axis_tkeep,
  output wire [DATA_WIDTH/8-1:0] m_axis_tstrb,
  output wire [DATA_WIDTH-1:0]   m_axis_tdata
);

/////////////////////////////////////////////////////////////////////////////
// Function
/////////////////////////////////////////////////////////////////////////////
function integer log2;
  input integer x;
  integer n, m;
  begin
    n = 0;
    m = 1;
    while (m < x) begin
      n = n + 1;
      m = m * 2;
    end
    log2 = n;
  end
endfunction

/////////////////////////////////////////////////////////////////////////////
// Local Parameters
/////////////////////////////////////////////////////////////////////////////
localparam integer LP_MAX_OUTSTANDING       = C_MAX_OUTSTANDING;
localparam integer LP_MAX_BURST_LENGTH      = C_MAX_BURST_LENGTH;
localparam integer LP_LOG_MAX_OUTSTANDING   = log2(C_MAX_OUTSTANDING);
localparam integer LP_LOG_MAX_BURST_LENGTH  = log2(C_MAX_BURST_LENGTH);

/////////////////////////////////////////////////////////////////////////////
// Variables
/////////////////////////////////////////////////////////////////////////////
logic start = 1'b0; // internal ctrl start
logic [32-1:0] mem_req_tuple;
logic req_full;
logic i_axis_tlast;

logic arvalid_r = 1'b0;
logic ar_idle = 1'b1;
logic ar_done;
logic arxfer; // indicate an AR transfer
logic ardone; // memory request in AR channel is done
logic ar_final_transaction;

logic rxfer;  // indicate a R transfer
logic decr_r_transaction_cntr;
logic r_final_transaction;

logic s_tvalid;
logic s_tready;
logic s_tlast;

logic [DATA_WIDTH-1:0] s_tdata;
logic [LP_LOG_MAX_OUTSTANDING-1:0] trans_counter = 0;
logic [LP_LOG_MAX_OUTSTANDING-1:0] num_transactions;
logic [LP_LOG_MAX_OUTSTANDING-1:0] r_transactions_to_go;
logic [LP_LOG_MAX_OUTSTANDING-1:0] ar_transactions_to_go;

logic [32-1:0] cnt_item_togo = 0;
logic [32-1:0] cnt_item_sent = 0;

/////////////////////////////////////////////////////////////////////////////
// RTL Logic
/////////////////////////////////////////////////////////////////////////////
// Tie-off unused AXI signals
always @(posedge clk) begin
  m_axi_ARID     <= {ID_WIDTH{1'b0}};
  m_axi_ARSIZE   <= 3'b101;  // 256-bit
  m_axi_ARBURST  <= 2'b01;   // INCR
  m_axi_ARLOCK   <= 2'b00;   // Normal memory operation
  m_axi_ARCACHE  <= 4'b0011;
  m_axi_ARQOS    <= 4'b0000; // Not participating in any Qos schem
  m_axi_ARREGION <= 4'b0000; // Region indicator, default to 0
end

/////////////////////////////////////////////////////////////////////////////
// XPM Modules (refer to UG974 for Documentation)
/////////////////////////////////////////////////////////////////////////////
// xpm_fifo_sync: Synchronous FIFO
// Xilinx Parameterized Macro, version 2020.2
xpm_fifo_sync #(
	.DOUT_RESET_VALUE		( "0"						), // String
	.ECC_MODE						( "no_ecc"			), // String
	.FIFO_MEMORY_TYPE		( "distributed"	), // String
	.FIFO_READ_LATENCY	( 1							), // 0-100
	.FIFO_WRITE_DEPTH		( 16						), // at least 16
	.FULL_RESET_VALUE		( 0							), // full, almost full, prog_full
	.PROG_EMPTY_THRESH	( 3							), // DECIMAL
	.PROG_FULL_THRESH		( 13						), // DECIMAL
	.RD_DATA_COUNT_WIDTH( 8							), // DECIMAL
	.READ_DATA_WIDTH		( 32						), // DECIMAL
	.READ_MODE					( "std"					), // String
	.SIM_ASSERT_CHK			( 0							), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
	.USE_ADV_FEATURES		( "0000"				), // String
	.WAKEUP_TIME				( 0							), // 0 to disable sleep
	.WRITE_DATA_WIDTH		( 32						), // DECIMAL
	.WR_DATA_COUNT_WIDTH( 8 						)  // DECIMAL
) mem_req_tuple_fifo_inst (
	.almost_empty		(), // unused, dangling
	.almost_full		(), // unused, dangling
	.data_valid			(), // unused, dangling
	.dbiterr				(), // unused, dangling
	.dout						( mem_req_tuple 			),
	.empty					(), // unused, dangling
	.full						( req_full      			),
	.overflow				(), // unused, dangling
	.prog_empty			(), // unused, dangling
	.prog_full			(), // unused, dangling
	.rd_data_count	(), // unused, dangling
	.rd_rst_busy		(), // unused, dangling
	.sbiterr				(), // unused, dangling
	.underflow			(), // unused, dangling
	.wr_ack					(), // unused, dangling
	.wr_data_count	(), // unused, dangling
	.wr_rst_busy		(), // unused, dangling
	.din						( req_din							),
	.injectdbiterr	( 1'b0								),
	.injectsbiterr	( 1'b0								),
	.rd_en					( req_start | arxfer	),
	.rst						( ~rst_n							),
	.sleep					( 1'b0								),
	.wr_clk					( clk									),
	.wr_en					( req_wr_en						)
 );
assign req_full_n = ~req_full;

// xpm_fifo_axis: AXI Stream FIFO
// Xilinx Parameterized Macro, version 2020.2
xpm_fifo_axis #(
  .CDC_SYNC_STAGES          ( 2                   ),
  .CLOCKING_MODE            ( "common_clock" 			),
  .ECC_MODE                 ( "no_ecc"            ),
  .FIFO_DEPTH               ( 256                 ), // sufficient and do not need backpressure
  .FIFO_MEMORY_TYPE         ( "block"             ),
  .PACKET_FIFO              ( "false"             ),
  .PROG_EMPTY_THRESH        ( 5                   ),
  .PROG_FULL_THRESH         ( 250                 ),
  .RD_DATA_COUNT_WIDTH      ( 16                  ),
  .RELATED_CLOCKS           ( 0                   ),
  .SIM_ASSERT_CHK           ( 0                   ), // no simulation message
  .TDATA_WIDTH              ( DATA_WIDTH          ),
  .TDEST_WIDTH              ( 1                   ),
  .TID_WIDTH                ( 1                   ),
  .TUSER_WIDTH              ( 1                   ),
  .USE_ADV_FEATURES         ( "1000"              ),
  .WR_DATA_COUNT_WIDTH      ( 16                  )
) inst_axis_data_fifo (
  .almost_empty_axis        (), // unused, dangling
  .almost_full_axis         (), // unused, dangling
  .dbiterr_axis             (), // unused, dangling
  .m_axis_tdata             ( m_axis_tdata            ),
  .m_axis_tdest             (), // unused, dangling
  .m_axis_tid               (), // unused, dangling
  .m_axis_tkeep             ( m_axis_tkeep            ),
  .m_axis_tlast             ( i_axis_tlast            ),
  .m_axis_tstrb             ( m_axis_tstrb            ),
  .m_axis_tuser             (), // unused, dangling
  .m_axis_tvalid            ( m_axis_tvalid           ),
  .prog_empty_axis          (), // unused, dangling
  .prog_full_axis           (), // unused, dangling
  .rd_data_count_axis       (), // unused, dangling
  .s_axis_tready            ( s_tready                ),
  .sbiterr_axis             (), // unused, dangling
  .wr_data_count_axis       (), // unused, dangling
  .injectdbiterr_axis       ( 1'b0                    ),
  .injectsbiterr_axis       ( 1'b0                    ),
  .m_aclk                   ( clk                     ), // Master Interface Clock                              
  .m_axis_tready            ( m_axis_tready           ), // Indicates that the master side can accept a transfer
  .s_aclk                   ( clk                     ), // Slave Interface Clock
  .s_aresetn                ( rst_n                   ), // Active low asynchronous reset.
  .s_axis_tdata             ( s_tdata                 ),
  .s_axis_tdest             ( 1'b0                    ), // unused
  .s_axis_tid               ( 1'b0                    ), // unused
  .s_axis_tkeep             ( {(DATA_WIDTH/8){1'b1}}  ),
  .s_axis_tlast             ( s_tlast                 ), //
  .s_axis_tstrb             ( {(DATA_WIDTH/8){1'b1}}  ),
  .s_axis_tuser             ( 1'b0                    ),
  .s_axis_tvalid            ( s_tvalid                )
);

assign m_axis_tlast = i_axis_tlast & ((cnt_item_sent+1)==cnt_item_togo);

always @(posedge clk) begin
  start <= req_start;
  num_transactions <= trans_counter;
end

always @(posedge clk) begin
  if (~rst_n || req_done)
    trans_counter <= 0;
  else if (req_wr_en)
    trans_counter <= trans_counter + 1;
end

always @(*) begin
	req_done = rxfer & m_axi_RLAST & r_final_transaction;
end

// verify that all items have been read
always @(posedge clk) begin
	if (~rst_n)
		cnt_item_togo <= 32'd0;
	else if (req_wr_en == 1'b1)
		cnt_item_togo <= cnt_item_togo + (req_din[31: 32-TUPLE_LEN_WIDTH]+1);
end

always @(posedge clk) begin
	if (~rst_n)
		cnt_item_sent <= 32'd0;
	else if (m_axis_tvalid & m_axis_tready)
		cnt_item_sent <= cnt_item_sent + 32'd1;
end

///////////////////////////////////////////////////////////////////////////////
// AXI Read Address Channel
///////////////////////////////////////////////////////////////////////////////
assign m_axi_ARVALID = arvalid_r;
assign m_axi_ARADDR  = baseAddr + mem_req_tuple[TUPLE_ADDR_WIDTH-1: 0];
assign m_axi_ARLEN   = mem_req_tuple[31: 32-TUPLE_LEN_WIDTH];
assign arxfer = m_axi_ARVALID & m_axi_ARREADY;

always @(posedge clk) begin 
  if (~rst_n) 
    arvalid_r <=  1'b0;
  else
    arvalid_r <=  (~ar_idle & ~arvalid_r) ? 1'b1 : 
                  m_axi_ARREADY ? 1'b0 : arvalid_r;
end

// When ar_idle, there are no transactions to issue.
always @(posedge clk) begin 
  if (~rst_n) 
    ar_idle <= 1'b1; 
  else 
    ar_idle <=  start   ? 1'b0 :
                ar_done ? 1'b1 : 
                ar_idle;
end

// Counts down the number of transactions to send
axi_counter #(
  .C_WIDTH ( LP_LOG_MAX_OUTSTANDING         ),
  .C_INIT  ( {LP_LOG_MAX_OUTSTANDING{1'b0}} ) 
) inst_ar_transaction_cntr (
  .clk        ( clk                 	),
  .clken      ( 1'b1                  ),
  .rst        ( ~rst_n              	),
  .load       ( start                 ),
  .incr       ( 1'b0                  ),
  .decr       ( arxfer                ), // decrements when a request is sent
  .load_value ( num_transactions-1    ),
  .count      ( ar_transactions_to_go ),
  .is_zero    ( ar_final_transaction  )
);

assign ar_done = ar_final_transaction & arxfer;

///////////////////////////////////////////////////////////////////////////////
// AXI Read Channel
///////////////////////////////////////////////////////////////////////////////
assign s_tvalid = m_axi_RVALID;
assign s_tdata = m_axi_RDATA;
assign s_tlast = m_axi_RLAST;

// rready can always remain high since the FIFO depth is sufficient
assign m_axi_RREADY = 1'b1;
assign rxfer = m_axi_RREADY & m_axi_RVALID;

assign decr_r_transaction_cntr = rxfer & m_axi_RLAST;

axi_counter #(
  .C_WIDTH ( LP_LOG_MAX_OUTSTANDING         ),
  .C_INIT  ( {LP_LOG_MAX_OUTSTANDING{1'b0}} ) 
) inst_r_transaction_cntr ( 
  .clk        ( clk                   	),
  .clken      ( 1'b1                    ),
  .rst        ( ~rst_n                	),
  .load       ( start                   ),
  .incr       ( 1'b0                    ),
  .decr       ( decr_r_transaction_cntr ),
  .load_value ( num_transactions-1      ),
  .count      ( r_transactions_to_go    ),
  .is_zero    ( r_final_transaction     ) 
);

endmodule
`default_nettype wire
