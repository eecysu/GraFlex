// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jun 16 20:03:31 2022
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/chunyou/Xilinx/GraphHBM/UTIL_IP/IP_AXI_ENGINE_S/m_axi_128/cus_m_axi_128.gen/sources_1/bd/custom_m_axi_128/ip/custom_m_axi_128_step_to_pulse_0_1/custom_m_axi_128_step_to_pulse_0_1_stub.v
// Design      : custom_m_axi_128_step_to_pulse_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "step_to_pulse,Vivado 2020.2" *)
module custom_m_axi_128_step_to_pulse_0_1(clk, step_in, pul_out)
/* synthesis syn_black_box black_box_pad_pin="clk,step_in,pul_out" */;
  input clk;
  input step_in;
  output pul_out;
endmodule
