// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 21 17:26:03 2022
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_s_mread_master_0_0_stub.v
// Design      : custom_m_axi_s_mread_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mread_master,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst_n, baseAddr, req_din, req_full_n, 
  req_wr_en, req_start, req_done, m_axi_ARVALID, m_axi_ARLEN, m_axi_ARADDR, m_axi_ARID, 
  m_axi_ARSIZE, m_axi_ARBURST, m_axi_ARLOCK, m_axi_ARCACHE, m_axi_ARQOS, m_axi_ARREGION, 
  m_axi_ARREADY, m_axi_RVALID, m_axi_RDATA, m_axi_RLAST, m_axi_RID, m_axi_RRESP, m_axi_RREADY, 
  m_axis_tvalid, m_axis_tready, m_axis_tlast, m_axis_tkeep, m_axis_tstrb, m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,baseAddr[63:0],req_din[31:0],req_full_n,req_wr_en,req_start,req_done,m_axi_ARVALID,m_axi_ARLEN[7:0],m_axi_ARADDR[63:0],m_axi_ARID[5:0],m_axi_ARSIZE[2:0],m_axi_ARBURST[1:0],m_axi_ARLOCK[1:0],m_axi_ARCACHE[3:0],m_axi_ARQOS[3:0],m_axi_ARREGION[3:0],m_axi_ARREADY,m_axi_RVALID,m_axi_RDATA[255:0],m_axi_RLAST,m_axi_RID[5:0],m_axi_RRESP[1:0],m_axi_RREADY,m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tkeep[31:0],m_axis_tstrb[31:0],m_axis_tdata[255:0]" */;
  input clk;
  input rst_n;
  input [63:0]baseAddr;
  input [31:0]req_din;
  output req_full_n;
  input req_wr_en;
  input req_start;
  output req_done;
  output m_axi_ARVALID;
  output [7:0]m_axi_ARLEN;
  output [63:0]m_axi_ARADDR;
  output [5:0]m_axi_ARID;
  output [2:0]m_axi_ARSIZE;
  output [1:0]m_axi_ARBURST;
  output [1:0]m_axi_ARLOCK;
  output [3:0]m_axi_ARCACHE;
  output [3:0]m_axi_ARQOS;
  output [3:0]m_axi_ARREGION;
  input m_axi_ARREADY;
  input m_axi_RVALID;
  input [255:0]m_axi_RDATA;
  input m_axi_RLAST;
  input [5:0]m_axi_RID;
  input [1:0]m_axi_RRESP;
  output m_axi_RREADY;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  output [31:0]m_axis_tkeep;
  output [31:0]m_axis_tstrb;
  output [255:0]m_axis_tdata;
endmodule
