//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Mar 17 12:04:02 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uram_wex16_wrapper.bd
//Design      : uram_wex16_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uram_wex16_wrapper
   (addr0_0,
    addr0_1,
    addr0_10,
    addr0_11,
    addr0_12,
    addr0_13,
    addr0_14,
    addr0_15,
    addr0_2,
    addr0_3,
    addr0_4,
    addr0_5,
    addr0_6,
    addr0_7,
    addr0_8,
    addr0_9,
    addr1_0,
    addr1_1,
    addr1_10,
    addr1_11,
    addr1_12,
    addr1_13,
    addr1_14,
    addr1_15,
    addr1_2,
    addr1_3,
    addr1_4,
    addr1_5,
    addr1_6,
    addr1_7,
    addr1_8,
    addr1_9,
    ce0_0,
    ce0_1,
    ce0_10,
    ce0_11,
    ce0_12,
    ce0_13,
    ce0_14,
    ce0_15,
    ce0_2,
    ce0_3,
    ce0_4,
    ce0_5,
    ce0_6,
    ce0_7,
    ce0_8,
    ce0_9,
    ce1_0,
    ce1_1,
    ce1_10,
    ce1_11,
    ce1_12,
    ce1_13,
    ce1_14,
    ce1_15,
    ce1_2,
    ce1_3,
    ce1_4,
    ce1_5,
    ce1_6,
    ce1_7,
    ce1_8,
    ce1_9,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata0_10,
    rdata0_11,
    rdata0_12,
    rdata0_13,
    rdata0_14,
    rdata0_15,
    rdata0_2,
    rdata0_3,
    rdata0_4,
    rdata0_5,
    rdata0_6,
    rdata0_7,
    rdata0_8,
    rdata0_9,
    rdata1_0,
    rdata1_1,
    rdata1_10,
    rdata1_11,
    rdata1_12,
    rdata1_13,
    rdata1_14,
    rdata1_15,
    rdata1_2,
    rdata1_3,
    rdata1_4,
    rdata1_5,
    rdata1_6,
    rdata1_7,
    rdata1_8,
    rdata1_9,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata0_10,
    wdata0_11,
    wdata0_12,
    wdata0_13,
    wdata0_14,
    wdata0_15,
    wdata0_2,
    wdata0_3,
    wdata0_4,
    wdata0_5,
    wdata0_6,
    wdata0_7,
    wdata0_8,
    wdata0_9,
    wdata1_0,
    wdata1_1,
    wdata1_10,
    wdata1_11,
    wdata1_12,
    wdata1_13,
    wdata1_14,
    wdata1_15,
    wdata1_2,
    wdata1_3,
    wdata1_4,
    wdata1_5,
    wdata1_6,
    wdata1_7,
    wdata1_8,
    wdata1_9,
    we0_0,
    we0_1,
    we0_10,
    we0_11,
    we0_12,
    we0_13,
    we0_14,
    we0_15,
    we0_2,
    we0_3,
    we0_4,
    we0_5,
    we0_6,
    we0_7,
    we0_8,
    we0_9,
    we1_0,
    we1_1,
    we1_10,
    we1_11,
    we1_12,
    we1_13,
    we1_14,
    we1_15,
    we1_2,
    we1_3,
    we1_4,
    we1_5,
    we1_6,
    we1_7,
    we1_8,
    we1_9);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr0_10;
  input [11:0]addr0_11;
  input [11:0]addr0_12;
  input [11:0]addr0_13;
  input [11:0]addr0_14;
  input [11:0]addr0_15;
  input [11:0]addr0_2;
  input [11:0]addr0_3;
  input [11:0]addr0_4;
  input [11:0]addr0_5;
  input [11:0]addr0_6;
  input [11:0]addr0_7;
  input [11:0]addr0_8;
  input [11:0]addr0_9;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input [11:0]addr1_10;
  input [11:0]addr1_11;
  input [11:0]addr1_12;
  input [11:0]addr1_13;
  input [11:0]addr1_14;
  input [11:0]addr1_15;
  input [11:0]addr1_2;
  input [11:0]addr1_3;
  input [11:0]addr1_4;
  input [11:0]addr1_5;
  input [11:0]addr1_6;
  input [11:0]addr1_7;
  input [11:0]addr1_8;
  input [11:0]addr1_9;
  input ce0_0;
  input ce0_1;
  input ce0_10;
  input ce0_11;
  input ce0_12;
  input ce0_13;
  input ce0_14;
  input ce0_15;
  input ce0_2;
  input ce0_3;
  input ce0_4;
  input ce0_5;
  input ce0_6;
  input ce0_7;
  input ce0_8;
  input ce0_9;
  input ce1_0;
  input ce1_1;
  input ce1_10;
  input ce1_11;
  input ce1_12;
  input ce1_13;
  input ce1_14;
  input ce1_15;
  input ce1_2;
  input ce1_3;
  input ce1_4;
  input ce1_5;
  input ce1_6;
  input ce1_7;
  input ce1_8;
  input ce1_9;
  input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata0_10;
  output [63:0]rdata0_11;
  output [63:0]rdata0_12;
  output [63:0]rdata0_13;
  output [63:0]rdata0_14;
  output [63:0]rdata0_15;
  output [63:0]rdata0_2;
  output [63:0]rdata0_3;
  output [63:0]rdata0_4;
  output [63:0]rdata0_5;
  output [63:0]rdata0_6;
  output [63:0]rdata0_7;
  output [63:0]rdata0_8;
  output [63:0]rdata0_9;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  output [63:0]rdata1_10;
  output [63:0]rdata1_11;
  output [63:0]rdata1_12;
  output [63:0]rdata1_13;
  output [63:0]rdata1_14;
  output [63:0]rdata1_15;
  output [63:0]rdata1_2;
  output [63:0]rdata1_3;
  output [63:0]rdata1_4;
  output [63:0]rdata1_5;
  output [63:0]rdata1_6;
  output [63:0]rdata1_7;
  output [63:0]rdata1_8;
  output [63:0]rdata1_9;
  input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata0_10;
  input [63:0]wdata0_11;
  input [63:0]wdata0_12;
  input [63:0]wdata0_13;
  input [63:0]wdata0_14;
  input [63:0]wdata0_15;
  input [63:0]wdata0_2;
  input [63:0]wdata0_3;
  input [63:0]wdata0_4;
  input [63:0]wdata0_5;
  input [63:0]wdata0_6;
  input [63:0]wdata0_7;
  input [63:0]wdata0_8;
  input [63:0]wdata0_9;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [63:0]wdata1_10;
  input [63:0]wdata1_11;
  input [63:0]wdata1_12;
  input [63:0]wdata1_13;
  input [63:0]wdata1_14;
  input [63:0]wdata1_15;
  input [63:0]wdata1_2;
  input [63:0]wdata1_3;
  input [63:0]wdata1_4;
  input [63:0]wdata1_5;
  input [63:0]wdata1_6;
  input [63:0]wdata1_7;
  input [63:0]wdata1_8;
  input [63:0]wdata1_9;
  input [7:0]we0_0;
  input [7:0]we0_1;
  input [7:0]we0_10;
  input [7:0]we0_11;
  input [7:0]we0_12;
  input [7:0]we0_13;
  input [7:0]we0_14;
  input [7:0]we0_15;
  input [7:0]we0_2;
  input [7:0]we0_3;
  input [7:0]we0_4;
  input [7:0]we0_5;
  input [7:0]we0_6;
  input [7:0]we0_7;
  input [7:0]we0_8;
  input [7:0]we0_9;
  input [7:0]we1_0;
  input [7:0]we1_1;
  input [7:0]we1_10;
  input [7:0]we1_11;
  input [7:0]we1_12;
  input [7:0]we1_13;
  input [7:0]we1_14;
  input [7:0]we1_15;
  input [7:0]we1_2;
  input [7:0]we1_3;
  input [7:0]we1_4;
  input [7:0]we1_5;
  input [7:0]we1_6;
  input [7:0]we1_7;
  input [7:0]we1_8;
  input [7:0]we1_9;

  wire [11:0]addr0_0;
  wire [11:0]addr0_1;
  wire [11:0]addr0_10;
  wire [11:0]addr0_11;
  wire [11:0]addr0_12;
  wire [11:0]addr0_13;
  wire [11:0]addr0_14;
  wire [11:0]addr0_15;
  wire [11:0]addr0_2;
  wire [11:0]addr0_3;
  wire [11:0]addr0_4;
  wire [11:0]addr0_5;
  wire [11:0]addr0_6;
  wire [11:0]addr0_7;
  wire [11:0]addr0_8;
  wire [11:0]addr0_9;
  wire [11:0]addr1_0;
  wire [11:0]addr1_1;
  wire [11:0]addr1_10;
  wire [11:0]addr1_11;
  wire [11:0]addr1_12;
  wire [11:0]addr1_13;
  wire [11:0]addr1_14;
  wire [11:0]addr1_15;
  wire [11:0]addr1_2;
  wire [11:0]addr1_3;
  wire [11:0]addr1_4;
  wire [11:0]addr1_5;
  wire [11:0]addr1_6;
  wire [11:0]addr1_7;
  wire [11:0]addr1_8;
  wire [11:0]addr1_9;
  wire ce0_0;
  wire ce0_1;
  wire ce0_10;
  wire ce0_11;
  wire ce0_12;
  wire ce0_13;
  wire ce0_14;
  wire ce0_15;
  wire ce0_2;
  wire ce0_3;
  wire ce0_4;
  wire ce0_5;
  wire ce0_6;
  wire ce0_7;
  wire ce0_8;
  wire ce0_9;
  wire ce1_0;
  wire ce1_1;
  wire ce1_10;
  wire ce1_11;
  wire ce1_12;
  wire ce1_13;
  wire ce1_14;
  wire ce1_15;
  wire ce1_2;
  wire ce1_3;
  wire ce1_4;
  wire ce1_5;
  wire ce1_6;
  wire ce1_7;
  wire ce1_8;
  wire ce1_9;
  wire clk_0;
  wire [63:0]rdata0_0;
  wire [63:0]rdata0_1;
  wire [63:0]rdata0_10;
  wire [63:0]rdata0_11;
  wire [63:0]rdata0_12;
  wire [63:0]rdata0_13;
  wire [63:0]rdata0_14;
  wire [63:0]rdata0_15;
  wire [63:0]rdata0_2;
  wire [63:0]rdata0_3;
  wire [63:0]rdata0_4;
  wire [63:0]rdata0_5;
  wire [63:0]rdata0_6;
  wire [63:0]rdata0_7;
  wire [63:0]rdata0_8;
  wire [63:0]rdata0_9;
  wire [63:0]rdata1_0;
  wire [63:0]rdata1_1;
  wire [63:0]rdata1_10;
  wire [63:0]rdata1_11;
  wire [63:0]rdata1_12;
  wire [63:0]rdata1_13;
  wire [63:0]rdata1_14;
  wire [63:0]rdata1_15;
  wire [63:0]rdata1_2;
  wire [63:0]rdata1_3;
  wire [63:0]rdata1_4;
  wire [63:0]rdata1_5;
  wire [63:0]rdata1_6;
  wire [63:0]rdata1_7;
  wire [63:0]rdata1_8;
  wire [63:0]rdata1_9;
  wire rst_n_0;
  wire [63:0]wdata0_0;
  wire [63:0]wdata0_1;
  wire [63:0]wdata0_10;
  wire [63:0]wdata0_11;
  wire [63:0]wdata0_12;
  wire [63:0]wdata0_13;
  wire [63:0]wdata0_14;
  wire [63:0]wdata0_15;
  wire [63:0]wdata0_2;
  wire [63:0]wdata0_3;
  wire [63:0]wdata0_4;
  wire [63:0]wdata0_5;
  wire [63:0]wdata0_6;
  wire [63:0]wdata0_7;
  wire [63:0]wdata0_8;
  wire [63:0]wdata0_9;
  wire [63:0]wdata1_0;
  wire [63:0]wdata1_1;
  wire [63:0]wdata1_10;
  wire [63:0]wdata1_11;
  wire [63:0]wdata1_12;
  wire [63:0]wdata1_13;
  wire [63:0]wdata1_14;
  wire [63:0]wdata1_15;
  wire [63:0]wdata1_2;
  wire [63:0]wdata1_3;
  wire [63:0]wdata1_4;
  wire [63:0]wdata1_5;
  wire [63:0]wdata1_6;
  wire [63:0]wdata1_7;
  wire [63:0]wdata1_8;
  wire [63:0]wdata1_9;
  wire [7:0]we0_0;
  wire [7:0]we0_1;
  wire [7:0]we0_10;
  wire [7:0]we0_11;
  wire [7:0]we0_12;
  wire [7:0]we0_13;
  wire [7:0]we0_14;
  wire [7:0]we0_15;
  wire [7:0]we0_2;
  wire [7:0]we0_3;
  wire [7:0]we0_4;
  wire [7:0]we0_5;
  wire [7:0]we0_6;
  wire [7:0]we0_7;
  wire [7:0]we0_8;
  wire [7:0]we0_9;
  wire [7:0]we1_0;
  wire [7:0]we1_1;
  wire [7:0]we1_10;
  wire [7:0]we1_11;
  wire [7:0]we1_12;
  wire [7:0]we1_13;
  wire [7:0]we1_14;
  wire [7:0]we1_15;
  wire [7:0]we1_2;
  wire [7:0]we1_3;
  wire [7:0]we1_4;
  wire [7:0]we1_5;
  wire [7:0]we1_6;
  wire [7:0]we1_7;
  wire [7:0]we1_8;
  wire [7:0]we1_9;

  uram_wex16 uram_wex16_i
       (.addr0_0(addr0_0),
        .addr0_1(addr0_1),
        .addr0_10(addr0_10),
        .addr0_11(addr0_11),
        .addr0_12(addr0_12),
        .addr0_13(addr0_13),
        .addr0_14(addr0_14),
        .addr0_15(addr0_15),
        .addr0_2(addr0_2),
        .addr0_3(addr0_3),
        .addr0_4(addr0_4),
        .addr0_5(addr0_5),
        .addr0_6(addr0_6),
        .addr0_7(addr0_7),
        .addr0_8(addr0_8),
        .addr0_9(addr0_9),
        .addr1_0(addr1_0),
        .addr1_1(addr1_1),
        .addr1_10(addr1_10),
        .addr1_11(addr1_11),
        .addr1_12(addr1_12),
        .addr1_13(addr1_13),
        .addr1_14(addr1_14),
        .addr1_15(addr1_15),
        .addr1_2(addr1_2),
        .addr1_3(addr1_3),
        .addr1_4(addr1_4),
        .addr1_5(addr1_5),
        .addr1_6(addr1_6),
        .addr1_7(addr1_7),
        .addr1_8(addr1_8),
        .addr1_9(addr1_9),
        .ce0_0(ce0_0),
        .ce0_1(ce0_1),
        .ce0_10(ce0_10),
        .ce0_11(ce0_11),
        .ce0_12(ce0_12),
        .ce0_13(ce0_13),
        .ce0_14(ce0_14),
        .ce0_15(ce0_15),
        .ce0_2(ce0_2),
        .ce0_3(ce0_3),
        .ce0_4(ce0_4),
        .ce0_5(ce0_5),
        .ce0_6(ce0_6),
        .ce0_7(ce0_7),
        .ce0_8(ce0_8),
        .ce0_9(ce0_9),
        .ce1_0(ce1_0),
        .ce1_1(ce1_1),
        .ce1_10(ce1_10),
        .ce1_11(ce1_11),
        .ce1_12(ce1_12),
        .ce1_13(ce1_13),
        .ce1_14(ce1_14),
        .ce1_15(ce1_15),
        .ce1_2(ce1_2),
        .ce1_3(ce1_3),
        .ce1_4(ce1_4),
        .ce1_5(ce1_5),
        .ce1_6(ce1_6),
        .ce1_7(ce1_7),
        .ce1_8(ce1_8),
        .ce1_9(ce1_9),
        .clk_0(clk_0),
        .rdata0_0(rdata0_0),
        .rdata0_1(rdata0_1),
        .rdata0_10(rdata0_10),
        .rdata0_11(rdata0_11),
        .rdata0_12(rdata0_12),
        .rdata0_13(rdata0_13),
        .rdata0_14(rdata0_14),
        .rdata0_15(rdata0_15),
        .rdata0_2(rdata0_2),
        .rdata0_3(rdata0_3),
        .rdata0_4(rdata0_4),
        .rdata0_5(rdata0_5),
        .rdata0_6(rdata0_6),
        .rdata0_7(rdata0_7),
        .rdata0_8(rdata0_8),
        .rdata0_9(rdata0_9),
        .rdata1_0(rdata1_0),
        .rdata1_1(rdata1_1),
        .rdata1_10(rdata1_10),
        .rdata1_11(rdata1_11),
        .rdata1_12(rdata1_12),
        .rdata1_13(rdata1_13),
        .rdata1_14(rdata1_14),
        .rdata1_15(rdata1_15),
        .rdata1_2(rdata1_2),
        .rdata1_3(rdata1_3),
        .rdata1_4(rdata1_4),
        .rdata1_5(rdata1_5),
        .rdata1_6(rdata1_6),
        .rdata1_7(rdata1_7),
        .rdata1_8(rdata1_8),
        .rdata1_9(rdata1_9),
        .rst_n_0(rst_n_0),
        .wdata0_0(wdata0_0),
        .wdata0_1(wdata0_1),
        .wdata0_10(wdata0_10),
        .wdata0_11(wdata0_11),
        .wdata0_12(wdata0_12),
        .wdata0_13(wdata0_13),
        .wdata0_14(wdata0_14),
        .wdata0_15(wdata0_15),
        .wdata0_2(wdata0_2),
        .wdata0_3(wdata0_3),
        .wdata0_4(wdata0_4),
        .wdata0_5(wdata0_5),
        .wdata0_6(wdata0_6),
        .wdata0_7(wdata0_7),
        .wdata0_8(wdata0_8),
        .wdata0_9(wdata0_9),
        .wdata1_0(wdata1_0),
        .wdata1_1(wdata1_1),
        .wdata1_10(wdata1_10),
        .wdata1_11(wdata1_11),
        .wdata1_12(wdata1_12),
        .wdata1_13(wdata1_13),
        .wdata1_14(wdata1_14),
        .wdata1_15(wdata1_15),
        .wdata1_2(wdata1_2),
        .wdata1_3(wdata1_3),
        .wdata1_4(wdata1_4),
        .wdata1_5(wdata1_5),
        .wdata1_6(wdata1_6),
        .wdata1_7(wdata1_7),
        .wdata1_8(wdata1_8),
        .wdata1_9(wdata1_9),
        .we0_0(we0_0),
        .we0_1(we0_1),
        .we0_10(we0_10),
        .we0_11(we0_11),
        .we0_12(we0_12),
        .we0_13(we0_13),
        .we0_14(we0_14),
        .we0_15(we0_15),
        .we0_2(we0_2),
        .we0_3(we0_3),
        .we0_4(we0_4),
        .we0_5(we0_5),
        .we0_6(we0_6),
        .we0_7(we0_7),
        .we0_8(we0_8),
        .we0_9(we0_9),
        .we1_0(we1_0),
        .we1_1(we1_1),
        .we1_10(we1_10),
        .we1_11(we1_11),
        .we1_12(we1_12),
        .we1_13(we1_13),
        .we1_14(we1_14),
        .we1_15(we1_15),
        .we1_2(we1_2),
        .we1_3(we1_3),
        .we1_4(we1_4),
        .we1_5(we1_5),
        .we1_6(we1_6),
        .we1_7(we1_7),
        .we1_8(we1_8),
        .we1_9(we1_9));
endmodule
