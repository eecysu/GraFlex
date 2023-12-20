// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:mread_master_ultra:1.0
// IP Revision: 1

(* X_CORE_INFO = "mread_master_ultra,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "cus_m_axi_s_128_ultra_mread_master_ultra_0_0,mread_master_ultra,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module cus_m_axi_s_128_ultra_mread_master_ultra_0_0 (
  clk,
  rst_n,
  baseAddr,
  req_din,
  req_full_n,
  req_wr_en,
  req_start,
  req_done,
  m_axi_ARVALID,
  m_axi_ARLEN,
  m_axi_ARADDR,
  m_axi_ARID,
  m_axi_ARSIZE,
  m_axi_ARBURST,
  m_axi_ARLOCK,
  m_axi_ARCACHE,
  m_axi_ARQOS,
  m_axi_ARREGION,
  m_axi_ARREADY,
  m_axi_RVALID,
  m_axi_RDATA,
  m_axi_RLAST,
  m_axi_RID,
  m_axi_RRESP,
  m_axi_RREADY,
  m_axis_tvalid,
  m_axis_tready,
  m_axis_tlast,
  m_axis_tkeep,
  m_axis_tstrb,
  m_axis_tdata
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *)
input wire rst_n;
input wire [63 : 0] baseAddr;
input wire [31 : 0] req_din;
output wire req_full_n;
input wire req_wr_en;
input wire req_start;
output wire req_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *)
output wire m_axi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *)
output wire [7 : 0] m_axi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *)
output wire [63 : 0] m_axi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *)
output wire [5 : 0] m_axi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *)
output wire [2 : 0] m_axi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *)
output wire [1 : 0] m_axi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *)
output wire [1 : 0] m_axi_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *)
output wire [3 : 0] m_axi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *)
output wire [3 : 0] m_axi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREGION" *)
output wire [3 : 0] m_axi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *)
input wire m_axi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *)
input wire m_axi_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *)
input wire [127 : 0] m_axi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *)
input wire m_axi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *)
input wire [5 : 0] m_axi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *)
input wire [1 : 0] m_axi_RRESP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 0, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, NUM_READ_THREADS 1, NUM_WRITE_T\
HREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *)
output wire m_axi_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *)
output wire [15 : 0] m_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *)
output wire [15 : 0] m_axis_tstrb;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [127 : 0] m_axis_tdata;

  mread_master_ultra #(
    .ADDR_WIDTH(64),
    .DATA_WIDTH(128),
    .ID_WIDTH(6),
    .TUPLE_LEN_WIDTH(4),
    .TUPLE_ADDR_WIDTH(28),
    .C_MAX_OUTSTANDING(16),
    .C_MAX_BURST_LENGTH(16)
  ) inst (
    .clk(clk),
    .rst_n(rst_n),
    .baseAddr(baseAddr),
    .req_din(req_din),
    .req_full_n(req_full_n),
    .req_wr_en(req_wr_en),
    .req_start(req_start),
    .req_done(req_done),
    .m_axi_ARVALID(m_axi_ARVALID),
    .m_axi_ARLEN(m_axi_ARLEN),
    .m_axi_ARADDR(m_axi_ARADDR),
    .m_axi_ARID(m_axi_ARID),
    .m_axi_ARSIZE(m_axi_ARSIZE),
    .m_axi_ARBURST(m_axi_ARBURST),
    .m_axi_ARLOCK(m_axi_ARLOCK),
    .m_axi_ARCACHE(m_axi_ARCACHE),
    .m_axi_ARQOS(m_axi_ARQOS),
    .m_axi_ARREGION(m_axi_ARREGION),
    .m_axi_ARREADY(m_axi_ARREADY),
    .m_axi_RVALID(m_axi_RVALID),
    .m_axi_RDATA(m_axi_RDATA),
    .m_axi_RLAST(m_axi_RLAST),
    .m_axi_RID(m_axi_RID),
    .m_axi_RRESP(m_axi_RRESP),
    .m_axi_RREADY(m_axi_RREADY),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tstrb(m_axis_tstrb),
    .m_axis_tdata(m_axis_tdata)
  );
endmodule
