// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Jan  6 21:59:43 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /Orion/GraphHBM/UTIL_IP/IP_AXI_ENGINE_S/m_axi_256_ultra/cus_m_axi_s_256_ultra.gen/sources_1/bd/cus_m_axi_s_256_ultra/ip/cus_m_axi_s_256_ultra_swr_engine_0_0/cus_m_axi_s_256_ultra_swr_engine_0_0_stub.v
// Design      : cus_m_axi_s_256_ultra_swr_engine_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "swr_engine,Vivado 2020.2" *)
module cus_m_axi_s_256_ultra_swr_engine_0_0(clk, rst_n, ctrl_start, ctrl_done, baseAddr, 
  req_len, m_axi_AWVALID, m_axi_AWREADY, m_axi_AWADDR, m_axi_AWLEN, m_axi_AWSIZE, m_axi_AWID, 
  m_axi_WVALID, m_axi_WREADY, m_axi_WDATA, m_axi_WSTRB, m_axi_WLAST, m_axi_BVALID, 
  m_axi_BREADY, s_axis_tvalid, s_axis_tready, s_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,ctrl_start,ctrl_done,baseAddr[63:0],req_len[15:0],m_axi_AWVALID,m_axi_AWREADY,m_axi_AWADDR[63:0],m_axi_AWLEN[7:0],m_axi_AWSIZE[2:0],m_axi_AWID[5:0],m_axi_WVALID,m_axi_WREADY,m_axi_WDATA[255:0],m_axi_WSTRB[31:0],m_axi_WLAST,m_axi_BVALID,m_axi_BREADY,s_axis_tvalid,s_axis_tready,s_axis_tdata[255:0]" */;
  input clk;
  input rst_n;
  input ctrl_start;
  output ctrl_done;
  input [63:0]baseAddr;
  input [15:0]req_len;
  output m_axi_AWVALID;
  input m_axi_AWREADY;
  output [63:0]m_axi_AWADDR;
  output [7:0]m_axi_AWLEN;
  output [2:0]m_axi_AWSIZE;
  output [5:0]m_axi_AWID;
  output m_axi_WVALID;
  input m_axi_WREADY;
  output [255:0]m_axi_WDATA;
  output [31:0]m_axi_WSTRB;
  output m_axi_WLAST;
  input m_axi_BVALID;
  output m_axi_BREADY;
  input s_axis_tvalid;
  output s_axis_tready;
  input [255:0]s_axis_tdata;
endmodule
