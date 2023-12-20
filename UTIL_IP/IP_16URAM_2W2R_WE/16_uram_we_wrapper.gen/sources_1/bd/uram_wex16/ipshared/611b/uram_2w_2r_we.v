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

module uram_2w_2r_we #(
  parameter integer DATA_WIDTH = 64,
  parameter integer ADDR_RANGE = 4096,
  parameter integer ADDR_WIDTH = 12
)
(
  input  wire                    clk,
  input  wire										 rst_n,
  input  wire                    ce0,
  input  wire                    ce1,
  input  wire [DATA_WIDTH/8-1:0] we0,
  input  wire [DATA_WIDTH/8-1:0] we1,
  input  wire [ADDR_WIDTH-1:0]   addr0,
  input  wire [ADDR_WIDTH-1:0]   addr1,
  output wire [DATA_WIDTH-1:0]   rdata0,
  output wire [DATA_WIDTH-1:0]   rdata1,
  input  wire [DATA_WIDTH-1:0]   wdata0,
  input  wire [DATA_WIDTH-1:0]   wdata1
);

	wire [72-1:0] i_rdata0;
	wire [72-1:0] i_rdata1;
	wire [72-1:0] i_wdata0;
	wire [72-1:0] i_wdata1;	
	wire [23-1:0] i_addr0;
	wire [23-1:0] i_addr1;
	
  wire [(72-DATA_WIDTH)/8-1:0] i_pad_we;
	
	wire rw_bit0;
	wire rw_bit1;

	// wire warn_cflt;
	// wire mrg_wr;

	// assign warn_cflt = (addr0 == addr1);
	// assign mrg_wr = warn_cflt & (we0 & we1);

	assign rdata0 = i_rdata0[DATA_WIDTH-1:0];
	assign rdata1 = i_rdata1[DATA_WIDTH-1:0];
	
	assign i_addr0 = addr0;
	assign i_addr1 = addr1;
	
	assign i_wdata0 = wdata0; //mrg_wr ? (wdata0 & wdata1) : wdata0;
	assign i_wdata1 = wdata1;	
	
	assign i_pad_we = {((72-DATA_WIDTH)/8){1'b0}};
	
	assign rw_bit0 = ~(we0 == 'd0);
	assign rw_bit1 = ~(we1 == 'd0);

   // URAM288_BASE: 288K-bit High-Density Base Memory Building Block
   //               Virtex UltraScale+
   // Xilinx HDL Language Template, version 2020.2

   URAM288_BASE #(
      .AUTO_SLEEP_LATENCY(8),            // Latency requirement to enter sleep mode
      .AVG_CONS_INACTIVE_CYCLES(10),     // Average consecutive inactive cycles when is SLEEP mode for power estimation
      .BWE_MODE_A("PARITY_INDEPENDENT"), // Port A Byte write control
      .BWE_MODE_B("PARITY_INDEPENDENT"), // Port B Byte write control
      .EN_AUTO_SLEEP_MODE("FALSE"),      // Enable to automatically enter sleep mode
      .EN_ECC_RD_A("FALSE"),             // Port A ECC encoder
      .EN_ECC_RD_B("FALSE"),             // Port B ECC encoder
      .EN_ECC_WR_A("FALSE"),             // Port A ECC decoder
      .EN_ECC_WR_B("FALSE"),             // Port B ECC decoder
      .IREG_PRE_A("FALSE"),              // Optional Port A input pipeline registers
      .IREG_PRE_B("FALSE"),              // Optional Port B input pipeline registers
      .IS_CLK_INVERTED(1'b0),            // Optional inverter for CLK
      .IS_EN_A_INVERTED(1'b0),           // Optional inverter for Port A enable
      .IS_EN_B_INVERTED(1'b0),           // Optional inverter for Port B enable
      .IS_RDB_WR_A_INVERTED(1'b0),       // Optional inverter for Port A read/write select
      .IS_RDB_WR_B_INVERTED(1'b0),       // Optional inverter for Port B read/write select
      .IS_RST_A_INVERTED(1'b0),          // Optional inverter for Port A reset
      .IS_RST_B_INVERTED(1'b0),          // Optional inverter for Port B reset
      .OREG_A("FALSE"),                  // Optional Port A output pipeline registers
      .OREG_B("FALSE"),                  // Optional Port B output pipeline registers
      .OREG_ECC_A("FALSE"),              // Port A ECC decoder output
      .OREG_ECC_B("FALSE"),              // Port B output ECC decoder
      .RST_MODE_A("SYNC"),               // Port A reset mode
      .RST_MODE_B("SYNC"),               // Port B reset mode
      .USE_EXT_CE_A("FALSE"),            // Enable Port A external CE inputs for output registers
      .USE_EXT_CE_B("FALSE")             // Enable Port B external CE inputs for output registers
   )
   URAM288_BASE_inst (
      .DBITERR_A(),               // 1-bit output: Port A double-bit error flag status
      .DBITERR_B(),               // 1-bit output: Port B double-bit error flag status
      .DOUT_A(i_rdata0),                   // 72-bit output: Port A read data output
      .DOUT_B(i_rdata1),                   // 72-bit output: Port B read data output
      .SBITERR_A(),               // 1-bit output: Port A single-bit error flag status
      .SBITERR_B(),               // 1-bit output: Port B single-bit error flag status
      .ADDR_A(i_addr0),                    // 23-bit input: Port A address
      .ADDR_B(i_addr1),                    // 23-bit input: Port B address
      .BWE_A({i_pad_we, we0}),            // 9-bit input: Port A Byte-write enable
      .BWE_B({i_pad_we, we1}),            // 9-bit input: Port B Byte-write enable
      .CLK(clk),                           // 1-bit input: Clock source
      .DIN_A(i_wdata0),                    // 72-bit input: Port A write data input
      .DIN_B(i_wdata1),                    // 72-bit input: Port B write data input
      .EN_A(ce0),                          // 1-bit input: Port A enable
      .EN_B(ce1),                          // 1-bit input: Port B enable
      .INJECT_DBITERR_A(1'b0),    // 1-bit input: Port A double-bit error injection
      .INJECT_DBITERR_B(1'b0),    // 1-bit input: Port B double-bit error injection
      .INJECT_SBITERR_A(1'b0),    // 1-bit input: Port A single-bit error injection
      .INJECT_SBITERR_B(1'b0),    // 1-bit input: Port B single-bit error injection
      .OREG_CE_A(1'b0),           // 1-bit input: Port A output register clock enable
      .OREG_CE_B(1'b0),           // 1-bit input: Port B output register clock enable
      .OREG_ECC_CE_A(1'b0),       // 1-bit input: Port A ECC decoder output register clock enable
      .OREG_ECC_CE_B(1'b0),       // 1-bit input: Port B ECC decoder output register clock enable
      .RDB_WR_A(rw_bit0),                 // 1-bit input: Port A read/write select
      .RDB_WR_B(rw_bit1),                 // 1-bit input: Port B read/write select
      .RST_A(~rst_n),                     // 1-bit input: Port A asynchronous or synchronous reset for output registers
      .RST_B(~rst_n),                     // 1-bit input: Port B asynchronous or synchronous reset for output registers
      .SLEEP(1'b0)                        // 1-bit input: Dynamic power gating control
   );
   // End of URAM288_BASE_inst instantiation

endmodule
