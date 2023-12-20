`timescale 1ns / 1ps

// By default, all Ultra RAM is configured to 64-bit wide X 4096 deep
module uram_2w_2r_x2 (
  input  wire           clk,
  input  wire           rst_n,
  input  wire [2-1:0]   ce0,
  input  wire [2-1:0]   ce1,
  input  wire [2-1:0]   we0,
  input  wire [2-1:0]   we1,
  input  wire [24-1:0]  addr0,
  input  wire [24-1:0]  addr1,
  input  wire [128-1:0] wdata0,
  input  wire [128-1:0] wdata1,
  output wire [128-1:0] rdata0,
  output wire [128-1:0] rdata1
  );

  wire [64-1:0] rdata0_w[0:2-1];
  wire [64-1:0] rdata1_w[0:2-1];

  uramx2_wrapper inst_2uram (
    .addr0_0 ( addr0[0+:12]  ),
    .addr0_1 ( addr0[12+:12] ),
    .addr1_0 ( addr1[0+:12]  ),
    .addr1_1 ( addr1[12+:12] ),
    .ce0_0   ( ce0[0] ),
    .ce0_1   ( ce0[1] ),
    .ce1_0   ( ce1[0] ),
    .ce1_1   ( ce1[1] ),
    .clk_0   ( clk ),
    .rdata0_0( rdata0_w[0] ),
    .rdata0_1( rdata0_w[1] ),
    .rdata1_0( rdata1_w[0] ),
    .rdata1_1( rdata1_w[1] ),
    .rst_n_0 ( rst_n ),
    .wdata0_0( wdata0[0+:64]  ),
    .wdata0_1( wdata0[64+:64] ),
    .wdata1_0( wdata1[0+:64]  ),
    .wdata1_1( wdata1[64+:64] ),
    .we0_0   ( we0[0]  ),
    .we0_1   ( we0[1]  ),
    .we1_0   ( we1[0]  ),
    .we1_1   ( we1[1]  )
  );

  assign rdata0 = {rdata0_w[1], rdata0_w[0]};
  assign rdata1 = {rdata1_w[1], rdata1_w[0]};

endmodule
