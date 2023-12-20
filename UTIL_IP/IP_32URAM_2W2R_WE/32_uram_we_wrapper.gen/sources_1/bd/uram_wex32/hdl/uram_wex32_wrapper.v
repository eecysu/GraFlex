//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Sep 18 23:27:39 2023
//Host        : noah running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target uram_wex32_wrapper.bd
//Design      : uram_wex32_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uram_wex32_wrapper
   (addr0_0,
    addr0_1,
    addr0_10,
    addr0_11,
    addr0_12,
    addr0_13,
    addr0_14,
    addr0_15,
    addr0_16,
    addr0_17,
    addr0_18,
    addr0_19,
    addr0_2,
    addr0_20,
    addr0_21,
    addr0_22,
    addr0_23,
    addr0_24,
    addr0_25,
    addr0_26,
    addr0_27,
    addr0_28,
    addr0_29,
    addr0_3,
    addr0_30,
    addr0_31,
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
    addr1_16,
    addr1_17,
    addr1_18,
    addr1_19,
    addr1_2,
    addr1_20,
    addr1_21,
    addr1_22,
    addr1_23,
    addr1_24,
    addr1_25,
    addr1_26,
    addr1_27,
    addr1_28,
    addr1_29,
    addr1_3,
    addr1_30,
    addr1_31,
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
    ce0_16,
    ce0_17,
    ce0_18,
    ce0_19,
    ce0_2,
    ce0_20,
    ce0_21,
    ce0_22,
    ce0_23,
    ce0_24,
    ce0_25,
    ce0_26,
    ce0_27,
    ce0_28,
    ce0_29,
    ce0_3,
    ce0_30,
    ce0_31,
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
    ce1_16,
    ce1_17,
    ce1_18,
    ce1_19,
    ce1_2,
    ce1_20,
    ce1_21,
    ce1_22,
    ce1_23,
    ce1_24,
    ce1_25,
    ce1_26,
    ce1_27,
    ce1_28,
    ce1_29,
    ce1_3,
    ce1_30,
    ce1_31,
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
    rdata0_16,
    rdata0_17,
    rdata0_18,
    rdata0_19,
    rdata0_2,
    rdata0_20,
    rdata0_21,
    rdata0_22,
    rdata0_23,
    rdata0_24,
    rdata0_25,
    rdata0_26,
    rdata0_27,
    rdata0_28,
    rdata0_29,
    rdata0_3,
    rdata0_30,
    rdata0_31,
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
    rdata1_16,
    rdata1_17,
    rdata1_18,
    rdata1_19,
    rdata1_2,
    rdata1_20,
    rdata1_21,
    rdata1_22,
    rdata1_23,
    rdata1_24,
    rdata1_25,
    rdata1_26,
    rdata1_27,
    rdata1_28,
    rdata1_29,
    rdata1_3,
    rdata1_30,
    rdata1_31,
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
    wdata0_16,
    wdata0_17,
    wdata0_18,
    wdata0_19,
    wdata0_2,
    wdata0_20,
    wdata0_21,
    wdata0_22,
    wdata0_23,
    wdata0_24,
    wdata0_25,
    wdata0_26,
    wdata0_27,
    wdata0_28,
    wdata0_29,
    wdata0_3,
    wdata0_30,
    wdata0_31,
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
    wdata1_16,
    wdata1_17,
    wdata1_18,
    wdata1_19,
    wdata1_2,
    wdata1_20,
    wdata1_21,
    wdata1_22,
    wdata1_23,
    wdata1_24,
    wdata1_25,
    wdata1_26,
    wdata1_27,
    wdata1_28,
    wdata1_29,
    wdata1_3,
    wdata1_30,
    wdata1_31,
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
    we0_16,
    we0_17,
    we0_18,
    we0_19,
    we0_2,
    we0_20,
    we0_21,
    we0_22,
    we0_23,
    we0_24,
    we0_25,
    we0_26,
    we0_27,
    we0_28,
    we0_29,
    we0_3,
    we0_30,
    we0_31,
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
    we1_16,
    we1_17,
    we1_18,
    we1_19,
    we1_2,
    we1_20,
    we1_21,
    we1_22,
    we1_23,
    we1_24,
    we1_25,
    we1_26,
    we1_27,
    we1_28,
    we1_29,
    we1_3,
    we1_30,
    we1_31,
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
  input [11:0]addr0_16;
  input [11:0]addr0_17;
  input [11:0]addr0_18;
  input [11:0]addr0_19;
  input [11:0]addr0_2;
  input [11:0]addr0_20;
  input [11:0]addr0_21;
  input [11:0]addr0_22;
  input [11:0]addr0_23;
  input [11:0]addr0_24;
  input [11:0]addr0_25;
  input [11:0]addr0_26;
  input [11:0]addr0_27;
  input [11:0]addr0_28;
  input [11:0]addr0_29;
  input [11:0]addr0_3;
  input [11:0]addr0_30;
  input [11:0]addr0_31;
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
  input [11:0]addr1_16;
  input [11:0]addr1_17;
  input [11:0]addr1_18;
  input [11:0]addr1_19;
  input [11:0]addr1_2;
  input [11:0]addr1_20;
  input [11:0]addr1_21;
  input [11:0]addr1_22;
  input [11:0]addr1_23;
  input [11:0]addr1_24;
  input [11:0]addr1_25;
  input [11:0]addr1_26;
  input [11:0]addr1_27;
  input [11:0]addr1_28;
  input [11:0]addr1_29;
  input [11:0]addr1_3;
  input [11:0]addr1_30;
  input [11:0]addr1_31;
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
  input ce0_16;
  input ce0_17;
  input ce0_18;
  input ce0_19;
  input ce0_2;
  input ce0_20;
  input ce0_21;
  input ce0_22;
  input ce0_23;
  input ce0_24;
  input ce0_25;
  input ce0_26;
  input ce0_27;
  input ce0_28;
  input ce0_29;
  input ce0_3;
  input ce0_30;
  input ce0_31;
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
  input ce1_16;
  input ce1_17;
  input ce1_18;
  input ce1_19;
  input ce1_2;
  input ce1_20;
  input ce1_21;
  input ce1_22;
  input ce1_23;
  input ce1_24;
  input ce1_25;
  input ce1_26;
  input ce1_27;
  input ce1_28;
  input ce1_29;
  input ce1_3;
  input ce1_30;
  input ce1_31;
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
  output [63:0]rdata0_16;
  output [63:0]rdata0_17;
  output [63:0]rdata0_18;
  output [63:0]rdata0_19;
  output [63:0]rdata0_2;
  output [63:0]rdata0_20;
  output [63:0]rdata0_21;
  output [63:0]rdata0_22;
  output [63:0]rdata0_23;
  output [63:0]rdata0_24;
  output [63:0]rdata0_25;
  output [63:0]rdata0_26;
  output [63:0]rdata0_27;
  output [63:0]rdata0_28;
  output [63:0]rdata0_29;
  output [63:0]rdata0_3;
  output [63:0]rdata0_30;
  output [63:0]rdata0_31;
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
  output [63:0]rdata1_16;
  output [63:0]rdata1_17;
  output [63:0]rdata1_18;
  output [63:0]rdata1_19;
  output [63:0]rdata1_2;
  output [63:0]rdata1_20;
  output [63:0]rdata1_21;
  output [63:0]rdata1_22;
  output [63:0]rdata1_23;
  output [63:0]rdata1_24;
  output [63:0]rdata1_25;
  output [63:0]rdata1_26;
  output [63:0]rdata1_27;
  output [63:0]rdata1_28;
  output [63:0]rdata1_29;
  output [63:0]rdata1_3;
  output [63:0]rdata1_30;
  output [63:0]rdata1_31;
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
  input [63:0]wdata0_16;
  input [63:0]wdata0_17;
  input [63:0]wdata0_18;
  input [63:0]wdata0_19;
  input [63:0]wdata0_2;
  input [63:0]wdata0_20;
  input [63:0]wdata0_21;
  input [63:0]wdata0_22;
  input [63:0]wdata0_23;
  input [63:0]wdata0_24;
  input [63:0]wdata0_25;
  input [63:0]wdata0_26;
  input [63:0]wdata0_27;
  input [63:0]wdata0_28;
  input [63:0]wdata0_29;
  input [63:0]wdata0_3;
  input [63:0]wdata0_30;
  input [63:0]wdata0_31;
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
  input [63:0]wdata1_16;
  input [63:0]wdata1_17;
  input [63:0]wdata1_18;
  input [63:0]wdata1_19;
  input [63:0]wdata1_2;
  input [63:0]wdata1_20;
  input [63:0]wdata1_21;
  input [63:0]wdata1_22;
  input [63:0]wdata1_23;
  input [63:0]wdata1_24;
  input [63:0]wdata1_25;
  input [63:0]wdata1_26;
  input [63:0]wdata1_27;
  input [63:0]wdata1_28;
  input [63:0]wdata1_29;
  input [63:0]wdata1_3;
  input [63:0]wdata1_30;
  input [63:0]wdata1_31;
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
  input [7:0]we0_16;
  input [7:0]we0_17;
  input [7:0]we0_18;
  input [7:0]we0_19;
  input [7:0]we0_2;
  input [7:0]we0_20;
  input [7:0]we0_21;
  input [7:0]we0_22;
  input [7:0]we0_23;
  input [7:0]we0_24;
  input [7:0]we0_25;
  input [7:0]we0_26;
  input [7:0]we0_27;
  input [7:0]we0_28;
  input [7:0]we0_29;
  input [7:0]we0_3;
  input [7:0]we0_30;
  input [7:0]we0_31;
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
  input [7:0]we1_16;
  input [7:0]we1_17;
  input [7:0]we1_18;
  input [7:0]we1_19;
  input [7:0]we1_2;
  input [7:0]we1_20;
  input [7:0]we1_21;
  input [7:0]we1_22;
  input [7:0]we1_23;
  input [7:0]we1_24;
  input [7:0]we1_25;
  input [7:0]we1_26;
  input [7:0]we1_27;
  input [7:0]we1_28;
  input [7:0]we1_29;
  input [7:0]we1_3;
  input [7:0]we1_30;
  input [7:0]we1_31;
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
  wire [11:0]addr0_16;
  wire [11:0]addr0_17;
  wire [11:0]addr0_18;
  wire [11:0]addr0_19;
  wire [11:0]addr0_2;
  wire [11:0]addr0_20;
  wire [11:0]addr0_21;
  wire [11:0]addr0_22;
  wire [11:0]addr0_23;
  wire [11:0]addr0_24;
  wire [11:0]addr0_25;
  wire [11:0]addr0_26;
  wire [11:0]addr0_27;
  wire [11:0]addr0_28;
  wire [11:0]addr0_29;
  wire [11:0]addr0_3;
  wire [11:0]addr0_30;
  wire [11:0]addr0_31;
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
  wire [11:0]addr1_16;
  wire [11:0]addr1_17;
  wire [11:0]addr1_18;
  wire [11:0]addr1_19;
  wire [11:0]addr1_2;
  wire [11:0]addr1_20;
  wire [11:0]addr1_21;
  wire [11:0]addr1_22;
  wire [11:0]addr1_23;
  wire [11:0]addr1_24;
  wire [11:0]addr1_25;
  wire [11:0]addr1_26;
  wire [11:0]addr1_27;
  wire [11:0]addr1_28;
  wire [11:0]addr1_29;
  wire [11:0]addr1_3;
  wire [11:0]addr1_30;
  wire [11:0]addr1_31;
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
  wire ce0_16;
  wire ce0_17;
  wire ce0_18;
  wire ce0_19;
  wire ce0_2;
  wire ce0_20;
  wire ce0_21;
  wire ce0_22;
  wire ce0_23;
  wire ce0_24;
  wire ce0_25;
  wire ce0_26;
  wire ce0_27;
  wire ce0_28;
  wire ce0_29;
  wire ce0_3;
  wire ce0_30;
  wire ce0_31;
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
  wire ce1_16;
  wire ce1_17;
  wire ce1_18;
  wire ce1_19;
  wire ce1_2;
  wire ce1_20;
  wire ce1_21;
  wire ce1_22;
  wire ce1_23;
  wire ce1_24;
  wire ce1_25;
  wire ce1_26;
  wire ce1_27;
  wire ce1_28;
  wire ce1_29;
  wire ce1_3;
  wire ce1_30;
  wire ce1_31;
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
  wire [63:0]rdata0_16;
  wire [63:0]rdata0_17;
  wire [63:0]rdata0_18;
  wire [63:0]rdata0_19;
  wire [63:0]rdata0_2;
  wire [63:0]rdata0_20;
  wire [63:0]rdata0_21;
  wire [63:0]rdata0_22;
  wire [63:0]rdata0_23;
  wire [63:0]rdata0_24;
  wire [63:0]rdata0_25;
  wire [63:0]rdata0_26;
  wire [63:0]rdata0_27;
  wire [63:0]rdata0_28;
  wire [63:0]rdata0_29;
  wire [63:0]rdata0_3;
  wire [63:0]rdata0_30;
  wire [63:0]rdata0_31;
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
  wire [63:0]rdata1_16;
  wire [63:0]rdata1_17;
  wire [63:0]rdata1_18;
  wire [63:0]rdata1_19;
  wire [63:0]rdata1_2;
  wire [63:0]rdata1_20;
  wire [63:0]rdata1_21;
  wire [63:0]rdata1_22;
  wire [63:0]rdata1_23;
  wire [63:0]rdata1_24;
  wire [63:0]rdata1_25;
  wire [63:0]rdata1_26;
  wire [63:0]rdata1_27;
  wire [63:0]rdata1_28;
  wire [63:0]rdata1_29;
  wire [63:0]rdata1_3;
  wire [63:0]rdata1_30;
  wire [63:0]rdata1_31;
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
  wire [63:0]wdata0_16;
  wire [63:0]wdata0_17;
  wire [63:0]wdata0_18;
  wire [63:0]wdata0_19;
  wire [63:0]wdata0_2;
  wire [63:0]wdata0_20;
  wire [63:0]wdata0_21;
  wire [63:0]wdata0_22;
  wire [63:0]wdata0_23;
  wire [63:0]wdata0_24;
  wire [63:0]wdata0_25;
  wire [63:0]wdata0_26;
  wire [63:0]wdata0_27;
  wire [63:0]wdata0_28;
  wire [63:0]wdata0_29;
  wire [63:0]wdata0_3;
  wire [63:0]wdata0_30;
  wire [63:0]wdata0_31;
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
  wire [63:0]wdata1_16;
  wire [63:0]wdata1_17;
  wire [63:0]wdata1_18;
  wire [63:0]wdata1_19;
  wire [63:0]wdata1_2;
  wire [63:0]wdata1_20;
  wire [63:0]wdata1_21;
  wire [63:0]wdata1_22;
  wire [63:0]wdata1_23;
  wire [63:0]wdata1_24;
  wire [63:0]wdata1_25;
  wire [63:0]wdata1_26;
  wire [63:0]wdata1_27;
  wire [63:0]wdata1_28;
  wire [63:0]wdata1_29;
  wire [63:0]wdata1_3;
  wire [63:0]wdata1_30;
  wire [63:0]wdata1_31;
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
  wire [7:0]we0_16;
  wire [7:0]we0_17;
  wire [7:0]we0_18;
  wire [7:0]we0_19;
  wire [7:0]we0_2;
  wire [7:0]we0_20;
  wire [7:0]we0_21;
  wire [7:0]we0_22;
  wire [7:0]we0_23;
  wire [7:0]we0_24;
  wire [7:0]we0_25;
  wire [7:0]we0_26;
  wire [7:0]we0_27;
  wire [7:0]we0_28;
  wire [7:0]we0_29;
  wire [7:0]we0_3;
  wire [7:0]we0_30;
  wire [7:0]we0_31;
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
  wire [7:0]we1_16;
  wire [7:0]we1_17;
  wire [7:0]we1_18;
  wire [7:0]we1_19;
  wire [7:0]we1_2;
  wire [7:0]we1_20;
  wire [7:0]we1_21;
  wire [7:0]we1_22;
  wire [7:0]we1_23;
  wire [7:0]we1_24;
  wire [7:0]we1_25;
  wire [7:0]we1_26;
  wire [7:0]we1_27;
  wire [7:0]we1_28;
  wire [7:0]we1_29;
  wire [7:0]we1_3;
  wire [7:0]we1_30;
  wire [7:0]we1_31;
  wire [7:0]we1_4;
  wire [7:0]we1_5;
  wire [7:0]we1_6;
  wire [7:0]we1_7;
  wire [7:0]we1_8;
  wire [7:0]we1_9;

  uram_wex32 uram_wex32_i
       (.addr0_0(addr0_0),
        .addr0_1(addr0_1),
        .addr0_10(addr0_10),
        .addr0_11(addr0_11),
        .addr0_12(addr0_12),
        .addr0_13(addr0_13),
        .addr0_14(addr0_14),
        .addr0_15(addr0_15),
        .addr0_16(addr0_16),
        .addr0_17(addr0_17),
        .addr0_18(addr0_18),
        .addr0_19(addr0_19),
        .addr0_2(addr0_2),
        .addr0_20(addr0_20),
        .addr0_21(addr0_21),
        .addr0_22(addr0_22),
        .addr0_23(addr0_23),
        .addr0_24(addr0_24),
        .addr0_25(addr0_25),
        .addr0_26(addr0_26),
        .addr0_27(addr0_27),
        .addr0_28(addr0_28),
        .addr0_29(addr0_29),
        .addr0_3(addr0_3),
        .addr0_30(addr0_30),
        .addr0_31(addr0_31),
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
        .addr1_16(addr1_16),
        .addr1_17(addr1_17),
        .addr1_18(addr1_18),
        .addr1_19(addr1_19),
        .addr1_2(addr1_2),
        .addr1_20(addr1_20),
        .addr1_21(addr1_21),
        .addr1_22(addr1_22),
        .addr1_23(addr1_23),
        .addr1_24(addr1_24),
        .addr1_25(addr1_25),
        .addr1_26(addr1_26),
        .addr1_27(addr1_27),
        .addr1_28(addr1_28),
        .addr1_29(addr1_29),
        .addr1_3(addr1_3),
        .addr1_30(addr1_30),
        .addr1_31(addr1_31),
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
        .ce0_16(ce0_16),
        .ce0_17(ce0_17),
        .ce0_18(ce0_18),
        .ce0_19(ce0_19),
        .ce0_2(ce0_2),
        .ce0_20(ce0_20),
        .ce0_21(ce0_21),
        .ce0_22(ce0_22),
        .ce0_23(ce0_23),
        .ce0_24(ce0_24),
        .ce0_25(ce0_25),
        .ce0_26(ce0_26),
        .ce0_27(ce0_27),
        .ce0_28(ce0_28),
        .ce0_29(ce0_29),
        .ce0_3(ce0_3),
        .ce0_30(ce0_30),
        .ce0_31(ce0_31),
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
        .ce1_16(ce1_16),
        .ce1_17(ce1_17),
        .ce1_18(ce1_18),
        .ce1_19(ce1_19),
        .ce1_2(ce1_2),
        .ce1_20(ce1_20),
        .ce1_21(ce1_21),
        .ce1_22(ce1_22),
        .ce1_23(ce1_23),
        .ce1_24(ce1_24),
        .ce1_25(ce1_25),
        .ce1_26(ce1_26),
        .ce1_27(ce1_27),
        .ce1_28(ce1_28),
        .ce1_29(ce1_29),
        .ce1_3(ce1_3),
        .ce1_30(ce1_30),
        .ce1_31(ce1_31),
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
        .rdata0_16(rdata0_16),
        .rdata0_17(rdata0_17),
        .rdata0_18(rdata0_18),
        .rdata0_19(rdata0_19),
        .rdata0_2(rdata0_2),
        .rdata0_20(rdata0_20),
        .rdata0_21(rdata0_21),
        .rdata0_22(rdata0_22),
        .rdata0_23(rdata0_23),
        .rdata0_24(rdata0_24),
        .rdata0_25(rdata0_25),
        .rdata0_26(rdata0_26),
        .rdata0_27(rdata0_27),
        .rdata0_28(rdata0_28),
        .rdata0_29(rdata0_29),
        .rdata0_3(rdata0_3),
        .rdata0_30(rdata0_30),
        .rdata0_31(rdata0_31),
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
        .rdata1_16(rdata1_16),
        .rdata1_17(rdata1_17),
        .rdata1_18(rdata1_18),
        .rdata1_19(rdata1_19),
        .rdata1_2(rdata1_2),
        .rdata1_20(rdata1_20),
        .rdata1_21(rdata1_21),
        .rdata1_22(rdata1_22),
        .rdata1_23(rdata1_23),
        .rdata1_24(rdata1_24),
        .rdata1_25(rdata1_25),
        .rdata1_26(rdata1_26),
        .rdata1_27(rdata1_27),
        .rdata1_28(rdata1_28),
        .rdata1_29(rdata1_29),
        .rdata1_3(rdata1_3),
        .rdata1_30(rdata1_30),
        .rdata1_31(rdata1_31),
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
        .wdata0_16(wdata0_16),
        .wdata0_17(wdata0_17),
        .wdata0_18(wdata0_18),
        .wdata0_19(wdata0_19),
        .wdata0_2(wdata0_2),
        .wdata0_20(wdata0_20),
        .wdata0_21(wdata0_21),
        .wdata0_22(wdata0_22),
        .wdata0_23(wdata0_23),
        .wdata0_24(wdata0_24),
        .wdata0_25(wdata0_25),
        .wdata0_26(wdata0_26),
        .wdata0_27(wdata0_27),
        .wdata0_28(wdata0_28),
        .wdata0_29(wdata0_29),
        .wdata0_3(wdata0_3),
        .wdata0_30(wdata0_30),
        .wdata0_31(wdata0_31),
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
        .wdata1_16(wdata1_16),
        .wdata1_17(wdata1_17),
        .wdata1_18(wdata1_18),
        .wdata1_19(wdata1_19),
        .wdata1_2(wdata1_2),
        .wdata1_20(wdata1_20),
        .wdata1_21(wdata1_21),
        .wdata1_22(wdata1_22),
        .wdata1_23(wdata1_23),
        .wdata1_24(wdata1_24),
        .wdata1_25(wdata1_25),
        .wdata1_26(wdata1_26),
        .wdata1_27(wdata1_27),
        .wdata1_28(wdata1_28),
        .wdata1_29(wdata1_29),
        .wdata1_3(wdata1_3),
        .wdata1_30(wdata1_30),
        .wdata1_31(wdata1_31),
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
        .we0_16(we0_16),
        .we0_17(we0_17),
        .we0_18(we0_18),
        .we0_19(we0_19),
        .we0_2(we0_2),
        .we0_20(we0_20),
        .we0_21(we0_21),
        .we0_22(we0_22),
        .we0_23(we0_23),
        .we0_24(we0_24),
        .we0_25(we0_25),
        .we0_26(we0_26),
        .we0_27(we0_27),
        .we0_28(we0_28),
        .we0_29(we0_29),
        .we0_3(we0_3),
        .we0_30(we0_30),
        .we0_31(we0_31),
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
        .we1_16(we1_16),
        .we1_17(we1_17),
        .we1_18(we1_18),
        .we1_19(we1_19),
        .we1_2(we1_2),
        .we1_20(we1_20),
        .we1_21(we1_21),
        .we1_22(we1_22),
        .we1_23(we1_23),
        .we1_24(we1_24),
        .we1_25(we1_25),
        .we1_26(we1_26),
        .we1_27(we1_27),
        .we1_28(we1_28),
        .we1_29(we1_29),
        .we1_3(we1_3),
        .we1_30(we1_30),
        .we1_31(we1_31),
        .we1_4(we1_4),
        .we1_5(we1_5),
        .we1_6(we1_6),
        .we1_7(we1_7),
        .we1_8(we1_8),
        .we1_9(we1_9));
endmodule
