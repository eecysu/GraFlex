// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Sep 18 23:28:05 2023
// Host        : noah running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top uram_wex32_uram_2w_2r_we_4_0 -prefix
//               uram_wex32_uram_2w_2r_we_4_0_ uram_wex32_uram_2w_2r_we_6_2_stub.v
// Design      : uram_wex32_uram_2w_2r_we_6_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uram_2w_2r_we,Vivado 2020.2" *)
module uram_wex32_uram_2w_2r_we_4_0(clk, rst_n, ce0, ce1, we0, we1, addr0, addr1, rdata0, 
  rdata1, wdata0, wdata1)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,ce0,ce1,we0[7:0],we1[7:0],addr0[11:0],addr1[11:0],rdata0[63:0],rdata1[63:0],wdata0[63:0],wdata1[63:0]" */;
  input clk;
  input rst_n;
  input ce0;
  input ce1;
  input [7:0]we0;
  input [7:0]we1;
  input [11:0]addr0;
  input [11:0]addr1;
  output [63:0]rdata0;
  output [63:0]rdata1;
  input [63:0]wdata0;
  input [63:0]wdata1;
endmodule
