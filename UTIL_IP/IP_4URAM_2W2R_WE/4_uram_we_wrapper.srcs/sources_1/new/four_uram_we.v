`timescale 1ns / 1ps

// By default, all Ultra RAM is configured to 64-bit wide X 4096 deep
module uram_2w_2r_we_x4 (
  input  wire           clk,
  input  wire           rst_n,
  input  wire [4-1:0]   ce0,
  input  wire [4-1:0]   ce1,
  input  wire [32-1:0]  we0,
  input  wire [32-1:0]  we1,
  input  wire [48-1:0]  addr0,
  input  wire [48-1:0]  addr1,
  input  wire [256-1:0] wdata0,
  input  wire [256-1:0] wdata1,
  output wire [256-1:0] rdata0,
  output wire [256-1:0] rdata1
  );

  wire [64-1:0] rdata0_w[0:4-1];
  wire [64-1:0] rdata1_w[0:4-1];

  uram_wex4_wrapper inst_4uram_we (
    .addr0_0 ( addr0[0+:12]  ),
    .addr0_1 ( addr0[12+:12] ),
    .addr0_2 ( addr0[24+:12]  ),
    .addr0_3 ( addr0[36+:12] ),    
    .addr1_0 ( addr1[0+:12]  ),
    .addr1_1 ( addr1[12+:12] ),
    .addr1_2 ( addr1[24+:12]  ),
    .addr1_3 ( addr1[36+:12] ),
    .ce0_0   ( ce0[0] ),
    .ce0_1   ( ce0[1] ),
    .ce0_2   ( ce0[2] ),
    .ce0_3   ( ce0[3] ),    
    .ce1_0   ( ce1[0] ),
    .ce1_1   ( ce1[1] ),
    .ce1_2   ( ce1[2] ),
    .ce1_3   ( ce1[3] ),    
    .clk_0   ( clk ),
    .rdata0_0( rdata0_w[0] ),
    .rdata0_1( rdata0_w[1] ),
    .rdata0_2( rdata0_w[2] ),
    .rdata0_3( rdata0_w[3] ),    
    .rdata1_0( rdata1_w[0] ),
    .rdata1_1( rdata1_w[1] ),
    .rdata1_2( rdata1_w[2] ),
    .rdata1_3( rdata1_w[3] ),
    .rst_n_0 ( rst_n ),
    .wdata0_0( wdata0[0+:64]   ),
    .wdata0_1( wdata0[64+:64]  ),
    .wdata0_2( wdata0[128+:64] ),
    .wdata0_3( wdata0[192+:64] ),
    .wdata1_0( wdata1[0+:64]   ),
    .wdata1_1( wdata1[64+:64]  ),
    .wdata1_2( wdata1[128+:64] ),
    .wdata1_3( wdata1[192+:64] ),    
    .we0_0   ( we0[0+:8]  ),
    .we0_1   ( we0[8+:8]  ),
    .we0_2   ( we0[16+:8] ),
    .we0_3   ( we0[24+:8] ),    
    .we1_0   ( we1[0+:8]  ),
    .we1_1   ( we1[8+:8]  ),
    .we1_2   ( we1[16+:8] ),
    .we1_3   ( we1[24+:8] )
  );

  assign rdata0 = {rdata0_w[3], rdata0_w[2], rdata0_w[1], rdata0_w[0]};
  assign rdata1 = {rdata1_w[3], rdata1_w[2], rdata1_w[1], rdata1_w[0]};

endmodule
