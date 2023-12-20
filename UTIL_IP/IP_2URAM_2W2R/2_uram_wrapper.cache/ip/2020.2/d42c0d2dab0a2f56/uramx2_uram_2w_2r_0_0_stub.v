// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr 25 20:01:28 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uramx2_uram_2w_2r_0_0_stub.v
// Design      : uramx2_uram_2w_2r_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uram_2w_2r,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, ce0, ce1, we0, we1, addr0, addr1, rdata0, 
  rdata1, wdata0, wdata1)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,ce0,ce1,we0,we1,addr0[11:0],addr1[11:0],rdata0[63:0],rdata1[63:0],wdata0[63:0],wdata1[63:0]" */;
  input clk;
  input rst_n;
  input ce0;
  input ce1;
  input we0;
  input we1;
  input [11:0]addr0;
  input [11:0]addr1;
  output [63:0]rdata0;
  output [63:0]rdata1;
  input [63:0]wdata0;
  input [63:0]wdata1;
endmodule
