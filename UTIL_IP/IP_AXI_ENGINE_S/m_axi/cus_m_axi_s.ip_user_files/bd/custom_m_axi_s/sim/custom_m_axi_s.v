//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Apr 21 22:35:14 2022
//Host        : noah running 64-bit Ubuntu 18.04.4 LTS
//Command     : generate_target custom_m_axi_s.bd
//Design      : custom_m_axi_s
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "custom_m_axi_s,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=custom_m_axi_s,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "custom_m_axi_s.hwdef" *) 
module custom_m_axi_s
   (clk,
    m_axi_araddr,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arid,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arqos,
    m_axi_arready,
    m_axi_arregion,
    m_axi_arsize,
    m_axi_arvalid,
    m_axi_awaddr,
    m_axi_awid,
    m_axi_awlen,
    m_axi_awready,
    m_axi_awsize,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wvalid,
    rd_baseAddr,
    rd_done,
    rd_req_din,
    rd_req_full_n,
    rd_req_wr_en,
    rd_start,
    rst_n,
    wr_baseAddr,
    wr_done,
    wr_len,
    wr_start);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN custom_m_axi_s_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [63:0]m_axi_araddr;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [5:0]m_axi_arid;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arlock;
  output [3:0]m_axi_arqos;
  input m_axi_arready;
  output [3:0]m_axi_arregion;
  output [2:0]m_axi_arsize;
  output m_axi_arvalid;
  output [63:0]m_axi_awaddr;
  output [5:0]m_axi_awid;
  output [7:0]m_axi_awlen;
  input m_axi_awready;
  output [2:0]m_axi_awsize;
  output m_axi_awvalid;
  output m_axi_bready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  input [5:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_wlast;
  input m_axi_wready;
  output [7:0]m_axi_wstrb;
  output m_axi_wvalid;
  input [63:0]rd_baseAddr;
  output rd_done;
  input [31:0]rd_req_din;
  output rd_req_full_n;
  input rd_req_wr_en;
  input rd_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  input [63:0]wr_baseAddr;
  output wr_done;
  input [7:0]wr_len;
  input wr_start;

  wire Net;
  wire clk_0_1;
  wire m_axi_arready_1;
  wire m_axi_awready_1;
  wire [1:0]m_axi_bresp_1;
  wire m_axi_bvalid_1;
  wire [5:0]m_axi_rid_1;
  wire m_axi_rlast_1;
  wire [1:0]m_axi_rresp_1;
  wire m_axi_rvalid_1;
  wire m_axi_wready_1;
  wire [63:0]mread_master_0_m_axi_ARADDR;
  wire [1:0]mread_master_0_m_axi_ARBURST;
  wire [3:0]mread_master_0_m_axi_ARCACHE;
  wire [5:0]mread_master_0_m_axi_ARID;
  wire [7:0]mread_master_0_m_axi_ARLEN;
  wire [1:0]mread_master_0_m_axi_ARLOCK;
  wire [3:0]mread_master_0_m_axi_ARQOS;
  wire [3:0]mread_master_0_m_axi_ARREGION;
  wire [2:0]mread_master_0_m_axi_ARSIZE;
  wire mread_master_0_m_axi_ARVALID;
  wire mread_master_0_m_axi_RREADY;
  wire mread_master_0_req_done;
  wire mread_master_0_req_full_n;
  wire [63:0]rd_baseAddr_1;
  wire [31:0]rd_req_din_1;
  wire rd_req_wr_en_1;
  wire step_in_0_1;
  wire step_in_0_2;
  wire step_to_pulse_0_pul_out;
  wire step_to_pulse_1_pul_out;
  wire [63:0]swr_engine_0_m_axi_AWADDR;
  wire [5:0]swr_engine_0_m_axi_AWID;
  wire [7:0]swr_engine_0_m_axi_AWLEN;
  wire [2:0]swr_engine_0_m_axi_AWSIZE;
  wire swr_engine_0_m_axi_AWVALID;
  wire swr_engine_0_m_axi_BREADY;
  wire swr_engine_0_m_axi_WLAST;
  wire [7:0]swr_engine_0_m_axi_WSTRB;
  wire swr_engine_0_m_axi_WVALID;
  wire swr_engine_0_req_done;
  wire [63:0]wr_baseAddr_1;
  wire [7:0]wr_len_1;

  assign Net = rst_n;
  assign clk_0_1 = clk;
  assign m_axi_araddr[63:0] = mread_master_0_m_axi_ARADDR;
  assign m_axi_arburst[1:0] = mread_master_0_m_axi_ARBURST;
  assign m_axi_arcache[3:0] = mread_master_0_m_axi_ARCACHE;
  assign m_axi_arid[5:0] = mread_master_0_m_axi_ARID;
  assign m_axi_arlen[7:0] = mread_master_0_m_axi_ARLEN;
  assign m_axi_arlock[1:0] = mread_master_0_m_axi_ARLOCK;
  assign m_axi_arqos[3:0] = mread_master_0_m_axi_ARQOS;
  assign m_axi_arready_1 = m_axi_arready;
  assign m_axi_arregion[3:0] = mread_master_0_m_axi_ARREGION;
  assign m_axi_arsize[2:0] = mread_master_0_m_axi_ARSIZE;
  assign m_axi_arvalid = mread_master_0_m_axi_ARVALID;
  assign m_axi_awaddr[63:0] = swr_engine_0_m_axi_AWADDR;
  assign m_axi_awid[5:0] = swr_engine_0_m_axi_AWID;
  assign m_axi_awlen[7:0] = swr_engine_0_m_axi_AWLEN;
  assign m_axi_awready_1 = m_axi_awready;
  assign m_axi_awsize[2:0] = swr_engine_0_m_axi_AWSIZE;
  assign m_axi_awvalid = swr_engine_0_m_axi_AWVALID;
  assign m_axi_bready = swr_engine_0_m_axi_BREADY;
  assign m_axi_bresp_1 = m_axi_bresp[1:0];
  assign m_axi_bvalid_1 = m_axi_bvalid;
  assign m_axi_rid_1 = m_axi_rid[5:0];
  assign m_axi_rlast_1 = m_axi_rlast;
  assign m_axi_rready = mread_master_0_m_axi_RREADY;
  assign m_axi_rresp_1 = m_axi_rresp[1:0];
  assign m_axi_rvalid_1 = m_axi_rvalid;
  assign m_axi_wlast = swr_engine_0_m_axi_WLAST;
  assign m_axi_wready_1 = m_axi_wready;
  assign m_axi_wstrb[7:0] = swr_engine_0_m_axi_WSTRB;
  assign m_axi_wvalid = swr_engine_0_m_axi_WVALID;
  assign rd_baseAddr_1 = rd_baseAddr[63:0];
  assign rd_done = mread_master_0_req_done;
  assign rd_req_din_1 = rd_req_din[31:0];
  assign rd_req_full_n = mread_master_0_req_full_n;
  assign rd_req_wr_en_1 = rd_req_wr_en;
  assign step_in_0_1 = rd_start;
  assign step_in_0_2 = wr_start;
  assign wr_baseAddr_1 = wr_baseAddr[63:0];
  assign wr_done = swr_engine_0_req_done;
  assign wr_len_1 = wr_len[7:0];
  custom_m_axi_s_mread_master_0_1 mread_master_0
       (.baseAddr(rd_baseAddr_1),
        .clk(clk_0_1),
        .m_axi_ARADDR(mread_master_0_m_axi_ARADDR),
        .m_axi_ARBURST(mread_master_0_m_axi_ARBURST),
        .m_axi_ARCACHE(mread_master_0_m_axi_ARCACHE),
        .m_axi_ARID(mread_master_0_m_axi_ARID),
        .m_axi_ARLEN(mread_master_0_m_axi_ARLEN),
        .m_axi_ARLOCK(mread_master_0_m_axi_ARLOCK),
        .m_axi_ARQOS(mread_master_0_m_axi_ARQOS),
        .m_axi_ARREADY(m_axi_arready_1),
        .m_axi_ARREGION(mread_master_0_m_axi_ARREGION),
        .m_axi_ARSIZE(mread_master_0_m_axi_ARSIZE),
        .m_axi_ARVALID(mread_master_0_m_axi_ARVALID),
        .m_axi_RDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_RID(m_axi_rid_1),
        .m_axi_RLAST(m_axi_rlast_1),
        .m_axi_RREADY(mread_master_0_m_axi_RREADY),
        .m_axi_RRESP(m_axi_rresp_1),
        .m_axi_RVALID(m_axi_rvalid_1),
        .m_axis_tready(1'b1),
        .req_din(rd_req_din_1),
        .req_done(mread_master_0_req_done),
        .req_full_n(mread_master_0_req_full_n),
        .req_start(step_to_pulse_0_pul_out),
        .req_wr_en(rd_req_wr_en_1),
        .rst_n(Net));
  custom_m_axi_s_step_to_pulse_0_0 step_to_pulse_0
       (.clk(clk_0_1),
        .pul_out(step_to_pulse_0_pul_out),
        .step_in(step_in_0_1));
  custom_m_axi_s_step_to_pulse_0_1 step_to_pulse_1
       (.clk(clk_0_1),
        .pul_out(step_to_pulse_1_pul_out),
        .step_in(step_in_0_2));
  custom_m_axi_s_swr_engine_0_1 swr_engine_0
       (.baseAddr(wr_baseAddr_1),
        .clk(clk_0_1),
        .m_axi_AWADDR(swr_engine_0_m_axi_AWADDR),
        .m_axi_AWID(swr_engine_0_m_axi_AWID),
        .m_axi_AWLEN(swr_engine_0_m_axi_AWLEN),
        .m_axi_AWREADY(m_axi_awready_1),
        .m_axi_AWSIZE(swr_engine_0_m_axi_AWSIZE),
        .m_axi_AWVALID(swr_engine_0_m_axi_AWVALID),
        .m_axi_BREADY(swr_engine_0_m_axi_BREADY),
        .m_axi_BRESP(m_axi_bresp_1),
        .m_axi_BVALID(m_axi_bvalid_1),
        .m_axi_WLAST(swr_engine_0_m_axi_WLAST),
        .m_axi_WREADY(m_axi_wready_1),
        .m_axi_WSTRB(swr_engine_0_m_axi_WSTRB),
        .m_axi_WVALID(swr_engine_0_m_axi_WVALID),
        .req_done(swr_engine_0_req_done),
        .req_length(wr_len_1),
        .req_start(step_to_pulse_1_pul_out),
        .rst_n(Net),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0));
endmodule
