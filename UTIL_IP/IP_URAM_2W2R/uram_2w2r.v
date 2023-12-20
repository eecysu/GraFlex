// =============================================================
// URAM buffer with 2 read/write ports
// Operation:
// a. Port0 write
//    assert sel0 & wr_en0
// b. Port0 read
//    assert sel0 & ~wr_en0
// c. Port1 write
//    assert sel1 & wr_en1
// d. Port1 read
//    assert sel1 & ~wr_en1
// =============================================================
`timescale 1 ns / 1 ps

module uram_2w_2r #(
  parameter integer DATA_WIDTH = 64,
  parameter integer ADDR_RANGE = 4096,
  parameter integer ADDR_WIDTH = 12
)
(
  input  wire                   clk,
  input  wire										rst_n,
  input  wire                   ce0,
  input  wire                   ce1,
  input  wire                   we0,
  input  wire                   we1,
  input  wire [ADDR_WIDTH-1:0]  addr0,
  input  wire [ADDR_WIDTH-1:0]  addr1,
  output wire [DATA_WIDTH-1:0]  rdata0,
  output wire [DATA_WIDTH-1:0]  rdata1,
  input  wire [DATA_WIDTH-1:0]  wdata0,
  input  wire [DATA_WIDTH-1:0]  wdata1
);

	wire warn_cflt;
	wire fwd_01;
	wire fwd_10;
	
	wire [DATA_WIDTH-1:0] i_rdata0;
	wire [DATA_WIDTH-1:0] i_rdata1;

	reg  [DATA_WIDTH-1:0] wdata0_r;
	reg  [DATA_WIDTH-1:0] wdata1_r;
	reg  fwd_01_1d;
	reg  fwd_10_1d;

	assign warn_cflt = (addr0 == addr1) & ce0 & ce1;
	assign fwd_01 = warn_cflt & (we0 & ~we1);
	assign fwd_10 = warn_cflt & (we1 & ~we0);
	
	// read logic
	assign rdata0 = fwd_10_1d ? wdata1_r : i_rdata0;
	assign rdata1 = fwd_01_1d ? wdata0_r : i_rdata1;

	always @(posedge clk) begin
		fwd_01_1d <= fwd_01;
		fwd_10_1d <= fwd_10;
	end

	always @(posedge clk) begin
		if (ce0 & we0)
			wdata0_r <= wdata0;
	end

	always @(posedge clk) begin
		if (ce1 & we1)
			wdata1_r <= wdata1;
	end

   // xpm_memory_tdpram: True Dual Port RAM
   // Xilinx Parameterized Macro, version 2020.2

   xpm_memory_tdpram #(
      .ADDR_WIDTH_A(ADDR_WIDTH),      // DECIMAL
      .ADDR_WIDTH_B(ADDR_WIDTH),      // DECIMAL
      .AUTO_SLEEP_TIME(0),            // DECIMAL
      .BYTE_WRITE_WIDTH_A(DATA_WIDTH),// 
      .BYTE_WRITE_WIDTH_B(DATA_WIDTH),// word-wise R/W
      .CASCADE_HEIGHT(0),             // DECIMAL
      .CLOCKING_MODE("common_clock"), // String
      .ECC_MODE("no_ecc"),            // String
      .MEMORY_INIT_FILE("none"),      // String
      .MEMORY_INIT_PARAM("0"),        // String
      .MEMORY_OPTIMIZATION("true"),   // String
      .MEMORY_PRIMITIVE("ultra"),     // String
      .MEMORY_SIZE(262144), 					// DECIMAL
      .MESSAGE_CONTROL(0),            // DECIMAL
      .READ_DATA_WIDTH_A(DATA_WIDTH), // DECIMAL
      .READ_DATA_WIDTH_B(DATA_WIDTH), // DECIMAL
      .READ_LATENCY_A(1),             //
      .READ_LATENCY_B(1),             // BRAM, latch only
      .READ_RESET_VALUE_A("0"),       // String
      .READ_RESET_VALUE_B("0"),       // String
      .RST_MODE_A("SYNC"),            // String
      .RST_MODE_B("SYNC"),            // String
      .SIM_ASSERT_CHK(1),             // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
      .USE_EMBEDDED_CONSTRAINT(0),    // DECIMAL
      .USE_MEM_INIT(0),               // DECIMAL
      .WAKEUP_TIME("disable_sleep"),  // String
      .WRITE_DATA_WIDTH_A(DATA_WIDTH),// DECIMAL
      .WRITE_DATA_WIDTH_B(DATA_WIDTH),// DECIMAL
      .WRITE_MODE_A("no_change"),   // String
      .WRITE_MODE_B("no_change")    // String
   )
   xpm_memory_tdpram_inst (
      .dbiterra(),
      .dbiterrb(),
      .douta(i_rdata0),        // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
      .doutb(i_rdata1),        // READ_DATA_WIDTH_B-bit output: Data output for port B read operations.
      .sbiterra(),
      .sbiterrb(),
      .addra(addr0),           // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
      .addrb(addr1),           // ADDR_WIDTH_B-bit input: Address for port B write and read operations.
      .clka(clk),              // 1-bit input: Clock signal for port A. Also clocks port B when parameter CLOCKING_MODE is "common_clock".
      .clkb(1'b0),
      .dina(wdata0),           // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
      .dinb(wdata1),           // WRITE_DATA_WIDTH_B-bit input: Data input for port B write operations.
      .ena(ce0),               // 1-bit input: Memory enable signal for port A. Must be high on clock cycles when read or write operations are initiated.
      .enb(ce1),               // 1-bit input: Memory enable signal for port B. Must be high on clock cycles when read or write operations are initiated.
      .injectdbiterra(1'b0),
      .injectdbiterrb(1'b0),
      .injectsbiterra(1'b0),
      .injectsbiterrb(1'b0),
      .regcea(1'b1),
      .regceb(1'b1),
      .rsta(~rst_n),
      .rstb(~rst_n),
      .sleep(1'b0),
      .wea(we0),
      .web(we1)
   );

endmodule

