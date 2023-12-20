//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon May  8 18:54:50 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uramx4_wrapper.bd
//Design      : uramx4_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uramx4_wrapper
   (addr0_0,
    addr0_1,
    addr0_2,
    addr0_3,
    addr1_0,
    addr1_1,
    addr1_2,
    addr1_3,
    ce0_0,
    ce0_1,
    ce0_2,
    ce0_3,
    ce1_0,
    ce1_1,
    ce1_2,
    ce1_3,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata0_2,
    rdata0_3,
    rdata1_0,
    rdata1_1,
    rdata1_2,
    rdata1_3,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata0_2,
    wdata0_3,
    wdata1_0,
    wdata1_1,
    wdata1_2,
    wdata1_3,
    we0_0,
    we0_1,
    we0_2,
    we0_3,
    we1_0,
    we1_1,
    we1_2,
    we1_3);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr0_2;
  input [11:0]addr0_3;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input [11:0]addr1_2;
  input [11:0]addr1_3;
  input ce0_0;
  input ce0_1;
  input ce0_2;
  input ce0_3;
  input ce1_0;
  input ce1_1;
  input ce1_2;
  input ce1_3;
  input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata0_2;
  output [63:0]rdata0_3;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  output [63:0]rdata1_2;
  output [63:0]rdata1_3;
  input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata0_2;
  input [63:0]wdata0_3;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [63:0]wdata1_2;
  input [63:0]wdata1_3;
  input we0_0;
  input we0_1;
  input we0_2;
  input we0_3;
  input we1_0;
  input we1_1;
  input we1_2;
  input we1_3;

  wire [11:0]addr0_0;
  wire [11:0]addr0_1;
  wire [11:0]addr0_2;
  wire [11:0]addr0_3;
  wire [11:0]addr1_0;
  wire [11:0]addr1_1;
  wire [11:0]addr1_2;
  wire [11:0]addr1_3;
  wire ce0_0;
  wire ce0_1;
  wire ce0_2;
  wire ce0_3;
  wire ce1_0;
  wire ce1_1;
  wire ce1_2;
  wire ce1_3;
  wire clk_0;
  wire [63:0]rdata0_0;
  wire [63:0]rdata0_1;
  wire [63:0]rdata0_2;
  wire [63:0]rdata0_3;
  wire [63:0]rdata1_0;
  wire [63:0]rdata1_1;
  wire [63:0]rdata1_2;
  wire [63:0]rdata1_3;
  wire rst_n_0;
  wire [63:0]wdata0_0;
  wire [63:0]wdata0_1;
  wire [63:0]wdata0_2;
  wire [63:0]wdata0_3;
  wire [63:0]wdata1_0;
  wire [63:0]wdata1_1;
  wire [63:0]wdata1_2;
  wire [63:0]wdata1_3;
  wire we0_0;
  wire we0_1;
  wire we0_2;
  wire we0_3;
  wire we1_0;
  wire we1_1;
  wire we1_2;
  wire we1_3;

  uramx4 uramx4_i
       (.addr0_0(addr0_0),
        .addr0_1(addr0_1),
        .addr0_2(addr0_2),
        .addr0_3(addr0_3),
        .addr1_0(addr1_0),
        .addr1_1(addr1_1),
        .addr1_2(addr1_2),
        .addr1_3(addr1_3),
        .ce0_0(ce0_0),
        .ce0_1(ce0_1),
        .ce0_2(ce0_2),
        .ce0_3(ce0_3),
        .ce1_0(ce1_0),
        .ce1_1(ce1_1),
        .ce1_2(ce1_2),
        .ce1_3(ce1_3),
        .clk_0(clk_0),
        .rdata0_0(rdata0_0),
        .rdata0_1(rdata0_1),
        .rdata0_2(rdata0_2),
        .rdata0_3(rdata0_3),
        .rdata1_0(rdata1_0),
        .rdata1_1(rdata1_1),
        .rdata1_2(rdata1_2),
        .rdata1_3(rdata1_3),
        .rst_n_0(rst_n_0),
        .wdata0_0(wdata0_0),
        .wdata0_1(wdata0_1),
        .wdata0_2(wdata0_2),
        .wdata0_3(wdata0_3),
        .wdata1_0(wdata1_0),
        .wdata1_1(wdata1_1),
        .wdata1_2(wdata1_2),
        .wdata1_3(wdata1_3),
        .we0_0(we0_0),
        .we0_1(we0_1),
        .we0_2(we0_2),
        .we0_3(we0_3),
        .we1_0(we1_0),
        .we1_1(we1_1),
        .we1_2(we1_2),
        .we1_3(we1_3));
endmodule
