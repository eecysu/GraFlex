//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Feb 10 20:11:03 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target cus_m_axi_s_128_ultra_wrapper.bd
//Design      : cus_m_axi_s_128_ultra_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cus_m_axi_s_128_uram
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
  input clk;
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
  input [127:0]m_axi_rdata;
  input [5:0]m_axi_rid;
  input m_axi_rlast;
  output m_axi_rready;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output [127:0]m_axi_wdata;
  output m_axi_wlast;
  input m_axi_wready;
  output [15:0]m_axi_wstrb;
  output m_axi_wvalid;
  output [127:0]m_axis_rd_tdata;
  output [15:0]m_axis_rd_tkeep;
  output m_axis_rd_tlast;
  input m_axis_rd_tready;
  output [15:0]m_axis_rd_tstrb;
  output m_axis_rd_tvalid;
  input [63:0]rd_baseAddr;
  output rd_done;
  input [31:0]rd_req_din;
  output rd_req_full_n;
  input rd_req_wr_en;
  input rd_start;
  input rst_n;
  input [127:0]s_axis_wr_tdata;
  output s_axis_wr_tready;
  input s_axis_wr_tvalid;
  input [63:0]wr_baseAddr;
  output wr_done;
  input [15:0]wr_len;
  input wr_start;

  wire clk;
  wire [63:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [5:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [1:0]m_axi_arlock;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [3:0]m_axi_arregion;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [63:0]m_axi_awaddr;
  wire [5:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire [127:0]m_axi_rdata;
  wire [5:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [127:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [15:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [127:0]m_axis_rd_tdata;
  wire [15:0]m_axis_rd_tkeep;
  wire m_axis_rd_tlast;
  wire m_axis_rd_tready;
  wire [15:0]m_axis_rd_tstrb;
  wire m_axis_rd_tvalid;
  wire [63:0]rd_baseAddr;
  wire rd_done;
  wire [31:0]rd_req_din;
  wire rd_req_full_n;
  wire rd_req_wr_en;
  wire rd_start;
  wire rst_n;
  wire [127:0]s_axis_wr_tdata;
  wire s_axis_wr_tready;
  wire s_axis_wr_tvalid;
  wire [63:0]wr_baseAddr;
  wire wr_done;
  wire [15:0]wr_len;
  wire wr_start;

  cus_m_axi_s_128_ultra cus_m_axi_s_128_ultra_i
       (.clk(clk),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(m_axi_arregion),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_rd_tdata(m_axis_rd_tdata),
        .m_axis_rd_tkeep(m_axis_rd_tkeep),
        .m_axis_rd_tlast(m_axis_rd_tlast),
        .m_axis_rd_tready(m_axis_rd_tready),
        .m_axis_rd_tstrb(m_axis_rd_tstrb),
        .m_axis_rd_tvalid(m_axis_rd_tvalid),
        .rd_baseAddr(rd_baseAddr),
        .rd_done(rd_done),
        .rd_req_din(rd_req_din),
        .rd_req_full_n(rd_req_full_n),
        .rd_req_wr_en(rd_req_wr_en),
        .rd_start(rd_start),
        .rst_n(rst_n),
        .s_axis_wr_tdata(s_axis_wr_tdata),
        .s_axis_wr_tready(s_axis_wr_tready),
        .s_axis_wr_tvalid(s_axis_wr_tvalid),
        .wr_baseAddr(wr_baseAddr),
        .wr_done(wr_done),
        .wr_len(wr_len),
        .wr_start(wr_start));
endmodule
