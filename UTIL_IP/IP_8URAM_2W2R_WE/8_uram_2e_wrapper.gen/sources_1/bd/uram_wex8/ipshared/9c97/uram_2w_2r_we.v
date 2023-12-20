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

module uram_2w_2r_we (
  input  wire           clk,
  input  wire						rst_n,
  input  wire           ce0,
  input  wire           ce1,
  input  wire [8-1:0]   we0,
  input  wire [8-1:0]   we1,
  input  wire [12-1:0]  addr0,
  input  wire [12-1:0]  addr1,
  output reg  [64-1:0]  rdata0,
  output reg  [64-1:0]  rdata1,
  input  wire [64-1:0]  wdata0,
  input  wire [64-1:0]  wdata1
);

	wire [72-1:0] i_rdata0;
	wire [72-1:0] i_rdata1;
	wire [72-1:0] i_wdata0;
	wire [72-1:0] i_wdata1;	
	wire [23-1:0] i_addr0;
	wire [23-1:0] i_addr1;
	
	
	wire rw_bit0;
	wire rw_bit1;

	wire warn_cflt;
	wire fwd_01;
	wire fwd_10;

	reg  [64-1:0] wdata0_r, wdata1_r;
	reg  [8-1:0] we0_r, we1_r;
	reg  fwd_01_1d;
	reg  fwd_10_1d;

	assign rw_bit0 = ~(we0 == 'd0);
	assign rw_bit1 = ~(we1 == 'd0);

	assign i_addr0 = addr0;
	assign i_addr1 = addr1;

  always @(*) begin
	  rdata0 <= i_rdata0[63:0];
	  rdata1 <= i_rdata1[63:0];
	end
	
	assign i_wdata0 = wdata0; //mrg_wr ? (wdata0 & wdata1) : wdata0;
	assign i_wdata1 = wdata1;	

  // if forwarding
	assign warn_cflt = (addr0 == addr1) & ce0 & ce1;
	assign fwd_01 = warn_cflt & (rw_bit0 & ~rw_bit1);
	assign fwd_10 = warn_cflt & (rw_bit1 & ~rw_bit0);

//	assign rdata0 = fwd_10_1d ? wdata1_r : i_rdata0[64-1:0];
//	assign rdata1 = fwd_01_1d ? wdata0_r : i_rdata1[64-1:0];

//  always @(*) begin
//    if (fwd_10_1d) begin
//      case (we1_r)
//        8'h01: rdata0 <= {i_rdata0[63:8],  wdata1_r[7:0]};
//        8'h02: rdata0 <= {i_rdata0[63:16], wdata1_r[15:8], i_rdata0[7:0]};
//        8'h04: rdata0 <= {i_rdata0[63:24], wdata1_r[23:16],i_rdata0[15:0]};
//        8'h08: rdata0 <= {i_rdata0[63:32], wdata1_r[31:24],i_rdata0[23:0]};
//        8'h10: rdata0 <= {i_rdata0[63:40], wdata1_r[39:32],i_rdata0[31:0]};
//        8'h20: rdata0 <= {i_rdata0[63:48], wdata1_r[47:40],i_rdata0[39:0]};
//        8'h40: rdata0 <= {i_rdata0[63:56], wdata1_r[55:48],i_rdata0[47:0]};
//        8'h80: rdata0 <= {wdata1_r[63:56], i_rdata0[55:0]};
        
//        default: rdata0 <= i_rdata0[63:0];
//      endcase
//    end else
//      rdata0 <= i_rdata0[63:0];
//  end

//  always @(*) begin
//    if (fwd_01_1d) begin
//      case (we0_r)
//        8'h01: rdata1 <= {i_rdata1[63:8],  wdata0_r[7:0]};
//        8'h02: rdata1 <= {i_rdata1[63:16], wdata0_r[15:8], i_rdata1[7:0]};
//        8'h04: rdata1 <= {i_rdata1[63:24], wdata0_r[23:16],i_rdata1[15:0]};
//        8'h08: rdata1 <= {i_rdata1[63:32], wdata0_r[31:24],i_rdata1[23:0]};
//        8'h10: rdata1 <= {i_rdata1[63:40], wdata0_r[39:32],i_rdata1[31:0]};
//        8'h20: rdata1 <= {i_rdata1[63:48], wdata0_r[47:40],i_rdata1[39:0]};
//        8'h40: rdata1 <= {i_rdata1[63:56], wdata0_r[55:48],i_rdata1[47:0]};
//        8'h80: rdata1 <= {wdata0_r[63:56], i_rdata1[55:0]};
        
//        default: rdata1 <= i_rdata1[63:0];
//      endcase
//    end else
//      rdata1 <= i_rdata1[63:0];
//  end

//  always @(posedge clk) begin
//		fwd_01_1d <= fwd_01;
//		fwd_10_1d <= fwd_10;
//	end

//	always @(posedge clk) begin
//		if (ce0 & (we0!='d0)) begin
//			wdata0_r <= wdata0;
//			we0_r <= we0;
//	  end
//	end

//	always @(posedge clk) begin
//		if (ce1 & (we1!='d0)) begin
//			wdata1_r <= wdata1;
//			we1_r <= we1;
//		end
//	end

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
      .BWE_A({1'b0, we0}),            // 9-bit input: Port A Byte-write enable
      .BWE_B({1'b0, we1}),            // 9-bit input: Port B Byte-write enable
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
