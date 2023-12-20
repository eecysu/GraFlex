/**
* Copyright (C) 2019-2021 Xilinx, Inc
*
* Licensed under the Apache License, Version 2.0 (the "License"). You may
* not use this file except in compliance with the License. A copy of the
* License is located at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations
* under the License.
*
* Modified by eecysu to support cross clock-domain write
*/

////////////////////////////////////////////////////////////
// Description: AXI3 Write Master.  Takes a stream of data in,
// appends address information and sends it out. The stream length
// is no longer than 16 such that it is sent in one transaction
`default_nettype none
`timescale 1ns/1ps

module swr_engine #(
  parameter   ADDR_WIDTH         = 64,  // only 33 LSBs are used
  parameter   DATA_WIDTH         = 256, // fixed 256 bit for HBM
  parameter   ID_WIDTH           = 6,   // fixed, maximum 2^6=64 IDs
  parameter   C_MAX_LENGTH_WIDTH = 8,   // must not cross 4K boundry
  parameter   C_MAX_BURST_LENGTH = 16,
  parameter   C_LOG_BURST_LENGTH = 4
) (
  // System signals
  input  wire                           clk,
  input  wire                           rst_n,
  // Control interface
  input  wire [ADDR_WIDTH-1:0]          baseAddr,
  input  wire                           req_start,
  input  wire [C_MAX_LENGTH_WIDTH-1:0]  req_length,    // the unit is an AXI beat (data of length DATA_WIDTH)
  output wire                           req_done,
  // AXI signals: Write Address Channel
  output wire                           m_axi_AWVALID,
  output wire [ADDR_WIDTH-1:0]          m_axi_AWADDR,
  output reg  [ID_WIDTH-1:0]            m_axi_AWID,
  output wire [8-1:0]                   m_axi_AWLEN,   // only 4 LSBs are used
  output reg  [3-1:0]                   m_axi_AWSIZE,
  input  wire                           m_axi_AWREADY,
  // AXI signals: Write Data Channel
  output wire [DATA_WIDTH-1:0]          m_axi_WDATA,
  output reg  [DATA_WIDTH/8-1:0]        m_axi_WSTRB,
  output wire                           m_axi_WLAST,
  output wire                           m_axi_WVALID,
  input  wire                           m_axi_WREADY,
  // AXI signals: Write Response Channel
  input  wire [1:0]                     m_axi_BRESP,
  input  wire                           m_axi_BVALID,
  output wire                           m_axi_BREADY,
  // AXI4-Stream interface
  input  wire                           s_axis_tvalid,
  input  wire [DATA_WIDTH-1:0]          s_axis_tdata,
  output wire                           s_axis_tready
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
localparam integer LP_LOG_MAX_W_TO_AW = 4; // Allow up to 16 outstanding w to aw transactions
localparam integer LP_TRANSACTION_CNTR_WIDTH = C_MAX_LENGTH_WIDTH-C_LOG_BURST_LENGTH;

/////////////////////////////////////////////////////////////////////////////
// Variables
/////////////////////////////////////////////////////////////////////////////
logic [LP_TRANSACTION_CNTR_WIDTH-1:0] num_full_bursts;
logic                                 num_partial_bursts;
logic                                 start    = 1'b0;
logic [LP_TRANSACTION_CNTR_WIDTH-1:0] num_transactions;
logic                                 has_partial_burst;
logic [C_LOG_BURST_LENGTH-1:0]        final_burst_len;
logic                                 single_transaction;

logic                                 wxfer;         // Unregistered write data transfer
logic                                 wfirst = 1'b1;
logic                                 load_burst_cntr;
logic [C_LOG_BURST_LENGTH-1:0]        wxfers_to_go;  // Used for simulation debug
logic [LP_TRANSACTION_CNTR_WIDTH-1:0] w_transactions_to_go;
logic                                 w_final_transaction;
logic                                 w_almost_final_transaction = 1'b0;

logic                                 awxfer;
logic                                 awvalid_r    = 1'b0; 
logic [ADDR_WIDTH-1:0]                addr;
logic                                 wfirst_d1    = 1'b0; 
logic                                 wfirst_pulse = 1'b0;
logic [LP_LOG_MAX_W_TO_AW-1:0]        dbg_w_to_aw_outstanding;
logic                                 idle_aw;
logic [LP_TRANSACTION_CNTR_WIDTH-1:0] aw_transactions_to_go;
logic                                 aw_final_transaction;

logic                                 bxfer;
logic [LP_TRANSACTION_CNTR_WIDTH-1:0] b_transactions_to_go;
logic                                 b_final_transaction;

logic                                 m_tvalid;
logic                                 m_tready;
logic [DATA_WIDTH-1:0]                m_tdata;
logic                                 fifo_almost_full;

/////////////////////////////////////////////////////////////////////////////
// RTL logic
/////////////////////////////////////////////////////////////////////////////
// Tie-off unused AXI signals
always @(posedge clk) begin
  m_axi_AWID   <= {ID_WIDTH{1'b0}};
  m_axi_WSTRB  <= {(DATA_WIDTH/8){1'b1}};
end

/////////////////////////////////////////////////////////////////////////////
// XPM Modules (refer to UG974 for Documentation)
/////////////////////////////////////////////////////////////////////////////
// xpm_fifo_axis: AXI Stream FIFO
// Xilinx Parameterized Macro, version 2020.2
xpm_fifo_axis #(
  .CDC_SYNC_STAGES          ( 2                   ),
  .CLOCKING_MODE            ( "common_clock" 			),
  .ECC_MODE                 ( "no_ecc"            ),
  .FIFO_DEPTH               ( 16                  ), // sufficient and do not need backpressure
  .FIFO_MEMORY_TYPE         ( "distributed"       ),
  .PACKET_FIFO              ( "false"             ),
  .PROG_EMPTY_THRESH        ( 5                   ),
  .PROG_FULL_THRESH         ( 11                  ),
  .RD_DATA_COUNT_WIDTH      ( 8                   ),
  .RELATED_CLOCKS           ( 0                   ),
  .SIM_ASSERT_CHK           ( 0                   ),
  .TDATA_WIDTH              ( DATA_WIDTH          ),
  .TDEST_WIDTH              ( 1                   ),
  .TID_WIDTH                ( 1                   ),
  .TUSER_WIDTH              ( 1                   ),
  .USE_ADV_FEATURES         ( "1000"              ),
  .WR_DATA_COUNT_WIDTH      ( 8                   )
) inst_axis_data_fifo (
  .almost_empty_axis        (), // unused, dangling
  .almost_full_axis         (), // unused, dangling
  .dbiterr_axis             (), // unused, dangling
  .m_axis_tdata             ( m_tdata                 ),
  .m_axis_tdest             (), // unused, dangling
  .m_axis_tid               (), // unused, dangling
  .m_axis_tkeep             (), // unused, dangling
  .m_axis_tlast             (), // unused, dangling
  .m_axis_tstrb             (), // unused, dangling
  .m_axis_tuser             (), // unused, dangling
  .m_axis_tvalid            ( m_tvalid                ),
  .prog_empty_axis          (), // unused, dangling
  .prog_full_axis           (), // unused, dangling
  .rd_data_count_axis       (), // unused, dangling
  .s_axis_tready            ( s_axis_tready           ),
  .sbiterr_axis             (), // unused, dangling
  .wr_data_count_axis       (), // unused, dangling
  .injectdbiterr_axis       ( 1'b0                    ),
  .injectsbiterr_axis       ( 1'b0                    ),
  .m_aclk                   ( clk                     ), // Master Interface Clock                              
  .m_axis_tready            ( m_tready                ), // Indicates that the master side can accept a transfer
  .s_aclk                   ( clk                     ), // Slave Interface Clock
  .s_aresetn                ( rst_n                   ), // Active low asynchronous reset.
  .s_axis_tdata             ( s_axis_tdata            ),
  .s_axis_tdest             ( 1'b0                    ), // unused
  .s_axis_tid               ( 1'b0                    ), // unused
  .s_axis_tkeep             ( {(DATA_WIDTH/8){1'b1}}  ),
  .s_axis_tlast             ( 1'b0                    ), //
  .s_axis_tstrb             ( {(DATA_WIDTH/8){1'b1}}  ),
  .s_axis_tuser             ( 1'b0                    ),
  .s_axis_tvalid            ( s_axis_tvalid           )
);

// Control Logic
// Count the number of transfers and assert done when the last bvalid is received.
assign num_full_bursts = req_length[C_LOG_BURST_LENGTH+:C_MAX_LENGTH_WIDTH-C_LOG_BURST_LENGTH];
assign num_partial_bursts = req_length[0+:C_LOG_BURST_LENGTH] ? 1'b1 : 1'b0; 

always @(posedge clk) begin 
  start <= req_start;
  num_transactions  <= (num_partial_bursts == 1'b0) ? (num_full_bursts-1'b1) : num_full_bursts;
  has_partial_burst <= num_partial_bursts;
  final_burst_len   <= req_length[0+:C_LOG_BURST_LENGTH] - 1'b1;
end

assign single_transaction = (num_transactions == {LP_TRANSACTION_CNTR_WIDTH{1'b0}}) ? 1'b1 : 1'b0;
assign req_done = bxfer & b_final_transaction;

/////////////////////////////////////////////////////////////////////////////
// AXI Write Data Channel
/////////////////////////////////////////////////////////////////////////////
assign m_axi_WVALID = m_tvalid;
assign m_axi_WDATA  = m_tdata;
assign m_tready     = m_axi_WREADY;
assign wxfer = m_axi_WVALID & m_axi_WREADY; 

always @(posedge clk) begin 
  if (~rst_n) 
    wfirst <= 1'b1;
  else
    wfirst <= wxfer ? m_axi_WLAST : wfirst;
end

// Load burst counter with partial burst if on final transaction or if there is only 1 transaction
assign load_burst_cntr = (wxfer & m_axi_WLAST & w_almost_final_transaction) || (start & single_transaction);

axi_counter #(
  .C_WIDTH ( C_LOG_BURST_LENGTH         ),
  .C_INIT  ( {C_LOG_BURST_LENGTH{1'b1}} ) 
) inst_burst_cntr ( 
  .clk        ( clk             ),
  .clken      ( 1'b1            ),
  .rst        ( ~rst_n          ),
  .load       ( load_burst_cntr ),
  .incr       ( 1'b0            ),
  .decr       ( wxfer           ),
  .load_value ( final_burst_len ),
  .count      ( wxfers_to_go    ),
  .is_zero    ( m_axi_WLAST     ) 
);

axi_counter #(
  .C_WIDTH ( LP_TRANSACTION_CNTR_WIDTH         ),
  .C_INIT  ( {LP_TRANSACTION_CNTR_WIDTH{1'b0}} ) 
) inst_w_transaction_cntr ( 
  .clk        ( clk                  ),
  .clken      ( 1'b1                 ),
  .rst        ( ~rst_n               ),
  .load       ( start                ),
  .incr       ( 1'b0                 ),
  .decr       ( wxfer & m_axi_WLAST  ),
  .load_value ( num_transactions     ),
  .count      ( w_transactions_to_go ),
  .is_zero    ( w_final_transaction  ) 
);

always @(posedge clk) begin
  w_almost_final_transaction <= (w_transactions_to_go==1) ? 1'b1 : 1'b0;
end

/////////////////////////////////////////////////////////////////////////////
// AXI Write Address Channel
/////////////////////////////////////////////////////////////////////////////
// The address channel samples the data channel and send out transactions when 
// first beat of wdata is asserted. This ensures that address requests are not 
// sent without data on the way.
always @(posedge clk) begin 
  if (~rst_n) 
    awvalid_r <= 1'b0;
  else
    awvalid_r <= ~idle_aw & ~awvalid_r ? 1'b1 : 
                 m_axi_AWREADY ? 1'b0 : awvalid_r;
end

assign m_axi_AWVALID = awvalid_r;
assign awxfer = m_axi_AWVALID & m_axi_AWREADY;

always @(posedge clk) begin 
  addr <= req_start ? baseAddr :
          awxfer ? addr + C_MAX_BURST_LENGTH*DATA_WIDTH/8 : addr;
end
assign m_axi_AWADDR = addr;

assign m_axi_AWLEN  = aw_final_transaction || (start & single_transaction) ? final_burst_len : (C_MAX_BURST_LENGTH-1);
assign m_axi_AWSIZE = log2((DATA_WIDTH/8));

axi_counter #(
  .C_WIDTH (LP_LOG_MAX_W_TO_AW          ),
  .C_INIT  ({LP_LOG_MAX_W_TO_AW{1'b0}}  )
) inst_w_to_aw_cntr ( 
  .clk        ( clk                     ),
  .clken      ( 1'b1                    ),
  .rst        ( ~rst_n                  ),
  .load       ( 1'b0                    ),
  .incr       ( wfirst_pulse            ),
  .decr       ( awxfer                  ),
  .load_value (                         ),
  .count      ( dbg_w_to_aw_outstanding ),
  .is_zero    ( idle_aw                 ) 
);

always @(posedge clk) begin 
  wfirst_d1 <= m_axi_WVALID & wfirst; 
end

always @(posedge clk) begin 
  wfirst_pulse <= m_axi_WVALID & wfirst & ~wfirst_d1;
end

axi_counter #(
  .C_WIDTH ( LP_TRANSACTION_CNTR_WIDTH         ),
  .C_INIT  ( {LP_TRANSACTION_CNTR_WIDTH{1'b0}} ) 
) inst_aw_transaction_cntr ( 
  .clk        ( clk                    ),
  .clken      ( 1'b1                   ),
  .rst        ( ~rst_n                 ),
  .load       ( start                  ),
  .incr       ( 1'b0                   ),
  .decr       ( awxfer                 ),
  .load_value ( num_transactions       ),
  .count      ( aw_transactions_to_go  ),
  .is_zero    ( aw_final_transaction   ) 
);

/////////////////////////////////////////////////////////////////////////////
// AXI Write Response Channel
/////////////////////////////////////////////////////////////////////////////
assign m_axi_BREADY = 1'b1;  // alkways ready to accept response
assign bxfer = m_axi_BREADY & m_axi_BVALID;

axi_counter #(
  .C_WIDTH ( LP_TRANSACTION_CNTR_WIDTH         ),
  .C_INIT  ( {LP_TRANSACTION_CNTR_WIDTH{1'b0}} ) 
) inst_b_transaction_cntr ( 
  .clk        ( clk                  ),
  .clken      ( 1'b1                 ),
  .rst        ( ~rst_n               ),
  .load       ( start                ),
  .incr       ( 1'b0                 ),
  .decr       ( bxfer                ),
  .load_value ( num_transactions     ),
  .count      ( b_transactions_to_go ),
  .is_zero    ( b_final_transaction  ) 
);

endmodule
`default_nettype wire
