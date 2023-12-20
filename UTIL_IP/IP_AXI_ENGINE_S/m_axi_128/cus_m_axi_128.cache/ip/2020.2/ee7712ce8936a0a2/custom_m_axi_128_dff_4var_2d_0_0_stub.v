// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Feb  9 16:14:40 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_4var_2d_0_0_stub.v
// Design      : custom_m_axi_128_dff_4var_2d_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dff_4var_2d,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, q1, q2, q3, q4, d1, d2, d3, d4)
/* synthesis syn_black_box black_box_pad_pin="clk,q1[63:0],q2[31:0],q3[0:0],q4[0:0],d1[63:0],d2[31:0],d3[0:0],d4[0:0]" */;
  input clk;
  input [63:0]q1;
  input [31:0]q2;
  input [0:0]q3;
  input [0:0]q4;
  output [63:0]d1;
  output [31:0]d2;
  output [0:0]d3;
  output [0:0]d4;
endmodule
