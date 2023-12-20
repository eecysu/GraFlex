`timescale 1ns / 1ps

// By default, all Ultra RAM is configured to 64-bit wide X 4096 deep
module uram_2w_2r_we_x8 (
  input  wire           clk,
  input  wire           rst_n,
  input  wire [8-1:0]   ce0,
  input  wire [8-1:0]   ce1,
  input  wire [64-1:0]  we0,
  input  wire [64-1:0]  we1,
  input  wire [96-1:0]  addr0,
  input  wire [96-1:0]  addr1,
  input  wire [512-1:0] wdata0,
  input  wire [512-1:0] wdata1,
  output wire [512-1:0] rdata0,
  output wire [512-1:0] rdata1
  );

  wire [64-1:0] rdata0_w[0:8-1];
  wire [64-1:0] rdata1_w[0:8-1];

  uram_wex8_wrapper inst_8uram_we (
    .addr0_0 ( addr0[0+:12]  ),
    .addr0_1 ( addr0[12+:12] ),
    .addr0_2 ( addr0[24+:12] ),
    .addr0_3 ( addr0[36+:12] ),
    .addr0_4 ( addr0[48+:12] ),
    .addr0_5 ( addr0[60+:12] ),
    .addr0_6 ( addr0[72+:12] ),
    .addr0_7 ( addr0[84+:12] ),
    .addr1_0 ( addr1[0+:12]  ),
    .addr1_1 ( addr1[12+:12] ),
    .addr1_2 ( addr1[24+:12] ),
    .addr1_3 ( addr1[36+:12] ),
    .addr1_4 ( addr1[48+:12] ),
    .addr1_5 ( addr1[60+:12] ),
    .addr1_6 ( addr1[72+:12] ),
    .addr1_7 ( addr1[84+:12] ),
    .ce0_0 ( ce0[0] ),
    .ce0_1 ( ce0[1] ),
    .ce0_2 ( ce0[2] ),
    .ce0_3 ( ce0[3] ),
    .ce0_4 ( ce0[4] ),
    .ce0_5 ( ce0[5] ),
    .ce0_6 ( ce0[6] ),
    .ce0_7 ( ce0[7] ),
    .ce1_0 ( ce1[0] ),
    .ce1_1 ( ce1[1] ),
    .ce1_2 ( ce1[2] ),
    .ce1_3 ( ce1[3] ),
    .ce1_4 ( ce1[4] ),
    .ce1_5 ( ce1[5] ),
    .ce1_6 ( ce1[6] ),
    .ce1_7 ( ce1[7] ),
    .clk_0  ( clk ),
    .rdata0_0 ( rdata0_w[0] ),
    .rdata0_1 ( rdata0_w[1] ),
    .rdata0_2 ( rdata0_w[2] ),
    .rdata0_3 ( rdata0_w[3] ),
    .rdata0_4 ( rdata0_w[4] ),
    .rdata0_5 ( rdata0_w[5] ),
    .rdata0_6 ( rdata0_w[6] ),
    .rdata0_7 ( rdata0_w[7] ),
    .rdata1_0 ( rdata1_w[0] ),
    .rdata1_1 ( rdata1_w[1] ),
    .rdata1_2 ( rdata1_w[2] ),
    .rdata1_3 ( rdata1_w[3] ),
    .rdata1_4 ( rdata1_w[4] ),
    .rdata1_5 ( rdata1_w[5] ),
    .rdata1_6 ( rdata1_w[6] ),
    .rdata1_7 ( rdata1_w[7] ),
    .rst_n_0  ( rst_n ),
    .wdata0_0 ( wdata0[0+:64]  ),
    .wdata0_1 ( wdata0[64+:64] ),
    .wdata0_2 ( wdata0[128+:64]),
    .wdata0_3 ( wdata0[192+:64]),
    .wdata0_4 ( wdata0[256+:64]),
    .wdata0_5 ( wdata0[320+:64]),
    .wdata0_6 ( wdata0[384+:64]),
    .wdata0_7 ( wdata0[448+:64]),
    .wdata1_0 ( wdata1[0+:64]  ),
    .wdata1_1 ( wdata1[64+:64] ),
    .wdata1_2 ( wdata1[128+:64]),
    .wdata1_3 ( wdata1[192+:64]),
    .wdata1_4 ( wdata1[256+:64]),
    .wdata1_5 ( wdata1[320+:64]),
    .wdata1_6 ( wdata1[384+:64]),
    .wdata1_7 ( wdata1[448+:64]),
    .we0_0 ( we0[0+:8] ),
    .we0_1 ( we0[8+:8] ),
    .we0_2 ( we0[16+:8] ),
    .we0_3 ( we0[24+:8] ),
    .we0_4 ( we0[32+:8] ),
    .we0_5 ( we0[40+:8] ),
    .we0_6 ( we0[48+:8] ),
    .we0_7 ( we0[56+:8] ),
    .we1_0 ( we1[0+:8] ),
    .we1_1 ( we1[8+:8] ),
    .we1_2 ( we1[16+:8] ),
    .we1_3 ( we1[24+:8] ),
    .we1_4 ( we1[32+:8] ),
    .we1_5 ( we1[40+:8] ),
    .we1_6 ( we1[48+:8] ),
    .we1_7 ( we1[56+:8] )
  );

  assign rdata0 = {rdata0_w[7], rdata0_w[6], rdata0_w[5], rdata0_w[4], rdata0_w[3], rdata0_w[2], rdata0_w[1], rdata0_w[0]};
  assign rdata1 = {rdata1_w[7], rdata1_w[6], rdata1_w[5], rdata1_w[4], rdata1_w[3], rdata1_w[2], rdata1_w[1], rdata1_w[0]};

endmodule