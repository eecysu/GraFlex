//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Jan  6 21:58:57 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target cus_m_axi_s_256_ultra.bd
//Design      : cus_m_axi_s_256_ultra
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "cus_m_axi_s_256_ultra,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=cus_m_axi_s_256_ultra,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "cus_m_axi_s_256_ultra.hwdef" *) 
module cus_m_axi_s_256_ultra
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
    m_axi_bvalid,
    m_axi_rdata,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rready,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_wdata,
    m_axi_wlast,
    m_axi_wready,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axis_rd_tdata,
    m_axis_rd_tkeep,
    m_axis_rd_tlast,
    m_axis_rd_tready,
    m_axis_rd_tstrb,
    m_axis_rd_tvalid,
    rd_baseAddr,
    rd_done,
    rd_req_din,
    rd_req_full_n,
    rd_req_wr_en,
    rd_start,
    rst_n,
    s_axis_wr_tdata,
    s_axis_wr_tready,
    s_axis_wr_tvalid,
    wr_baseAddr,
    wr_done,
    wr_len,
    wr_start);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF m_axis_rd:s_axis_wr, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
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
  input m_axi_bvalid;
  input [255:0]m_axi_rdata;
  input [5:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output [255:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [31:0]m_axi_wstrb;
  output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_rd, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, FREQ_HZ 100000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [255:0]m_axis_rd_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TKEEP" *) output [31:0]m_axis_rd_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TLAST" *) output m_axis_rd_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TREADY" *) input m_axis_rd_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TSTRB" *) output [31:0]m_axis_rd_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_rd TVALID" *) output m_axis_rd_tvalid;
  input [63:0]rd_baseAddr;
  output rd_done;
  input [31:0]rd_req_din;
  output rd_req_full_n;
  input rd_req_wr_en;
  input rd_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_wr TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_wr, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [255:0]s_axis_wr_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_wr TREADY" *) output s_axis_wr_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_wr TVALID" *) input s_axis_wr_tvalid;
  input [63:0]wr_baseAddr;
  output wr_done;
  input [15:0]wr_len;
  input wr_start;

  wire [63:0]baseAddr_0_1;
  wire [63:0]baseAddr_0_2;
  wire clk_0_1;
  wire m_axi_ARREADY_0_1;
  wire m_axi_AWREADY_0_1;
  wire m_axi_BVALID_0_1;
  wire [255:0]m_axi_RDATA_0_1;
  wire [5:0]m_axi_RID_0_1;
  wire m_axi_RLAST_0_1;
  wire [1:0]m_axi_RRESP_0_1;
  wire m_axi_RVALID_0_1;
  wire m_axi_WREADY_0_1;
  wire [63:0]mread_master_ultra_0_m_axi_ARADDR;
  wire [1:0]mread_master_ultra_0_m_axi_ARBURST;
  wire [3:0]mread_master_ultra_0_m_axi_ARCACHE;
  wire [5:0]mread_master_ultra_0_m_axi_ARID;
  wire [7:0]mread_master_ultra_0_m_axi_ARLEN;
  wire [1:0]mread_master_ultra_0_m_axi_ARLOCK;
  wire [3:0]mread_master_ultra_0_m_axi_ARQOS;
  wire [3:0]mread_master_ultra_0_m_axi_ARREGION;
  wire [2:0]mread_master_ultra_0_m_axi_ARSIZE;
  wire mread_master_ultra_0_m_axi_ARVALID;
  wire mread_master_ultra_0_m_axi_RREADY;
  wire [255:0]mread_master_ultra_0_m_axis_TDATA;
  wire [31:0]mread_master_ultra_0_m_axis_TKEEP;
  wire mread_master_ultra_0_m_axis_TLAST;
  wire mread_master_ultra_0_m_axis_TREADY;
  wire [31:0]mread_master_ultra_0_m_axis_TSTRB;
  wire mread_master_ultra_0_m_axis_TVALID;
  wire mread_master_ultra_0_req_done;
  wire mread_master_ultra_0_req_full_n;
  wire [31:0]req_din_0_1;
  wire [15:0]req_len_0_1;
  wire req_wr_en_0_1;
  wire rst_n_0_1;
  wire [255:0]s_axis_0_1_TDATA;
  wire s_axis_0_1_TREADY;
  wire s_axis_0_1_TVALID;
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
  wire [255:0]swr_engine_0_m_axi_WDATA;
  wire swr_engine_0_m_axi_WLAST;
  wire [31:0]swr_engine_0_m_axi_WSTRB;
  wire swr_engine_0_m_axi_WVALID;
  wire swr_engine_0_req_done;

  assign baseAddr_0_1 = wr_baseAddr[63:0];
  assign baseAddr_0_2 = rd_baseAddr[63:0];
  assign clk_0_1 = clk;
  assign m_axi_ARREADY_0_1 = m_axi_arready;
  assign m_axi_AWREADY_0_1 = m_axi_awready;
  assign m_axi_BVALID_0_1 = m_axi_bvalid;
  assign m_axi_RDATA_0_1 = m_axi_rdata[255:0];
  assign m_axi_RID_0_1 = m_axi_rid[5:0];
  assign m_axi_RLAST_0_1 = m_axi_rlast;
  assign m_axi_RRESP_0_1 = m_axi_rresp[1:0];
  assign m_axi_RVALID_0_1 = m_axi_rvalid;
  assign m_axi_WREADY_0_1 = m_axi_wready;
  assign m_axi_araddr[63:0] = mread_master_ultra_0_m_axi_ARADDR;
  assign m_axi_arburst[1:0] = mread_master_ultra_0_m_axi_ARBURST;
  assign m_axi_arcache[3:0] = mread_master_ultra_0_m_axi_ARCACHE;
  assign m_axi_arid[5:0] = mread_master_ultra_0_m_axi_ARID;
  assign m_axi_arlen[7:0] = mread_master_ultra_0_m_axi_ARLEN;
  assign m_axi_arlock[1:0] = mread_master_ultra_0_m_axi_ARLOCK;
  assign m_axi_arqos[3:0] = mread_master_ultra_0_m_axi_ARQOS;
  assign m_axi_arregion[3:0] = mread_master_ultra_0_m_axi_ARREGION;
  assign m_axi_arsize[2:0] = mread_master_ultra_0_m_axi_ARSIZE;
  assign m_axi_arvalid = mread_master_ultra_0_m_axi_ARVALID;
  assign m_axi_awaddr[63:0] = swr_engine_0_m_axi_AWADDR;
  assign m_axi_awid[5:0] = swr_engine_0_m_axi_AWID;
  assign m_axi_awlen[7:0] = swr_engine_0_m_axi_AWLEN;
  assign m_axi_awsize[2:0] = swr_engine_0_m_axi_AWSIZE;
  assign m_axi_awvalid = swr_engine_0_m_axi_AWVALID;
  assign m_axi_bready = swr_engine_0_m_axi_BREADY;
  assign m_axi_rready = mread_master_ultra_0_m_axi_RREADY;
  assign m_axi_wdata[255:0] = swr_engine_0_m_axi_WDATA;
  assign m_axi_wlast = swr_engine_0_m_axi_WLAST;
  assign m_axi_wstrb[31:0] = swr_engine_0_m_axi_WSTRB;
  assign m_axi_wvalid = swr_engine_0_m_axi_WVALID;
  assign m_axis_rd_tdata[255:0] = mread_master_ultra_0_m_axis_TDATA;
  assign m_axis_rd_tkeep[31:0] = mread_master_ultra_0_m_axis_TKEEP;
  assign m_axis_rd_tlast = mread_master_ultra_0_m_axis_TLAST;
  assign m_axis_rd_tstrb[31:0] = mread_master_ultra_0_m_axis_TSTRB;
  assign m_axis_rd_tvalid = mread_master_ultra_0_m_axis_TVALID;
  assign mread_master_ultra_0_m_axis_TREADY = m_axis_rd_tready;
  assign rd_done = mread_master_ultra_0_req_done;
  assign rd_req_full_n = mread_master_ultra_0_req_full_n;
  assign req_din_0_1 = rd_req_din[31:0];
  assign req_len_0_1 = wr_len[15:0];
  assign req_wr_en_0_1 = rd_req_wr_en;
  assign rst_n_0_1 = rst_n;
  assign s_axis_0_1_TDATA = s_axis_wr_tdata[255:0];
  assign s_axis_0_1_TVALID = s_axis_wr_tvalid;
  assign s_axis_wr_tready = s_axis_0_1_TREADY;
  assign step_in_0_1 = rd_start;
  assign step_in_0_2 = wr_start;
  assign wr_done = swr_engine_0_req_done;
  cus_m_axi_s_256_ultra_mread_master_ultra_0_0 mread_master_ultra_0
       (.baseAddr(baseAddr_0_2),
        .clk(clk_0_1),
        .m_axi_ARADDR(mread_master_ultra_0_m_axi_ARADDR),
        .m_axi_ARBURST(mread_master_ultra_0_m_axi_ARBURST),
        .m_axi_ARCACHE(mread_master_ultra_0_m_axi_ARCACHE),
        .m_axi_ARID(mread_master_ultra_0_m_axi_ARID),
        .m_axi_ARLEN(mread_master_ultra_0_m_axi_ARLEN),
        .m_axi_ARLOCK(mread_master_ultra_0_m_axi_ARLOCK),
        .m_axi_ARQOS(mread_master_ultra_0_m_axi_ARQOS),
        .m_axi_ARREADY(m_axi_ARREADY_0_1),
        .m_axi_ARREGION(mread_master_ultra_0_m_axi_ARREGION),
        .m_axi_ARSIZE(mread_master_ultra_0_m_axi_ARSIZE),
        .m_axi_ARVALID(mread_master_ultra_0_m_axi_ARVALID),
        .m_axi_RDATA(m_axi_RDATA_0_1),
        .m_axi_RID(m_axi_RID_0_1),
        .m_axi_RLAST(m_axi_RLAST_0_1),
        .m_axi_RREADY(mread_master_ultra_0_m_axi_RREADY),
        .m_axi_RRESP(m_axi_RRESP_0_1),
        .m_axi_RVALID(m_axi_RVALID_0_1),
        .m_axis_tdata(mread_master_ultra_0_m_axis_TDATA),
        .m_axis_tkeep(mread_master_ultra_0_m_axis_TKEEP),
        .m_axis_tlast(mread_master_ultra_0_m_axis_TLAST),
        .m_axis_tready(mread_master_ultra_0_m_axis_TREADY),
        .m_axis_tstrb(mread_master_ultra_0_m_axis_TSTRB),
        .m_axis_tvalid(mread_master_ultra_0_m_axis_TVALID),
        .req_din(req_din_0_1),
        .req_done(mread_master_ultra_0_req_done),
        .req_full_n(mread_master_ultra_0_req_full_n),
        .req_start(step_to_pulse_0_pul_out),
        .req_wr_en(req_wr_en_0_1),
        .rst_n(rst_n_0_1));
  cus_m_axi_s_256_ultra_step_to_pulse_0_0 step_to_pulse_0
       (.clk(clk_0_1),
        .pul_out(step_to_pulse_0_pul_out),
        .step_in(step_in_0_1));
  cus_m_axi_s_256_ultra_step_to_pulse_0_1 step_to_pulse_1
       (.clk(clk_0_1),
        .pul_out(step_to_pulse_1_pul_out),
        .step_in(step_in_0_2));
  cus_m_axi_s_256_ultra_swr_engine_0_0 swr_engine_0
       (.baseAddr(baseAddr_0_1),
        .clk(clk_0_1),
        .ctrl_done(swr_engine_0_req_done),
        .ctrl_start(step_to_pulse_1_pul_out),
        .m_axi_AWADDR(swr_engine_0_m_axi_AWADDR),
        .m_axi_AWID(swr_engine_0_m_axi_AWID),
        .m_axi_AWLEN(swr_engine_0_m_axi_AWLEN),
        .m_axi_AWREADY(m_axi_AWREADY_0_1),
        .m_axi_AWSIZE(swr_engine_0_m_axi_AWSIZE),
        .m_axi_AWVALID(swr_engine_0_m_axi_AWVALID),
        .m_axi_BREADY(swr_engine_0_m_axi_BREADY),
        .m_axi_BVALID(m_axi_BVALID_0_1),
        .m_axi_WDATA(swr_engine_0_m_axi_WDATA),
        .m_axi_WLAST(swr_engine_0_m_axi_WLAST),
        .m_axi_WREADY(m_axi_WREADY_0_1),
        .m_axi_WSTRB(swr_engine_0_m_axi_WSTRB),
        .m_axi_WVALID(swr_engine_0_m_axi_WVALID),
        .req_len(req_len_0_1),
        .rst_n(rst_n_0_1),
        .s_axis_tdata(s_axis_0_1_TDATA),
        .s_axis_tready(s_axis_0_1_TREADY),
        .s_axis_tvalid(s_axis_0_1_TVALID));
endmodule
