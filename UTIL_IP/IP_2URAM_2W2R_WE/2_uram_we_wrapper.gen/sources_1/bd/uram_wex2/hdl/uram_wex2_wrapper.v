//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Apr 11 14:38:33 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uram_wex2_wrapper.bd
//Design      : uram_wex2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module uram_wex2_wrapper
   (addr0_0,
    addr0_1,
    addr1_0,
    addr1_1,
    ce0_0,
    ce0_1,
    ce1_0,
    ce1_1,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata1_0,
    rdata1_1,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata1_0,
    wdata1_1,
    we0_0,
    we0_1,
    we1_0,
    we1_1);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input ce0_0;
  input ce0_1;
  input ce1_0;
  input ce1_1;
  input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [7:0]we0_0;
  input [7:0]we0_1;
  input [7:0]we1_0;
  input [7:0]we1_1;

  wire [11:0]addr0_0;
  wire [11:0]addr0_1;
  wire [11:0]addr1_0;
  wire [11:0]addr1_1;
  wire ce0_0;
  wire ce0_1;
  wire ce1_0;
  wire ce1_1;
  wire clk_0;
  wire [63:0]rdata0_0;
  wire [63:0]rdata0_1;
  wire [63:0]rdata1_0;
  wire [63:0]rdata1_1;
  wire rst_n_0;
  wire [63:0]wdata0_0;
  wire [63:0]wdata0_1;
  wire [63:0]wdata1_0;
  wire [63:0]wdata1_1;
  wire [7:0]we0_0;
  wire [7:0]we0_1;
  wire [7:0]we1_0;
  wire [7:0]we1_1;

  uram_wex2 uram_wex2_i
       (.addr0_0(addr0_0),
        .addr0_1(addr0_1),
        .addr1_0(addr1_0),
        .addr1_1(addr1_1),
        .ce0_0(ce0_0),
        .ce0_1(ce0_1),
        .ce1_0(ce1_0),
        .ce1_1(ce1_1),
        .clk_0(clk_0),
        .rdata0_0(rdata0_0),
        .rdata0_1(rdata0_1),
        .rdata1_0(rdata1_0),
        .rdata1_1(rdata1_1),
        .rst_n_0(rst_n_0),
        .wdata0_0(wdata0_0),
        .wdata0_1(wdata0_1),
        .wdata1_0(wdata1_0),
        .wdata1_1(wdata1_1),
        .we0_0(we0_0),
        .we0_1(we0_1),
        .we1_0(we1_0),
        .we1_1(we1_1));
endmodule
