//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun May  7 10:35:06 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uramx8_wrapper.bd
//Design      : uramx8_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uramx8_wrapper
   (addr0_0,
    addr0_1,
    addr0_2,
    addr0_3,
    addr0_4,
    addr0_5,
    addr0_6,
    addr0_7,
    addr1_0,
    addr1_1,
    addr1_2,
    addr1_3,
    addr1_4,
    addr1_5,
    addr1_6,
    addr1_7,
    ce0_0,
    ce0_1,
    ce0_2,
    ce0_3,
    ce0_4,
    ce0_5,
    ce0_6,
    ce0_7,
    ce1_0,
    ce1_1,
    ce1_2,
    ce1_3,
    ce1_4,
    ce1_5,
    ce1_6,
    ce1_7,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata0_2,
    rdata0_3,
    rdata0_4,
    rdata0_5,
    rdata0_6,
    rdata0_7,
    rdata1_0,
    rdata1_1,
    rdata1_2,
    rdata1_3,
    rdata1_4,
    rdata1_5,
    rdata1_6,
    rdata1_7,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata0_2,
    wdata0_3,
    wdata0_4,
    wdata0_5,
    wdata0_6,
    wdata0_7,
    wdata1_0,
    wdata1_1,
    wdata1_2,
    wdata1_3,
    wdata1_4,
    wdata1_5,
    wdata1_6,
    wdata1_7,
    we0_0,
    we0_1,
    we0_2,
    we0_3,
    we0_4,
    we0_5,
    we0_6,
    we0_7,
    we1_0,
    we1_1,
    we1_2,
    we1_3,
    we1_4,
    we1_5,
    we1_6,
    we1_7);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr0_2;
  input [11:0]addr0_3;
  input [11:0]addr0_4;
  input [11:0]addr0_5;
  input [11:0]addr0_6;
  input [11:0]addr0_7;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input [11:0]addr1_2;
  input [11:0]addr1_3;
  input [11:0]addr1_4;
  input [11:0]addr1_5;
  input [11:0]addr1_6;
  input [11:0]addr1_7;
  input ce0_0;
  input ce0_1;
  input ce0_2;
  input ce0_3;
  input ce0_4;
  input ce0_5;
  input ce0_6;
  input ce0_7;
  input ce1_0;
  input ce1_1;
  input ce1_2;
  input ce1_3;
  input ce1_4;
  input ce1_5;
  input ce1_6;
  input ce1_7;
  input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata0_2;
  output [63:0]rdata0_3;
  output [63:0]rdata0_4;
  output [63:0]rdata0_5;
  output [63:0]rdata0_6;
  output [63:0]rdata0_7;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  output [63:0]rdata1_2;
  output [63:0]rdata1_3;
  output [63:0]rdata1_4;
  output [63:0]rdata1_5;
  output [63:0]rdata1_6;
  output [63:0]rdata1_7;
  input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata0_2;
  input [63:0]wdata0_3;
  input [63:0]wdata0_4;
  input [63:0]wdata0_5;
  input [63:0]wdata0_6;
  input [63:0]wdata0_7;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [63:0]wdata1_2;
  input [63:0]wdata1_3;
  input [63:0]wdata1_4;
  input [63:0]wdata1_5;
  input [63:0]wdata1_6;
  input [63:0]wdata1_7;
  input we0_0;
  input we0_1;
  input we0_2;
  input we0_3;
  input we0_4;
  input we0_5;
  input we0_6;
  input we0_7;
  input we1_0;
  input we1_1;
  input we1_2;
  input we1_3;
  input we1_4;
  input we1_5;
  input we1_6;
  input we1_7;

  wire [11:0]addr0_0;
  wire [11:0]addr0_1;
  wire [11:0]addr0_2;
  wire [11:0]addr0_3;
  wire [11:0]addr0_4;
  wire [11:0]addr0_5;
  wire [11:0]addr0_6;
  wire [11:0]addr0_7;
  wire [11:0]addr1_0;
  wire [11:0]addr1_1;
  wire [11:0]addr1_2;
  wire [11:0]addr1_3;
  wire [11:0]addr1_4;
  wire [11:0]addr1_5;
  wire [11:0]addr1_6;
  wire [11:0]addr1_7;
  wire ce0_0;
  wire ce0_1;
  wire ce0_2;
  wire ce0_3;
  wire ce0_4;
  wire ce0_5;
  wire ce0_6;
  wire ce0_7;
  wire ce1_0;
  wire ce1_1;
  wire ce1_2;
  wire ce1_3;
  wire ce1_4;
  wire ce1_5;
  wire ce1_6;
  wire ce1_7;
  wire clk_0;
  wire [63:0]rdata0_0;
  wire [63:0]rdata0_1;
  wire [63:0]rdata0_2;
  wire [63:0]rdata0_3;
  wire [63:0]rdata0_4;
  wire [63:0]rdata0_5;
  wire [63:0]rdata0_6;
  wire [63:0]rdata0_7;
  wire [63:0]rdata1_0;
  wire [63:0]rdata1_1;
  wire [63:0]rdata1_2;
  wire [63:0]rdata1_3;
  wire [63:0]rdata1_4;
  wire [63:0]rdata1_5;
  wire [63:0]rdata1_6;
  wire [63:0]rdata1_7;
  wire rst_n_0;
  wire [63:0]wdata0_0;
  wire [63:0]wdata0_1;
  wire [63:0]wdata0_2;
  wire [63:0]wdata0_3;
  wire [63:0]wdata0_4;
  wire [63:0]wdata0_5;
  wire [63:0]wdata0_6;
  wire [63:0]wdata0_7;
  wire [63:0]wdata1_0;
  wire [63:0]wdata1_1;
  wire [63:0]wdata1_2;
  wire [63:0]wdata1_3;
  wire [63:0]wdata1_4;
  wire [63:0]wdata1_5;
  wire [63:0]wdata1_6;
  wire [63:0]wdata1_7;
  wire we0_0;
  wire we0_1;
  wire we0_2;
  wire we0_3;
  wire we0_4;
  wire we0_5;
  wire we0_6;
  wire we0_7;
  wire we1_0;
  wire we1_1;
  wire we1_2;
  wire we1_3;
  wire we1_4;
  wire we1_5;
  wire we1_6;
  wire we1_7;

  uramx8 uramx8_i
       (.addr0_0(addr0_0),
        .addr0_1(addr0_1),
        .addr0_2(addr0_2),
        .addr0_3(addr0_3),
        .addr0_4(addr0_4),
        .addr0_5(addr0_5),
        .addr0_6(addr0_6),
        .addr0_7(addr0_7),
        .addr1_0(addr1_0),
        .addr1_1(addr1_1),
        .addr1_2(addr1_2),
        .addr1_3(addr1_3),
        .addr1_4(addr1_4),
        .addr1_5(addr1_5),
        .addr1_6(addr1_6),
        .addr1_7(addr1_7),
        .ce0_0(ce0_0),
        .ce0_1(ce0_1),
        .ce0_2(ce0_2),
        .ce0_3(ce0_3),
        .ce0_4(ce0_4),
        .ce0_5(ce0_5),
        .ce0_6(ce0_6),
        .ce0_7(ce0_7),
        .ce1_0(ce1_0),
        .ce1_1(ce1_1),
        .ce1_2(ce1_2),
        .ce1_3(ce1_3),
        .ce1_4(ce1_4),
        .ce1_5(ce1_5),
        .ce1_6(ce1_6),
        .ce1_7(ce1_7),
        .clk_0(clk_0),
        .rdata0_0(rdata0_0),
        .rdata0_1(rdata0_1),
        .rdata0_2(rdata0_2),
        .rdata0_3(rdata0_3),
        .rdata0_4(rdata0_4),
        .rdata0_5(rdata0_5),
        .rdata0_6(rdata0_6),
        .rdata0_7(rdata0_7),
        .rdata1_0(rdata1_0),
        .rdata1_1(rdata1_1),
        .rdata1_2(rdata1_2),
        .rdata1_3(rdata1_3),
        .rdata1_4(rdata1_4),
        .rdata1_5(rdata1_5),
        .rdata1_6(rdata1_6),
        .rdata1_7(rdata1_7),
        .rst_n_0(rst_n_0),
        .wdata0_0(wdata0_0),
        .wdata0_1(wdata0_1),
        .wdata0_2(wdata0_2),
        .wdata0_3(wdata0_3),
        .wdata0_4(wdata0_4),
        .wdata0_5(wdata0_5),
        .wdata0_6(wdata0_6),
        .wdata0_7(wdata0_7),
        .wdata1_0(wdata1_0),
        .wdata1_1(wdata1_1),
        .wdata1_2(wdata1_2),
        .wdata1_3(wdata1_3),
        .wdata1_4(wdata1_4),
        .wdata1_5(wdata1_5),
        .wdata1_6(wdata1_6),
        .wdata1_7(wdata1_7),
        .we0_0(we0_0),
        .we0_1(we0_1),
        .we0_2(we0_2),
        .we0_3(we0_3),
        .we0_4(we0_4),
        .we0_5(we0_5),
        .we0_6(we0_6),
        .we0_7(we0_7),
        .we1_0(we1_0),
        .we1_1(we1_1),
        .we1_2(we1_2),
        .we1_3(we1_3),
        .we1_4(we1_4),
        .we1_5(we1_5),
        .we1_6(we1_6),
        .we1_7(we1_7));
endmodule
