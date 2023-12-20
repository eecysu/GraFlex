// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri Jan  6 21:44:07 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /Orion/GraphHBM/UTIL_IP/IP_AXI_ENGINE_S/m_axi_128_ultra/cus_m_axi_s_128_ultra.gen/sources_1/bd/cus_m_axi_s_128_ultra/ip/cus_m_axi_s_128_ultra_swr_engine_0_0/cus_m_axi_s_128_ultra_swr_engine_0_0_sim_netlist.v
// Design      : cus_m_axi_s_128_ultra_swr_engine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cus_m_axi_s_128_ultra_swr_engine_0_0,swr_engine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "swr_engine,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module cus_m_axi_s_128_ultra_swr_engine_0_0
   (clk,
    rst_n,
    ctrl_start,
    ctrl_done,
    baseAddr,
    req_len,
    m_axi_AWVALID,
    m_axi_AWREADY,
    m_axi_AWADDR,
    m_axi_AWLEN,
    m_axi_AWSIZE,
    m_axi_AWID,
    m_axi_WVALID,
    m_axi_WREADY,
    m_axi_WDATA,
    m_axi_WSTRB,
    m_axi_WLAST,
    m_axi_BVALID,
    m_axi_BREADY,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input ctrl_start;
  output ctrl_done;
  input [63:0]baseAddr;
  input [15:0]req_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [63:0]m_axi_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [5:0]m_axi_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [127:0]m_axi_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [15:0]m_axi_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]baseAddr;
  wire clk;
  wire ctrl_done;
  wire ctrl_start;
  wire [63:7]\^m_axi_AWADDR ;
  wire [3:0]\^m_axi_AWLEN ;
  wire m_axi_AWREADY;
  wire m_axi_AWVALID;
  wire m_axi_BVALID;
  wire [127:0]m_axi_WDATA;
  wire m_axi_WLAST;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire [15:0]req_len;
  wire rst_n;
  wire [127:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axi_AWADDR[63:7] = \^m_axi_AWADDR [63:7];
  assign m_axi_AWADDR[6] = \<const0> ;
  assign m_axi_AWADDR[5] = \<const0> ;
  assign m_axi_AWADDR[4] = \<const0> ;
  assign m_axi_AWADDR[3] = \<const0> ;
  assign m_axi_AWADDR[2] = \<const0> ;
  assign m_axi_AWADDR[1] = \<const0> ;
  assign m_axi_AWADDR[0] = \<const0> ;
  assign m_axi_AWID[5] = \<const0> ;
  assign m_axi_AWID[4] = \<const0> ;
  assign m_axi_AWID[3] = \<const0> ;
  assign m_axi_AWID[2] = \<const0> ;
  assign m_axi_AWID[1] = \<const0> ;
  assign m_axi_AWID[0] = \<const0> ;
  assign m_axi_AWLEN[7] = \<const0> ;
  assign m_axi_AWLEN[6] = \<const0> ;
  assign m_axi_AWLEN[5] = \<const0> ;
  assign m_axi_AWLEN[4] = \<const0> ;
  assign m_axi_AWLEN[3:0] = \^m_axi_AWLEN [3:0];
  assign m_axi_AWSIZE[2] = \<const1> ;
  assign m_axi_AWSIZE[1] = \<const0> ;
  assign m_axi_AWSIZE[0] = \<const0> ;
  assign m_axi_BREADY = \<const1> ;
  assign m_axi_WSTRB[15] = \<const1> ;
  assign m_axi_WSTRB[14] = \<const1> ;
  assign m_axi_WSTRB[13] = \<const1> ;
  assign m_axi_WSTRB[12] = \<const1> ;
  assign m_axi_WSTRB[11] = \<const1> ;
  assign m_axi_WSTRB[10] = \<const1> ;
  assign m_axi_WSTRB[9] = \<const1> ;
  assign m_axi_WSTRB[8] = \<const1> ;
  assign m_axi_WSTRB[7] = \<const1> ;
  assign m_axi_WSTRB[6] = \<const1> ;
  assign m_axi_WSTRB[5] = \<const1> ;
  assign m_axi_WSTRB[4] = \<const1> ;
  assign m_axi_WSTRB[3] = \<const1> ;
  assign m_axi_WSTRB[2] = \<const1> ;
  assign m_axi_WSTRB[1] = \<const1> ;
  assign m_axi_WSTRB[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  cus_m_axi_s_128_ultra_swr_engine_0_0_swr_engine inst
       (.awvalid_r_reg_0(m_axi_AWVALID),
        .baseAddr(baseAddr[63:8]),
        .clk(clk),
        .ctrl_done(ctrl_done),
        .ctrl_start(ctrl_start),
        .is_zero_r_reg(m_axi_WLAST),
        .m_axi_AWADDR(\^m_axi_AWADDR ),
        .m_axi_AWLEN(\^m_axi_AWLEN ),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_BVALID(m_axi_BVALID),
        .m_axi_WDATA(m_axi_WDATA),
        .m_axi_WREADY(m_axi_WREADY),
        .m_axi_WVALID(m_axi_WVALID),
        .req_len(req_len),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter
   (is_zero_r_reg_0,
    start_reg,
    \count_r_reg[0]_0 ,
    is_zero_r_reg_1,
    \count_r_reg[3]_0 ,
    is_zero_r_reg_2,
    is_zero_r_reg_3,
    \count_r_reg[0]_1 ,
    E,
    is_zero_r_reg_4,
    clk,
    start,
    m_axi_WREADY,
    data_valid,
    w_running,
    Q,
    \count_r_reg[1]_0 ,
    w_running_reg,
    wfirst,
    D);
  output is_zero_r_reg_0;
  output start_reg;
  output [0:0]\count_r_reg[0]_0 ;
  output is_zero_r_reg_1;
  output \count_r_reg[3]_0 ;
  output is_zero_r_reg_2;
  output is_zero_r_reg_3;
  input \count_r_reg[0]_1 ;
  input [0:0]E;
  input is_zero_r_reg_4;
  input clk;
  input start;
  input m_axi_WREADY;
  input data_valid;
  input w_running;
  input [2:0]Q;
  input \count_r_reg[1]_0 ;
  input w_running_reg;
  input wfirst;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clk;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r[2]_i_1_n_0 ;
  wire \count_r[3]_i_1_n_0 ;
  wire [0:0]\count_r_reg[0]_0 ;
  wire \count_r_reg[0]_1 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg[3]_0 ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire data_valid;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_2;
  wire is_zero_r_reg_3;
  wire is_zero_r_reg_4;
  wire m_axi_WREADY;
  wire p_6_in;
  wire start;
  wire start_reg;
  wire w_running;
  wire w_running_reg;
  wire wfirst;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \count_r[0]_i_1__3 
       (.I0(start),
        .I1(m_axi_WREADY),
        .I2(data_valid),
        .I3(w_running),
        .I4(is_zero_r_reg_0),
        .O(start_reg));
  LUT4 #(
    .INIT(16'hB88B)) 
    \count_r[1]_i_1 
       (.I0(Q[0]),
        .I1(\count_r_reg[1]_0 ),
        .I2(\count_r_reg[0]_0 ),
        .I3(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \count_r[2]_i_1 
       (.I0(Q[1]),
        .I1(\count_r_reg[1]_0 ),
        .I2(\count_r_reg_n_0_[2] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg[0]_0 ),
        .O(\count_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \count_r[3]_i_1 
       (.I0(Q[2]),
        .I1(\count_r_reg[1]_0 ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg[0]_0 ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D),
        .Q(\count_r_reg[0]_0 ),
        .S(\count_r_reg[0]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\count_r[1]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(\count_r_reg[0]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\count_r[2]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .S(\count_r_reg[0]_1 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\count_r[3]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .S(\count_r_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    is_zero_r_i_10
       (.I0(m_axi_WREADY),
        .I1(data_valid),
        .I2(w_running),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    is_zero_r_i_21
       (.I0(is_zero_r_reg_0),
        .I1(w_running),
        .I2(data_valid),
        .I3(m_axi_WREADY),
        .O(is_zero_r_reg_1));
  LUT5 #(
    .INIT(32'h00020000)) 
    is_zero_r_i_4__0
       (.I0(p_6_in),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(\count_r_reg_n_0_[2] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg[0]_0 ),
        .O(\count_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(clk),
        .CE(E),
        .D(is_zero_r_reg_4),
        .Q(is_zero_r_reg_0),
        .R(\count_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4CCCCCCC)) 
    w_running_i_1
       (.I0(is_zero_r_reg_0),
        .I1(w_running),
        .I2(data_valid),
        .I3(m_axi_WREADY),
        .I4(w_running_reg),
        .I5(start),
        .O(is_zero_r_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    wfirst_i_1
       (.I0(is_zero_r_reg_0),
        .I1(m_axi_WREADY),
        .I2(data_valid),
        .I3(w_running),
        .I4(wfirst),
        .O(is_zero_r_reg_3));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0
   (rst_n_0,
    start_reg_rep,
    m_axi_AWLEN,
    clk,
    data,
    \count_r_reg[0]_0 ,
    is_zero_r_reg_0,
    Q,
    is_zero_r_i_4__1_0,
    \count_r_reg[0]_1 ,
    m_axi_AWREADY,
    rst_n,
    start);
  output rst_n_0;
  output start_reg_rep;
  output [3:0]m_axi_AWLEN;
  input clk;
  input [13:0]data;
  input \count_r_reg[0]_0 ;
  input is_zero_r_reg_0;
  input [3:0]Q;
  input is_zero_r_i_4__1_0;
  input \count_r_reg[0]_1 ;
  input m_axi_AWREADY;
  input rst_n;
  input start;

  wire [3:0]Q;
  wire clk;
  wire \count_r[0]_i_10__1_n_0 ;
  wire \count_r[0]_i_11__0_n_0 ;
  wire \count_r[0]_i_12__0_n_0 ;
  wire \count_r[0]_i_13__0_n_0 ;
  wire \count_r[0]_i_14__0_n_0 ;
  wire \count_r[0]_i_15__0_n_0 ;
  wire \count_r[0]_i_16__0_n_0 ;
  wire \count_r[0]_i_17__0_n_0 ;
  wire \count_r[0]_i_2_n_0 ;
  wire \count_r[0]_i_3__0_n_0 ;
  wire \count_r[0]_i_4__0_n_0 ;
  wire \count_r[0]_i_5__0_n_0 ;
  wire \count_r[0]_i_6__0_n_0 ;
  wire \count_r[0]_i_7__0_n_0 ;
  wire \count_r[0]_i_8__0_n_0 ;
  wire \count_r[0]_i_9__0_n_0 ;
  wire \count_r[16]_i_10__0_n_0 ;
  wire \count_r[16]_i_11__0_n_0 ;
  wire \count_r[16]_i_12__0_n_0 ;
  wire \count_r[16]_i_13__0_n_0 ;
  wire \count_r[16]_i_14__0_n_0 ;
  wire \count_r[16]_i_15__0_n_0 ;
  wire \count_r[16]_i_16__0_n_0 ;
  wire \count_r[16]_i_17__0_n_0 ;
  wire \count_r[16]_i_2__0_n_0 ;
  wire \count_r[16]_i_3__0_n_0 ;
  wire \count_r[16]_i_4__0_n_0 ;
  wire \count_r[16]_i_5__0_n_0 ;
  wire \count_r[16]_i_6__0_n_0 ;
  wire \count_r[16]_i_7__0_n_0 ;
  wire \count_r[16]_i_8__0_n_0 ;
  wire \count_r[16]_i_9__0_n_0 ;
  wire \count_r[24]_i_10__0_n_0 ;
  wire \count_r[24]_i_11__0_n_0 ;
  wire \count_r[24]_i_12__0_n_0 ;
  wire \count_r[24]_i_13__0_n_0 ;
  wire \count_r[24]_i_14__0_n_0 ;
  wire \count_r[24]_i_15__0_n_0 ;
  wire \count_r[24]_i_16__0_n_0 ;
  wire \count_r[24]_i_17__0_n_0 ;
  wire \count_r[24]_i_2__0_n_0 ;
  wire \count_r[24]_i_3__0_n_0 ;
  wire \count_r[24]_i_4__0_n_0 ;
  wire \count_r[24]_i_5__0_n_0 ;
  wire \count_r[24]_i_6__0_n_0 ;
  wire \count_r[24]_i_7__0_n_0 ;
  wire \count_r[24]_i_8__0_n_0 ;
  wire \count_r[24]_i_9__0_n_0 ;
  wire \count_r[32]_i_10__0_n_0 ;
  wire \count_r[32]_i_11__0_n_0 ;
  wire \count_r[32]_i_12__0_n_0 ;
  wire \count_r[32]_i_13__0_n_0 ;
  wire \count_r[32]_i_14__0_n_0 ;
  wire \count_r[32]_i_15__0_n_0 ;
  wire \count_r[32]_i_16__0_n_0 ;
  wire \count_r[32]_i_17__0_n_0 ;
  wire \count_r[32]_i_2__0_n_0 ;
  wire \count_r[32]_i_3__0_n_0 ;
  wire \count_r[32]_i_4__0_n_0 ;
  wire \count_r[32]_i_5__0_n_0 ;
  wire \count_r[32]_i_6__0_n_0 ;
  wire \count_r[32]_i_7__0_n_0 ;
  wire \count_r[32]_i_8__0_n_0 ;
  wire \count_r[32]_i_9__0_n_0 ;
  wire \count_r[40]_i_10__0_n_0 ;
  wire \count_r[40]_i_11__0_n_0 ;
  wire \count_r[40]_i_12__0_n_0 ;
  wire \count_r[40]_i_13__0_n_0 ;
  wire \count_r[40]_i_14__0_n_0 ;
  wire \count_r[40]_i_15__0_n_0 ;
  wire \count_r[40]_i_16__0_n_0 ;
  wire \count_r[40]_i_17__0_n_0 ;
  wire \count_r[40]_i_2__0_n_0 ;
  wire \count_r[40]_i_3__0_n_0 ;
  wire \count_r[40]_i_4__0_n_0 ;
  wire \count_r[40]_i_5__0_n_0 ;
  wire \count_r[40]_i_6__0_n_0 ;
  wire \count_r[40]_i_7__0_n_0 ;
  wire \count_r[40]_i_8__0_n_0 ;
  wire \count_r[40]_i_9__0_n_0 ;
  wire \count_r[48]_i_10__0_n_0 ;
  wire \count_r[48]_i_11__0_n_0 ;
  wire \count_r[48]_i_12__0_n_0 ;
  wire \count_r[48]_i_13__0_n_0 ;
  wire \count_r[48]_i_14__0_n_0 ;
  wire \count_r[48]_i_15__0_n_0 ;
  wire \count_r[48]_i_16__0_n_0 ;
  wire \count_r[48]_i_2__1_n_0 ;
  wire \count_r[48]_i_3__0_n_0 ;
  wire \count_r[48]_i_4__0_n_0 ;
  wire \count_r[48]_i_5__0_n_0 ;
  wire \count_r[48]_i_6__0_n_0 ;
  wire \count_r[48]_i_7__0_n_0 ;
  wire \count_r[48]_i_8__0_n_0 ;
  wire \count_r[48]_i_9__1_n_0 ;
  wire \count_r[8]_i_10__0_n_0 ;
  wire \count_r[8]_i_11__0_n_0 ;
  wire \count_r[8]_i_12__0_n_0 ;
  wire \count_r[8]_i_13__0_n_0 ;
  wire \count_r[8]_i_14__0_n_0 ;
  wire \count_r[8]_i_15__0_n_0 ;
  wire \count_r[8]_i_16__0_n_0 ;
  wire \count_r[8]_i_17__0_n_0 ;
  wire \count_r[8]_i_2__0_n_0 ;
  wire \count_r[8]_i_3__0_n_0 ;
  wire \count_r[8]_i_4__0_n_0 ;
  wire \count_r[8]_i_5__0_n_0 ;
  wire \count_r[8]_i_6__0_n_0 ;
  wire \count_r[8]_i_7__0_n_0 ;
  wire \count_r[8]_i_8__0_n_0 ;
  wire \count_r[8]_i_9__0_n_0 ;
  wire [55:0]count_r_reg;
  wire \count_r_reg[0]_0 ;
  wire \count_r_reg[0]_1 ;
  wire \count_r_reg[0]_i_1_n_0 ;
  wire \count_r_reg[0]_i_1_n_1 ;
  wire \count_r_reg[0]_i_1_n_10 ;
  wire \count_r_reg[0]_i_1_n_11 ;
  wire \count_r_reg[0]_i_1_n_12 ;
  wire \count_r_reg[0]_i_1_n_13 ;
  wire \count_r_reg[0]_i_1_n_14 ;
  wire \count_r_reg[0]_i_1_n_15 ;
  wire \count_r_reg[0]_i_1_n_2 ;
  wire \count_r_reg[0]_i_1_n_3 ;
  wire \count_r_reg[0]_i_1_n_4 ;
  wire \count_r_reg[0]_i_1_n_5 ;
  wire \count_r_reg[0]_i_1_n_6 ;
  wire \count_r_reg[0]_i_1_n_7 ;
  wire \count_r_reg[0]_i_1_n_8 ;
  wire \count_r_reg[0]_i_1_n_9 ;
  wire \count_r_reg[16]_i_1__0_n_0 ;
  wire \count_r_reg[16]_i_1__0_n_1 ;
  wire \count_r_reg[16]_i_1__0_n_10 ;
  wire \count_r_reg[16]_i_1__0_n_11 ;
  wire \count_r_reg[16]_i_1__0_n_12 ;
  wire \count_r_reg[16]_i_1__0_n_13 ;
  wire \count_r_reg[16]_i_1__0_n_14 ;
  wire \count_r_reg[16]_i_1__0_n_15 ;
  wire \count_r_reg[16]_i_1__0_n_2 ;
  wire \count_r_reg[16]_i_1__0_n_3 ;
  wire \count_r_reg[16]_i_1__0_n_4 ;
  wire \count_r_reg[16]_i_1__0_n_5 ;
  wire \count_r_reg[16]_i_1__0_n_6 ;
  wire \count_r_reg[16]_i_1__0_n_7 ;
  wire \count_r_reg[16]_i_1__0_n_8 ;
  wire \count_r_reg[16]_i_1__0_n_9 ;
  wire \count_r_reg[24]_i_1__0_n_0 ;
  wire \count_r_reg[24]_i_1__0_n_1 ;
  wire \count_r_reg[24]_i_1__0_n_10 ;
  wire \count_r_reg[24]_i_1__0_n_11 ;
  wire \count_r_reg[24]_i_1__0_n_12 ;
  wire \count_r_reg[24]_i_1__0_n_13 ;
  wire \count_r_reg[24]_i_1__0_n_14 ;
  wire \count_r_reg[24]_i_1__0_n_15 ;
  wire \count_r_reg[24]_i_1__0_n_2 ;
  wire \count_r_reg[24]_i_1__0_n_3 ;
  wire \count_r_reg[24]_i_1__0_n_4 ;
  wire \count_r_reg[24]_i_1__0_n_5 ;
  wire \count_r_reg[24]_i_1__0_n_6 ;
  wire \count_r_reg[24]_i_1__0_n_7 ;
  wire \count_r_reg[24]_i_1__0_n_8 ;
  wire \count_r_reg[24]_i_1__0_n_9 ;
  wire \count_r_reg[32]_i_1__0_n_0 ;
  wire \count_r_reg[32]_i_1__0_n_1 ;
  wire \count_r_reg[32]_i_1__0_n_10 ;
  wire \count_r_reg[32]_i_1__0_n_11 ;
  wire \count_r_reg[32]_i_1__0_n_12 ;
  wire \count_r_reg[32]_i_1__0_n_13 ;
  wire \count_r_reg[32]_i_1__0_n_14 ;
  wire \count_r_reg[32]_i_1__0_n_15 ;
  wire \count_r_reg[32]_i_1__0_n_2 ;
  wire \count_r_reg[32]_i_1__0_n_3 ;
  wire \count_r_reg[32]_i_1__0_n_4 ;
  wire \count_r_reg[32]_i_1__0_n_5 ;
  wire \count_r_reg[32]_i_1__0_n_6 ;
  wire \count_r_reg[32]_i_1__0_n_7 ;
  wire \count_r_reg[32]_i_1__0_n_8 ;
  wire \count_r_reg[32]_i_1__0_n_9 ;
  wire \count_r_reg[40]_i_1__0_n_0 ;
  wire \count_r_reg[40]_i_1__0_n_1 ;
  wire \count_r_reg[40]_i_1__0_n_10 ;
  wire \count_r_reg[40]_i_1__0_n_11 ;
  wire \count_r_reg[40]_i_1__0_n_12 ;
  wire \count_r_reg[40]_i_1__0_n_13 ;
  wire \count_r_reg[40]_i_1__0_n_14 ;
  wire \count_r_reg[40]_i_1__0_n_15 ;
  wire \count_r_reg[40]_i_1__0_n_2 ;
  wire \count_r_reg[40]_i_1__0_n_3 ;
  wire \count_r_reg[40]_i_1__0_n_4 ;
  wire \count_r_reg[40]_i_1__0_n_5 ;
  wire \count_r_reg[40]_i_1__0_n_6 ;
  wire \count_r_reg[40]_i_1__0_n_7 ;
  wire \count_r_reg[40]_i_1__0_n_8 ;
  wire \count_r_reg[40]_i_1__0_n_9 ;
  wire \count_r_reg[48]_i_1__0_n_1 ;
  wire \count_r_reg[48]_i_1__0_n_10 ;
  wire \count_r_reg[48]_i_1__0_n_11 ;
  wire \count_r_reg[48]_i_1__0_n_12 ;
  wire \count_r_reg[48]_i_1__0_n_13 ;
  wire \count_r_reg[48]_i_1__0_n_14 ;
  wire \count_r_reg[48]_i_1__0_n_15 ;
  wire \count_r_reg[48]_i_1__0_n_2 ;
  wire \count_r_reg[48]_i_1__0_n_3 ;
  wire \count_r_reg[48]_i_1__0_n_4 ;
  wire \count_r_reg[48]_i_1__0_n_5 ;
  wire \count_r_reg[48]_i_1__0_n_6 ;
  wire \count_r_reg[48]_i_1__0_n_7 ;
  wire \count_r_reg[48]_i_1__0_n_8 ;
  wire \count_r_reg[48]_i_1__0_n_9 ;
  wire \count_r_reg[8]_i_1__0_n_0 ;
  wire \count_r_reg[8]_i_1__0_n_1 ;
  wire \count_r_reg[8]_i_1__0_n_10 ;
  wire \count_r_reg[8]_i_1__0_n_11 ;
  wire \count_r_reg[8]_i_1__0_n_12 ;
  wire \count_r_reg[8]_i_1__0_n_13 ;
  wire \count_r_reg[8]_i_1__0_n_14 ;
  wire \count_r_reg[8]_i_1__0_n_15 ;
  wire \count_r_reg[8]_i_1__0_n_2 ;
  wire \count_r_reg[8]_i_1__0_n_3 ;
  wire \count_r_reg[8]_i_1__0_n_4 ;
  wire \count_r_reg[8]_i_1__0_n_5 ;
  wire \count_r_reg[8]_i_1__0_n_6 ;
  wire \count_r_reg[8]_i_1__0_n_7 ;
  wire \count_r_reg[8]_i_1__0_n_8 ;
  wire \count_r_reg[8]_i_1__0_n_9 ;
  wire [13:0]data;
  wire is_zero_r_i_10__0_n_0;
  wire is_zero_r_i_11__1_n_0;
  wire is_zero_r_i_12__1_n_0;
  wire is_zero_r_i_13__1_n_0;
  wire is_zero_r_i_14__1_n_0;
  wire is_zero_r_i_15__1_n_0;
  wire is_zero_r_i_16__0_n_0;
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_i_2__3_n_0;
  wire is_zero_r_i_3__2_n_0;
  wire is_zero_r_i_4__1_0;
  wire is_zero_r_i_4__1_n_0;
  wire is_zero_r_i_5__1_n_0;
  wire is_zero_r_i_6__1_n_0;
  wire is_zero_r_i_7__1_n_0;
  wire is_zero_r_i_8__1_n_0;
  wire is_zero_r_i_9__1_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_n_0;
  wire [3:0]m_axi_AWLEN;
  wire m_axi_AWREADY;
  wire rst_n;
  wire rst_n_0;
  wire start;
  wire start_reg_rep;
  wire [7:7]\NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hEA)) 
    \addr[63]_i_1 
       (.I0(\count_r_reg[0]_0 ),
        .I1(\count_r_reg[0]_1 ),
        .I2(m_axi_AWREADY),
        .O(start_reg_rep));
  LUT1 #(
    .INIT(2'h1)) 
    awvalid_r_i_1
       (.I0(rst_n),
        .O(rst_n_0));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_10__1 
       (.I0(count_r_reg[7]),
        .I1(data[7]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11__0 
       (.I0(count_r_reg[6]),
        .I1(data[6]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12__0 
       (.I0(count_r_reg[5]),
        .I1(data[5]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13__0 
       (.I0(count_r_reg[4]),
        .I1(data[4]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14__0 
       (.I0(count_r_reg[3]),
        .I1(data[3]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15__0 
       (.I0(count_r_reg[2]),
        .I1(data[2]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16__0 
       (.I0(count_r_reg[1]),
        .I1(data[1]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17__0 
       (.I0(count_r_reg[0]),
        .I1(data[0]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_2 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[0]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10__0 
       (.I0(count_r_reg[23]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11__0 
       (.I0(count_r_reg[22]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12__0 
       (.I0(count_r_reg[21]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13__0 
       (.I0(count_r_reg[20]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14__0 
       (.I0(count_r_reg[19]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15__0 
       (.I0(count_r_reg[18]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16__0 
       (.I0(count_r_reg[17]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_17__0 
       (.I0(count_r_reg[16]),
        .I1(data[12]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[16]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_10__0 
       (.I0(count_r_reg[31]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_11__0 
       (.I0(count_r_reg[30]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_12__0 
       (.I0(count_r_reg[29]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_13__0 
       (.I0(count_r_reg[28]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_14__0 
       (.I0(count_r_reg[27]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_15__0 
       (.I0(count_r_reg[26]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_16__0 
       (.I0(count_r_reg[25]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_17__0 
       (.I0(count_r_reg[24]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_2__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[24]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_10__0 
       (.I0(count_r_reg[39]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_11__0 
       (.I0(count_r_reg[38]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_12__0 
       (.I0(count_r_reg[37]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_13__0 
       (.I0(count_r_reg[36]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_14__0 
       (.I0(count_r_reg[35]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_15__0 
       (.I0(count_r_reg[34]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_16__0 
       (.I0(count_r_reg[33]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_17__0 
       (.I0(count_r_reg[32]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_2__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[32]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_10__0 
       (.I0(count_r_reg[47]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_11__0 
       (.I0(count_r_reg[46]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_12__0 
       (.I0(count_r_reg[45]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_13__0 
       (.I0(count_r_reg[44]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_14__0 
       (.I0(count_r_reg[43]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_15__0 
       (.I0(count_r_reg[42]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_16__0 
       (.I0(count_r_reg[41]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_17__0 
       (.I0(count_r_reg[40]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_2__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[40]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_10__0 
       (.I0(count_r_reg[54]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_11__0 
       (.I0(count_r_reg[53]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_12__0 
       (.I0(count_r_reg[52]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_13__0 
       (.I0(count_r_reg[51]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_14__0 
       (.I0(count_r_reg[50]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_15__0 
       (.I0(count_r_reg[49]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_16__0 
       (.I0(count_r_reg[48]),
        .I1(data[13]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_16__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_2__1 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[48]_i_9__1 
       (.I0(data[13]),
        .I1(count_r_reg[55]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[48]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10__0 
       (.I0(count_r_reg[15]),
        .I1(data[12]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11__0 
       (.I0(count_r_reg[14]),
        .I1(data[12]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_11__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12__0 
       (.I0(count_r_reg[13]),
        .I1(data[12]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_12__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13__0 
       (.I0(count_r_reg[12]),
        .I1(data[12]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_13__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14__0 
       (.I0(count_r_reg[11]),
        .I1(data[11]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15__0 
       (.I0(count_r_reg[10]),
        .I1(data[10]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_15__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16__0 
       (.I0(count_r_reg[9]),
        .I1(data[9]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_16__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17__0 
       (.I0(count_r_reg[8]),
        .I1(data[8]),
        .I2(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_17__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__0 
       (.I0(\count_r_reg[0]_0 ),
        .O(\count_r[8]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_15 ),
        .Q(count_r_reg[0]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_1_n_0 ,\count_r_reg[0]_i_1_n_1 ,\count_r_reg[0]_i_1_n_2 ,\count_r_reg[0]_i_1_n_3 ,\count_r_reg[0]_i_1_n_4 ,\count_r_reg[0]_i_1_n_5 ,\count_r_reg[0]_i_1_n_6 ,\count_r_reg[0]_i_1_n_7 }),
        .DI({\count_r[0]_i_2_n_0 ,\count_r[0]_i_3__0_n_0 ,\count_r[0]_i_4__0_n_0 ,\count_r[0]_i_5__0_n_0 ,\count_r[0]_i_6__0_n_0 ,\count_r[0]_i_7__0_n_0 ,\count_r[0]_i_8__0_n_0 ,\count_r[0]_i_9__0_n_0 }),
        .O({\count_r_reg[0]_i_1_n_8 ,\count_r_reg[0]_i_1_n_9 ,\count_r_reg[0]_i_1_n_10 ,\count_r_reg[0]_i_1_n_11 ,\count_r_reg[0]_i_1_n_12 ,\count_r_reg[0]_i_1_n_13 ,\count_r_reg[0]_i_1_n_14 ,\count_r_reg[0]_i_1_n_15 }),
        .S({\count_r[0]_i_10__1_n_0 ,\count_r[0]_i_11__0_n_0 ,\count_r[0]_i_12__0_n_0 ,\count_r[0]_i_13__0_n_0 ,\count_r[0]_i_14__0_n_0 ,\count_r[0]_i_15__0_n_0 ,\count_r[0]_i_16__0_n_0 ,\count_r[0]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_13 ),
        .Q(count_r_reg[10]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_12 ),
        .Q(count_r_reg[11]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_11 ),
        .Q(count_r_reg[12]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_10 ),
        .Q(count_r_reg[13]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_9 ),
        .Q(count_r_reg[14]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_8 ),
        .Q(count_r_reg[15]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_15 ),
        .Q(count_r_reg[16]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__0 
       (.CI(\count_r_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[16]_i_1__0_n_0 ,\count_r_reg[16]_i_1__0_n_1 ,\count_r_reg[16]_i_1__0_n_2 ,\count_r_reg[16]_i_1__0_n_3 ,\count_r_reg[16]_i_1__0_n_4 ,\count_r_reg[16]_i_1__0_n_5 ,\count_r_reg[16]_i_1__0_n_6 ,\count_r_reg[16]_i_1__0_n_7 }),
        .DI({\count_r[16]_i_2__0_n_0 ,\count_r[16]_i_3__0_n_0 ,\count_r[16]_i_4__0_n_0 ,\count_r[16]_i_5__0_n_0 ,\count_r[16]_i_6__0_n_0 ,\count_r[16]_i_7__0_n_0 ,\count_r[16]_i_8__0_n_0 ,\count_r[16]_i_9__0_n_0 }),
        .O({\count_r_reg[16]_i_1__0_n_8 ,\count_r_reg[16]_i_1__0_n_9 ,\count_r_reg[16]_i_1__0_n_10 ,\count_r_reg[16]_i_1__0_n_11 ,\count_r_reg[16]_i_1__0_n_12 ,\count_r_reg[16]_i_1__0_n_13 ,\count_r_reg[16]_i_1__0_n_14 ,\count_r_reg[16]_i_1__0_n_15 }),
        .S({\count_r[16]_i_10__0_n_0 ,\count_r[16]_i_11__0_n_0 ,\count_r[16]_i_12__0_n_0 ,\count_r[16]_i_13__0_n_0 ,\count_r[16]_i_14__0_n_0 ,\count_r[16]_i_15__0_n_0 ,\count_r[16]_i_16__0_n_0 ,\count_r[16]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_14 ),
        .Q(count_r_reg[17]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_13 ),
        .Q(count_r_reg[18]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_12 ),
        .Q(count_r_reg[19]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_14 ),
        .Q(count_r_reg[1]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_11 ),
        .Q(count_r_reg[20]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_10 ),
        .Q(count_r_reg[21]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_9 ),
        .Q(count_r_reg[22]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_8 ),
        .Q(count_r_reg[23]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_15 ),
        .Q(count_r_reg[24]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[24]_i_1__0 
       (.CI(\count_r_reg[16]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[24]_i_1__0_n_0 ,\count_r_reg[24]_i_1__0_n_1 ,\count_r_reg[24]_i_1__0_n_2 ,\count_r_reg[24]_i_1__0_n_3 ,\count_r_reg[24]_i_1__0_n_4 ,\count_r_reg[24]_i_1__0_n_5 ,\count_r_reg[24]_i_1__0_n_6 ,\count_r_reg[24]_i_1__0_n_7 }),
        .DI({\count_r[24]_i_2__0_n_0 ,\count_r[24]_i_3__0_n_0 ,\count_r[24]_i_4__0_n_0 ,\count_r[24]_i_5__0_n_0 ,\count_r[24]_i_6__0_n_0 ,\count_r[24]_i_7__0_n_0 ,\count_r[24]_i_8__0_n_0 ,\count_r[24]_i_9__0_n_0 }),
        .O({\count_r_reg[24]_i_1__0_n_8 ,\count_r_reg[24]_i_1__0_n_9 ,\count_r_reg[24]_i_1__0_n_10 ,\count_r_reg[24]_i_1__0_n_11 ,\count_r_reg[24]_i_1__0_n_12 ,\count_r_reg[24]_i_1__0_n_13 ,\count_r_reg[24]_i_1__0_n_14 ,\count_r_reg[24]_i_1__0_n_15 }),
        .S({\count_r[24]_i_10__0_n_0 ,\count_r[24]_i_11__0_n_0 ,\count_r[24]_i_12__0_n_0 ,\count_r[24]_i_13__0_n_0 ,\count_r[24]_i_14__0_n_0 ,\count_r[24]_i_15__0_n_0 ,\count_r[24]_i_16__0_n_0 ,\count_r[24]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[25] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_14 ),
        .Q(count_r_reg[25]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_13 ),
        .Q(count_r_reg[26]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_12 ),
        .Q(count_r_reg[27]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_11 ),
        .Q(count_r_reg[28]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_10 ),
        .Q(count_r_reg[29]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_13 ),
        .Q(count_r_reg[2]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_9 ),
        .Q(count_r_reg[30]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_8 ),
        .Q(count_r_reg[31]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_15 ),
        .Q(count_r_reg[32]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[32]_i_1__0 
       (.CI(\count_r_reg[24]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[32]_i_1__0_n_0 ,\count_r_reg[32]_i_1__0_n_1 ,\count_r_reg[32]_i_1__0_n_2 ,\count_r_reg[32]_i_1__0_n_3 ,\count_r_reg[32]_i_1__0_n_4 ,\count_r_reg[32]_i_1__0_n_5 ,\count_r_reg[32]_i_1__0_n_6 ,\count_r_reg[32]_i_1__0_n_7 }),
        .DI({\count_r[32]_i_2__0_n_0 ,\count_r[32]_i_3__0_n_0 ,\count_r[32]_i_4__0_n_0 ,\count_r[32]_i_5__0_n_0 ,\count_r[32]_i_6__0_n_0 ,\count_r[32]_i_7__0_n_0 ,\count_r[32]_i_8__0_n_0 ,\count_r[32]_i_9__0_n_0 }),
        .O({\count_r_reg[32]_i_1__0_n_8 ,\count_r_reg[32]_i_1__0_n_9 ,\count_r_reg[32]_i_1__0_n_10 ,\count_r_reg[32]_i_1__0_n_11 ,\count_r_reg[32]_i_1__0_n_12 ,\count_r_reg[32]_i_1__0_n_13 ,\count_r_reg[32]_i_1__0_n_14 ,\count_r_reg[32]_i_1__0_n_15 }),
        .S({\count_r[32]_i_10__0_n_0 ,\count_r[32]_i_11__0_n_0 ,\count_r[32]_i_12__0_n_0 ,\count_r[32]_i_13__0_n_0 ,\count_r[32]_i_14__0_n_0 ,\count_r[32]_i_15__0_n_0 ,\count_r[32]_i_16__0_n_0 ,\count_r[32]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[33] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_14 ),
        .Q(count_r_reg[33]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_13 ),
        .Q(count_r_reg[34]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_12 ),
        .Q(count_r_reg[35]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_11 ),
        .Q(count_r_reg[36]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_10 ),
        .Q(count_r_reg[37]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_9 ),
        .Q(count_r_reg[38]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_8 ),
        .Q(count_r_reg[39]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_12 ),
        .Q(count_r_reg[3]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_15 ),
        .Q(count_r_reg[40]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[40]_i_1__0 
       (.CI(\count_r_reg[32]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[40]_i_1__0_n_0 ,\count_r_reg[40]_i_1__0_n_1 ,\count_r_reg[40]_i_1__0_n_2 ,\count_r_reg[40]_i_1__0_n_3 ,\count_r_reg[40]_i_1__0_n_4 ,\count_r_reg[40]_i_1__0_n_5 ,\count_r_reg[40]_i_1__0_n_6 ,\count_r_reg[40]_i_1__0_n_7 }),
        .DI({\count_r[40]_i_2__0_n_0 ,\count_r[40]_i_3__0_n_0 ,\count_r[40]_i_4__0_n_0 ,\count_r[40]_i_5__0_n_0 ,\count_r[40]_i_6__0_n_0 ,\count_r[40]_i_7__0_n_0 ,\count_r[40]_i_8__0_n_0 ,\count_r[40]_i_9__0_n_0 }),
        .O({\count_r_reg[40]_i_1__0_n_8 ,\count_r_reg[40]_i_1__0_n_9 ,\count_r_reg[40]_i_1__0_n_10 ,\count_r_reg[40]_i_1__0_n_11 ,\count_r_reg[40]_i_1__0_n_12 ,\count_r_reg[40]_i_1__0_n_13 ,\count_r_reg[40]_i_1__0_n_14 ,\count_r_reg[40]_i_1__0_n_15 }),
        .S({\count_r[40]_i_10__0_n_0 ,\count_r[40]_i_11__0_n_0 ,\count_r[40]_i_12__0_n_0 ,\count_r[40]_i_13__0_n_0 ,\count_r[40]_i_14__0_n_0 ,\count_r[40]_i_15__0_n_0 ,\count_r[40]_i_16__0_n_0 ,\count_r[40]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[41] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_14 ),
        .Q(count_r_reg[41]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_13 ),
        .Q(count_r_reg[42]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_12 ),
        .Q(count_r_reg[43]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_11 ),
        .Q(count_r_reg[44]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_10 ),
        .Q(count_r_reg[45]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_9 ),
        .Q(count_r_reg[46]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_8 ),
        .Q(count_r_reg[47]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_15 ),
        .Q(count_r_reg[48]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[48]_i_1__0 
       (.CI(\count_r_reg[40]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED [7],\count_r_reg[48]_i_1__0_n_1 ,\count_r_reg[48]_i_1__0_n_2 ,\count_r_reg[48]_i_1__0_n_3 ,\count_r_reg[48]_i_1__0_n_4 ,\count_r_reg[48]_i_1__0_n_5 ,\count_r_reg[48]_i_1__0_n_6 ,\count_r_reg[48]_i_1__0_n_7 }),
        .DI({1'b0,\count_r[48]_i_2__1_n_0 ,\count_r[48]_i_3__0_n_0 ,\count_r[48]_i_4__0_n_0 ,\count_r[48]_i_5__0_n_0 ,\count_r[48]_i_6__0_n_0 ,\count_r[48]_i_7__0_n_0 ,\count_r[48]_i_8__0_n_0 }),
        .O({\count_r_reg[48]_i_1__0_n_8 ,\count_r_reg[48]_i_1__0_n_9 ,\count_r_reg[48]_i_1__0_n_10 ,\count_r_reg[48]_i_1__0_n_11 ,\count_r_reg[48]_i_1__0_n_12 ,\count_r_reg[48]_i_1__0_n_13 ,\count_r_reg[48]_i_1__0_n_14 ,\count_r_reg[48]_i_1__0_n_15 }),
        .S({\count_r[48]_i_9__1_n_0 ,\count_r[48]_i_10__0_n_0 ,\count_r[48]_i_11__0_n_0 ,\count_r[48]_i_12__0_n_0 ,\count_r[48]_i_13__0_n_0 ,\count_r[48]_i_14__0_n_0 ,\count_r[48]_i_15__0_n_0 ,\count_r[48]_i_16__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[49] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_14 ),
        .Q(count_r_reg[49]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_11 ),
        .Q(count_r_reg[4]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_13 ),
        .Q(count_r_reg[50]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_12 ),
        .Q(count_r_reg[51]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_11 ),
        .Q(count_r_reg[52]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_10 ),
        .Q(count_r_reg[53]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_9 ),
        .Q(count_r_reg[54]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_8 ),
        .Q(count_r_reg[55]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_10 ),
        .Q(count_r_reg[5]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_9 ),
        .Q(count_r_reg[6]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_8 ),
        .Q(count_r_reg[7]),
        .R(rst_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_15 ),
        .Q(count_r_reg[8]),
        .R(rst_n_0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__0 
       (.CI(\count_r_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__0_n_0 ,\count_r_reg[8]_i_1__0_n_1 ,\count_r_reg[8]_i_1__0_n_2 ,\count_r_reg[8]_i_1__0_n_3 ,\count_r_reg[8]_i_1__0_n_4 ,\count_r_reg[8]_i_1__0_n_5 ,\count_r_reg[8]_i_1__0_n_6 ,\count_r_reg[8]_i_1__0_n_7 }),
        .DI({\count_r[8]_i_2__0_n_0 ,\count_r[8]_i_3__0_n_0 ,\count_r[8]_i_4__0_n_0 ,\count_r[8]_i_5__0_n_0 ,\count_r[8]_i_6__0_n_0 ,\count_r[8]_i_7__0_n_0 ,\count_r[8]_i_8__0_n_0 ,\count_r[8]_i_9__0_n_0 }),
        .O({\count_r_reg[8]_i_1__0_n_8 ,\count_r_reg[8]_i_1__0_n_9 ,\count_r_reg[8]_i_1__0_n_10 ,\count_r_reg[8]_i_1__0_n_11 ,\count_r_reg[8]_i_1__0_n_12 ,\count_r_reg[8]_i_1__0_n_13 ,\count_r_reg[8]_i_1__0_n_14 ,\count_r_reg[8]_i_1__0_n_15 }),
        .S({\count_r[8]_i_10__0_n_0 ,\count_r[8]_i_11__0_n_0 ,\count_r[8]_i_12__0_n_0 ,\count_r[8]_i_13__0_n_0 ,\count_r[8]_i_14__0_n_0 ,\count_r[8]_i_15__0_n_0 ,\count_r[8]_i_16__0_n_0 ,\count_r[8]_i_17__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_14 ),
        .Q(count_r_reg[9]),
        .R(rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    is_zero_r_i_10__0
       (.I0(count_r_reg[28]),
        .I1(count_r_reg[45]),
        .I2(count_r_reg[27]),
        .I3(count_r_reg[38]),
        .I4(is_zero_r_i_4__1_0),
        .I5(is_zero_r_i_16__0_n_0),
        .O(is_zero_r_i_10__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_11__1
       (.I0(count_r_reg[29]),
        .I1(count_r_reg[5]),
        .I2(count_r_reg[53]),
        .I3(count_r_reg[4]),
        .O(is_zero_r_i_11__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_12__1
       (.I0(count_r_reg[16]),
        .I1(count_r_reg[10]),
        .I2(count_r_reg[19]),
        .I3(count_r_reg[15]),
        .O(is_zero_r_i_12__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_13__1
       (.I0(count_r_reg[51]),
        .I1(count_r_reg[24]),
        .I2(count_r_reg[47]),
        .I3(count_r_reg[44]),
        .O(is_zero_r_i_13__1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    is_zero_r_i_14__1
       (.I0(count_r_reg[43]),
        .I1(count_r_reg[21]),
        .I2(count_r_reg[0]),
        .I3(count_r_reg[40]),
        .O(is_zero_r_i_14__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_15__1
       (.I0(count_r_reg[37]),
        .I1(count_r_reg[2]),
        .I2(count_r_reg[46]),
        .I3(count_r_reg[41]),
        .O(is_zero_r_i_15__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    is_zero_r_i_16__0
       (.I0(start),
        .I1(count_r_reg[55]),
        .O(is_zero_r_i_16__0_n_0));
  LUT4 #(
    .INIT(16'hAABA)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_reg_0),
        .I1(is_zero_r_i_2__3_n_0),
        .I2(is_zero_r_i_3__2_n_0),
        .I3(is_zero_r_i_4__1_n_0),
        .O(is_zero_r_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_2__3
       (.I0(is_zero_r_i_5__1_n_0),
        .I1(count_r_reg[34]),
        .I2(count_r_reg[31]),
        .I3(count_r_reg[30]),
        .I4(is_zero_r_i_6__1_n_0),
        .I5(is_zero_r_i_7__1_n_0),
        .O(is_zero_r_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_3__2
       (.I0(is_zero_r_i_8__1_n_0),
        .I1(count_r_reg[14]),
        .I2(count_r_reg[12]),
        .I3(count_r_reg[50]),
        .I4(count_r_reg[1]),
        .I5(is_zero_r_i_9__1_n_0),
        .O(is_zero_r_i_3__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_4__1
       (.I0(is_zero_r_i_10__0_n_0),
        .I1(is_zero_r_i_11__1_n_0),
        .I2(count_r_reg[54]),
        .I3(count_r_reg[42]),
        .I4(count_r_reg[11]),
        .I5(count_r_reg[6]),
        .O(is_zero_r_i_4__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_5__1
       (.I0(count_r_reg[20]),
        .I1(count_r_reg[36]),
        .I2(count_r_reg[18]),
        .I3(count_r_reg[32]),
        .I4(is_zero_r_i_12__1_n_0),
        .O(is_zero_r_i_5__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_6__1
       (.I0(count_r_reg[8]),
        .I1(count_r_reg[13]),
        .I2(count_r_reg[9]),
        .I3(count_r_reg[17]),
        .I4(is_zero_r_i_13__1_n_0),
        .O(is_zero_r_i_6__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_7__1
       (.I0(count_r_reg[35]),
        .I1(count_r_reg[52]),
        .I2(count_r_reg[22]),
        .I3(count_r_reg[33]),
        .I4(is_zero_r_i_14__1_n_0),
        .O(is_zero_r_i_7__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_8__1
       (.I0(count_r_reg[48]),
        .I1(count_r_reg[3]),
        .I2(count_r_reg[25]),
        .I3(count_r_reg[7]),
        .O(is_zero_r_i_8__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_9__1
       (.I0(count_r_reg[23]),
        .I1(count_r_reg[49]),
        .I2(count_r_reg[26]),
        .I3(count_r_reg[39]),
        .I4(is_zero_r_i_15__1_n_0),
        .O(is_zero_r_i_9__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(start_reg_rep),
        .D(is_zero_r_i_1__0_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(rst_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[0]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[0]),
        .O(m_axi_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[1]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[1]),
        .O(m_axi_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[2]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[2]),
        .O(m_axi_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[3]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[3]),
        .O(m_axi_AWLEN[3]));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0_0
   (\total_len_r_reg[8] ,
    done0,
    \count_r_reg[55]_0 ,
    clk,
    data,
    is_zero_r_reg_0,
    start,
    m_axi_BVALID);
  output \total_len_r_reg[8] ;
  output done0;
  input \count_r_reg[55]_0 ;
  input clk;
  input [13:0]data;
  input is_zero_r_reg_0;
  input start;
  input m_axi_BVALID;

  wire clk;
  wire \count_r[0]_i_10_n_0 ;
  wire \count_r[0]_i_11_n_0 ;
  wire \count_r[0]_i_12_n_0 ;
  wire \count_r[0]_i_13_n_0 ;
  wire \count_r[0]_i_14_n_0 ;
  wire \count_r[0]_i_15_n_0 ;
  wire \count_r[0]_i_16_n_0 ;
  wire \count_r[0]_i_17_n_0 ;
  wire \count_r[0]_i_18_n_0 ;
  wire \count_r[0]_i_1__0_n_0 ;
  wire \count_r[0]_i_3_n_0 ;
  wire \count_r[0]_i_4_n_0 ;
  wire \count_r[0]_i_5_n_0 ;
  wire \count_r[0]_i_6_n_0 ;
  wire \count_r[0]_i_7_n_0 ;
  wire \count_r[0]_i_8_n_0 ;
  wire \count_r[0]_i_9_n_0 ;
  wire \count_r[16]_i_10_n_0 ;
  wire \count_r[16]_i_11_n_0 ;
  wire \count_r[16]_i_12_n_0 ;
  wire \count_r[16]_i_13_n_0 ;
  wire \count_r[16]_i_14_n_0 ;
  wire \count_r[16]_i_15_n_0 ;
  wire \count_r[16]_i_16_n_0 ;
  wire \count_r[16]_i_17_n_0 ;
  wire \count_r[16]_i_2_n_0 ;
  wire \count_r[16]_i_3_n_0 ;
  wire \count_r[16]_i_4_n_0 ;
  wire \count_r[16]_i_5_n_0 ;
  wire \count_r[16]_i_6_n_0 ;
  wire \count_r[16]_i_7_n_0 ;
  wire \count_r[16]_i_8_n_0 ;
  wire \count_r[16]_i_9_n_0 ;
  wire \count_r[24]_i_10_n_0 ;
  wire \count_r[24]_i_11_n_0 ;
  wire \count_r[24]_i_12_n_0 ;
  wire \count_r[24]_i_13_n_0 ;
  wire \count_r[24]_i_14_n_0 ;
  wire \count_r[24]_i_15_n_0 ;
  wire \count_r[24]_i_16_n_0 ;
  wire \count_r[24]_i_17_n_0 ;
  wire \count_r[24]_i_2_n_0 ;
  wire \count_r[24]_i_3_n_0 ;
  wire \count_r[24]_i_4_n_0 ;
  wire \count_r[24]_i_5_n_0 ;
  wire \count_r[24]_i_6_n_0 ;
  wire \count_r[24]_i_7_n_0 ;
  wire \count_r[24]_i_8_n_0 ;
  wire \count_r[24]_i_9_n_0 ;
  wire \count_r[32]_i_10_n_0 ;
  wire \count_r[32]_i_11_n_0 ;
  wire \count_r[32]_i_12_n_0 ;
  wire \count_r[32]_i_13_n_0 ;
  wire \count_r[32]_i_14_n_0 ;
  wire \count_r[32]_i_15_n_0 ;
  wire \count_r[32]_i_16_n_0 ;
  wire \count_r[32]_i_17_n_0 ;
  wire \count_r[32]_i_2_n_0 ;
  wire \count_r[32]_i_3_n_0 ;
  wire \count_r[32]_i_4_n_0 ;
  wire \count_r[32]_i_5_n_0 ;
  wire \count_r[32]_i_6_n_0 ;
  wire \count_r[32]_i_7_n_0 ;
  wire \count_r[32]_i_8_n_0 ;
  wire \count_r[32]_i_9_n_0 ;
  wire \count_r[40]_i_10_n_0 ;
  wire \count_r[40]_i_11_n_0 ;
  wire \count_r[40]_i_12_n_0 ;
  wire \count_r[40]_i_13_n_0 ;
  wire \count_r[40]_i_14_n_0 ;
  wire \count_r[40]_i_15_n_0 ;
  wire \count_r[40]_i_16_n_0 ;
  wire \count_r[40]_i_17_n_0 ;
  wire \count_r[40]_i_2_n_0 ;
  wire \count_r[40]_i_3_n_0 ;
  wire \count_r[40]_i_4_n_0 ;
  wire \count_r[40]_i_5_n_0 ;
  wire \count_r[40]_i_6_n_0 ;
  wire \count_r[40]_i_7_n_0 ;
  wire \count_r[40]_i_8_n_0 ;
  wire \count_r[40]_i_9_n_0 ;
  wire \count_r[48]_i_10_n_0 ;
  wire \count_r[48]_i_11_n_0 ;
  wire \count_r[48]_i_12_n_0 ;
  wire \count_r[48]_i_13_n_0 ;
  wire \count_r[48]_i_14_n_0 ;
  wire \count_r[48]_i_15_n_0 ;
  wire \count_r[48]_i_16_n_0 ;
  wire \count_r[48]_i_2__0_n_0 ;
  wire \count_r[48]_i_3_n_0 ;
  wire \count_r[48]_i_4_n_0 ;
  wire \count_r[48]_i_5_n_0 ;
  wire \count_r[48]_i_6_n_0 ;
  wire \count_r[48]_i_7_n_0 ;
  wire \count_r[48]_i_8_n_0 ;
  wire \count_r[48]_i_9_n_0 ;
  wire \count_r[8]_i_10_n_0 ;
  wire \count_r[8]_i_11_n_0 ;
  wire \count_r[8]_i_12_n_0 ;
  wire \count_r[8]_i_13_n_0 ;
  wire \count_r[8]_i_14_n_0 ;
  wire \count_r[8]_i_15_n_0 ;
  wire \count_r[8]_i_16_n_0 ;
  wire \count_r[8]_i_17_n_0 ;
  wire \count_r[8]_i_2_n_0 ;
  wire \count_r[8]_i_3_n_0 ;
  wire \count_r[8]_i_4_n_0 ;
  wire \count_r[8]_i_5_n_0 ;
  wire \count_r[8]_i_6_n_0 ;
  wire \count_r[8]_i_7_n_0 ;
  wire \count_r[8]_i_8_n_0 ;
  wire \count_r[8]_i_9_n_0 ;
  wire [55:0]count_r_reg;
  wire \count_r_reg[0]_i_2_n_0 ;
  wire \count_r_reg[0]_i_2_n_1 ;
  wire \count_r_reg[0]_i_2_n_10 ;
  wire \count_r_reg[0]_i_2_n_11 ;
  wire \count_r_reg[0]_i_2_n_12 ;
  wire \count_r_reg[0]_i_2_n_13 ;
  wire \count_r_reg[0]_i_2_n_14 ;
  wire \count_r_reg[0]_i_2_n_15 ;
  wire \count_r_reg[0]_i_2_n_2 ;
  wire \count_r_reg[0]_i_2_n_3 ;
  wire \count_r_reg[0]_i_2_n_4 ;
  wire \count_r_reg[0]_i_2_n_5 ;
  wire \count_r_reg[0]_i_2_n_6 ;
  wire \count_r_reg[0]_i_2_n_7 ;
  wire \count_r_reg[0]_i_2_n_8 ;
  wire \count_r_reg[0]_i_2_n_9 ;
  wire \count_r_reg[16]_i_1_n_0 ;
  wire \count_r_reg[16]_i_1_n_1 ;
  wire \count_r_reg[16]_i_1_n_10 ;
  wire \count_r_reg[16]_i_1_n_11 ;
  wire \count_r_reg[16]_i_1_n_12 ;
  wire \count_r_reg[16]_i_1_n_13 ;
  wire \count_r_reg[16]_i_1_n_14 ;
  wire \count_r_reg[16]_i_1_n_15 ;
  wire \count_r_reg[16]_i_1_n_2 ;
  wire \count_r_reg[16]_i_1_n_3 ;
  wire \count_r_reg[16]_i_1_n_4 ;
  wire \count_r_reg[16]_i_1_n_5 ;
  wire \count_r_reg[16]_i_1_n_6 ;
  wire \count_r_reg[16]_i_1_n_7 ;
  wire \count_r_reg[16]_i_1_n_8 ;
  wire \count_r_reg[16]_i_1_n_9 ;
  wire \count_r_reg[24]_i_1_n_0 ;
  wire \count_r_reg[24]_i_1_n_1 ;
  wire \count_r_reg[24]_i_1_n_10 ;
  wire \count_r_reg[24]_i_1_n_11 ;
  wire \count_r_reg[24]_i_1_n_12 ;
  wire \count_r_reg[24]_i_1_n_13 ;
  wire \count_r_reg[24]_i_1_n_14 ;
  wire \count_r_reg[24]_i_1_n_15 ;
  wire \count_r_reg[24]_i_1_n_2 ;
  wire \count_r_reg[24]_i_1_n_3 ;
  wire \count_r_reg[24]_i_1_n_4 ;
  wire \count_r_reg[24]_i_1_n_5 ;
  wire \count_r_reg[24]_i_1_n_6 ;
  wire \count_r_reg[24]_i_1_n_7 ;
  wire \count_r_reg[24]_i_1_n_8 ;
  wire \count_r_reg[24]_i_1_n_9 ;
  wire \count_r_reg[32]_i_1_n_0 ;
  wire \count_r_reg[32]_i_1_n_1 ;
  wire \count_r_reg[32]_i_1_n_10 ;
  wire \count_r_reg[32]_i_1_n_11 ;
  wire \count_r_reg[32]_i_1_n_12 ;
  wire \count_r_reg[32]_i_1_n_13 ;
  wire \count_r_reg[32]_i_1_n_14 ;
  wire \count_r_reg[32]_i_1_n_15 ;
  wire \count_r_reg[32]_i_1_n_2 ;
  wire \count_r_reg[32]_i_1_n_3 ;
  wire \count_r_reg[32]_i_1_n_4 ;
  wire \count_r_reg[32]_i_1_n_5 ;
  wire \count_r_reg[32]_i_1_n_6 ;
  wire \count_r_reg[32]_i_1_n_7 ;
  wire \count_r_reg[32]_i_1_n_8 ;
  wire \count_r_reg[32]_i_1_n_9 ;
  wire \count_r_reg[40]_i_1_n_0 ;
  wire \count_r_reg[40]_i_1_n_1 ;
  wire \count_r_reg[40]_i_1_n_10 ;
  wire \count_r_reg[40]_i_1_n_11 ;
  wire \count_r_reg[40]_i_1_n_12 ;
  wire \count_r_reg[40]_i_1_n_13 ;
  wire \count_r_reg[40]_i_1_n_14 ;
  wire \count_r_reg[40]_i_1_n_15 ;
  wire \count_r_reg[40]_i_1_n_2 ;
  wire \count_r_reg[40]_i_1_n_3 ;
  wire \count_r_reg[40]_i_1_n_4 ;
  wire \count_r_reg[40]_i_1_n_5 ;
  wire \count_r_reg[40]_i_1_n_6 ;
  wire \count_r_reg[40]_i_1_n_7 ;
  wire \count_r_reg[40]_i_1_n_8 ;
  wire \count_r_reg[40]_i_1_n_9 ;
  wire \count_r_reg[48]_i_1_n_1 ;
  wire \count_r_reg[48]_i_1_n_10 ;
  wire \count_r_reg[48]_i_1_n_11 ;
  wire \count_r_reg[48]_i_1_n_12 ;
  wire \count_r_reg[48]_i_1_n_13 ;
  wire \count_r_reg[48]_i_1_n_14 ;
  wire \count_r_reg[48]_i_1_n_15 ;
  wire \count_r_reg[48]_i_1_n_2 ;
  wire \count_r_reg[48]_i_1_n_3 ;
  wire \count_r_reg[48]_i_1_n_4 ;
  wire \count_r_reg[48]_i_1_n_5 ;
  wire \count_r_reg[48]_i_1_n_6 ;
  wire \count_r_reg[48]_i_1_n_7 ;
  wire \count_r_reg[48]_i_1_n_8 ;
  wire \count_r_reg[48]_i_1_n_9 ;
  wire \count_r_reg[55]_0 ;
  wire \count_r_reg[8]_i_1_n_0 ;
  wire \count_r_reg[8]_i_1_n_1 ;
  wire \count_r_reg[8]_i_1_n_10 ;
  wire \count_r_reg[8]_i_1_n_11 ;
  wire \count_r_reg[8]_i_1_n_12 ;
  wire \count_r_reg[8]_i_1_n_13 ;
  wire \count_r_reg[8]_i_1_n_14 ;
  wire \count_r_reg[8]_i_1_n_15 ;
  wire \count_r_reg[8]_i_1_n_2 ;
  wire \count_r_reg[8]_i_1_n_3 ;
  wire \count_r_reg[8]_i_1_n_4 ;
  wire \count_r_reg[8]_i_1_n_5 ;
  wire \count_r_reg[8]_i_1_n_6 ;
  wire \count_r_reg[8]_i_1_n_7 ;
  wire \count_r_reg[8]_i_1_n_8 ;
  wire \count_r_reg[8]_i_1_n_9 ;
  wire [13:0]data;
  wire done0;
  wire is_zero_r_i_10__1_n_0;
  wire is_zero_r_i_11__0_n_0;
  wire is_zero_r_i_12__0_n_0;
  wire is_zero_r_i_13__0_n_0;
  wire is_zero_r_i_14__0_n_0;
  wire is_zero_r_i_15__0_n_0;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__2_n_0;
  wire is_zero_r_i_3__1_n_0;
  wire is_zero_r_i_4__2_n_0;
  wire is_zero_r_i_5__0_n_0;
  wire is_zero_r_i_6__0_n_0;
  wire is_zero_r_i_7__0_n_0;
  wire is_zero_r_i_8__0_n_0;
  wire is_zero_r_i_9__0_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_n_0;
  wire \m_axi_AWLEN[3]_INST_0_i_2_n_0 ;
  wire \m_axi_AWLEN[3]_INST_0_i_3_n_0 ;
  wire \m_axi_AWLEN[3]_INST_0_i_4_n_0 ;
  wire m_axi_BVALID;
  wire start;
  wire \total_len_r_reg[8] ;
  wire [7:7]\NLW_count_r_reg[48]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11 
       (.I0(count_r_reg[7]),
        .I1(data[7]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12 
       (.I0(count_r_reg[6]),
        .I1(data[6]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13 
       (.I0(count_r_reg[5]),
        .I1(data[5]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14 
       (.I0(count_r_reg[4]),
        .I1(data[4]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15 
       (.I0(count_r_reg[3]),
        .I1(data[3]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16 
       (.I0(count_r_reg[2]),
        .I1(data[2]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17 
       (.I0(count_r_reg[1]),
        .I1(data[1]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_18 
       (.I0(count_r_reg[0]),
        .I1(data[0]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[0]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count_r[0]_i_1__0 
       (.I0(m_axi_BVALID),
        .I1(is_zero_r_reg_0),
        .O(\count_r[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10 
       (.I0(count_r_reg[23]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11 
       (.I0(count_r_reg[22]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12 
       (.I0(count_r_reg[21]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13 
       (.I0(count_r_reg[20]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14 
       (.I0(count_r_reg[19]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15 
       (.I0(count_r_reg[18]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16 
       (.I0(count_r_reg[17]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_17 
       (.I0(count_r_reg[16]),
        .I1(data[12]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[16]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_10 
       (.I0(count_r_reg[31]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_11 
       (.I0(count_r_reg[30]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_12 
       (.I0(count_r_reg[29]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_13 
       (.I0(count_r_reg[28]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_14 
       (.I0(count_r_reg[27]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_15 
       (.I0(count_r_reg[26]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_16 
       (.I0(count_r_reg[25]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_17 
       (.I0(count_r_reg[24]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[24]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_2 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_10 
       (.I0(count_r_reg[39]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_11 
       (.I0(count_r_reg[38]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_12 
       (.I0(count_r_reg[37]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_13 
       (.I0(count_r_reg[36]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_14 
       (.I0(count_r_reg[35]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_15 
       (.I0(count_r_reg[34]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_16 
       (.I0(count_r_reg[33]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_17 
       (.I0(count_r_reg[32]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[32]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_2 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[32]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_10 
       (.I0(count_r_reg[47]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_11 
       (.I0(count_r_reg[46]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_12 
       (.I0(count_r_reg[45]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_13 
       (.I0(count_r_reg[44]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_14 
       (.I0(count_r_reg[43]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_15 
       (.I0(count_r_reg[42]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_16 
       (.I0(count_r_reg[41]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_17 
       (.I0(count_r_reg[40]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[40]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_2 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[40]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_10 
       (.I0(count_r_reg[54]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_11 
       (.I0(count_r_reg[53]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_12 
       (.I0(count_r_reg[52]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_13 
       (.I0(count_r_reg[51]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_14 
       (.I0(count_r_reg[50]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_15 
       (.I0(count_r_reg[49]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_16 
       (.I0(count_r_reg[48]),
        .I1(data[13]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_2__0 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[48]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[48]_i_9 
       (.I0(data[13]),
        .I1(count_r_reg[55]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[48]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10 
       (.I0(count_r_reg[15]),
        .I1(data[12]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11 
       (.I0(count_r_reg[14]),
        .I1(data[12]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12 
       (.I0(count_r_reg[13]),
        .I1(data[12]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13 
       (.I0(count_r_reg[12]),
        .I1(data[12]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14 
       (.I0(count_r_reg[11]),
        .I1(data[11]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15 
       (.I0(count_r_reg[10]),
        .I1(data[10]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16 
       (.I0(count_r_reg[9]),
        .I1(data[9]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17 
       (.I0(count_r_reg[8]),
        .I1(data[8]),
        .I2(is_zero_r_reg_0),
        .O(\count_r[8]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9 
       (.I0(is_zero_r_reg_0),
        .O(\count_r[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_15 ),
        .Q(count_r_reg[0]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2_n_0 ,\count_r_reg[0]_i_2_n_1 ,\count_r_reg[0]_i_2_n_2 ,\count_r_reg[0]_i_2_n_3 ,\count_r_reg[0]_i_2_n_4 ,\count_r_reg[0]_i_2_n_5 ,\count_r_reg[0]_i_2_n_6 ,\count_r_reg[0]_i_2_n_7 }),
        .DI({\count_r[0]_i_3_n_0 ,\count_r[0]_i_4_n_0 ,\count_r[0]_i_5_n_0 ,\count_r[0]_i_6_n_0 ,\count_r[0]_i_7_n_0 ,\count_r[0]_i_8_n_0 ,\count_r[0]_i_9_n_0 ,\count_r[0]_i_10_n_0 }),
        .O({\count_r_reg[0]_i_2_n_8 ,\count_r_reg[0]_i_2_n_9 ,\count_r_reg[0]_i_2_n_10 ,\count_r_reg[0]_i_2_n_11 ,\count_r_reg[0]_i_2_n_12 ,\count_r_reg[0]_i_2_n_13 ,\count_r_reg[0]_i_2_n_14 ,\count_r_reg[0]_i_2_n_15 }),
        .S({\count_r[0]_i_11_n_0 ,\count_r[0]_i_12_n_0 ,\count_r[0]_i_13_n_0 ,\count_r[0]_i_14_n_0 ,\count_r[0]_i_15_n_0 ,\count_r[0]_i_16_n_0 ,\count_r[0]_i_17_n_0 ,\count_r[0]_i_18_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_13 ),
        .Q(count_r_reg[10]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_12 ),
        .Q(count_r_reg[11]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_11 ),
        .Q(count_r_reg[12]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_10 ),
        .Q(count_r_reg[13]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_9 ),
        .Q(count_r_reg[14]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_8 ),
        .Q(count_r_reg[15]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_15 ),
        .Q(count_r_reg[16]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1 
       (.CI(\count_r_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[16]_i_1_n_0 ,\count_r_reg[16]_i_1_n_1 ,\count_r_reg[16]_i_1_n_2 ,\count_r_reg[16]_i_1_n_3 ,\count_r_reg[16]_i_1_n_4 ,\count_r_reg[16]_i_1_n_5 ,\count_r_reg[16]_i_1_n_6 ,\count_r_reg[16]_i_1_n_7 }),
        .DI({\count_r[16]_i_2_n_0 ,\count_r[16]_i_3_n_0 ,\count_r[16]_i_4_n_0 ,\count_r[16]_i_5_n_0 ,\count_r[16]_i_6_n_0 ,\count_r[16]_i_7_n_0 ,\count_r[16]_i_8_n_0 ,\count_r[16]_i_9_n_0 }),
        .O({\count_r_reg[16]_i_1_n_8 ,\count_r_reg[16]_i_1_n_9 ,\count_r_reg[16]_i_1_n_10 ,\count_r_reg[16]_i_1_n_11 ,\count_r_reg[16]_i_1_n_12 ,\count_r_reg[16]_i_1_n_13 ,\count_r_reg[16]_i_1_n_14 ,\count_r_reg[16]_i_1_n_15 }),
        .S({\count_r[16]_i_10_n_0 ,\count_r[16]_i_11_n_0 ,\count_r[16]_i_12_n_0 ,\count_r[16]_i_13_n_0 ,\count_r[16]_i_14_n_0 ,\count_r[16]_i_15_n_0 ,\count_r[16]_i_16_n_0 ,\count_r[16]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_14 ),
        .Q(count_r_reg[17]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_13 ),
        .Q(count_r_reg[18]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_12 ),
        .Q(count_r_reg[19]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_14 ),
        .Q(count_r_reg[1]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_11 ),
        .Q(count_r_reg[20]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_10 ),
        .Q(count_r_reg[21]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_9 ),
        .Q(count_r_reg[22]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_8 ),
        .Q(count_r_reg[23]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_15 ),
        .Q(count_r_reg[24]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[24]_i_1 
       (.CI(\count_r_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[24]_i_1_n_0 ,\count_r_reg[24]_i_1_n_1 ,\count_r_reg[24]_i_1_n_2 ,\count_r_reg[24]_i_1_n_3 ,\count_r_reg[24]_i_1_n_4 ,\count_r_reg[24]_i_1_n_5 ,\count_r_reg[24]_i_1_n_6 ,\count_r_reg[24]_i_1_n_7 }),
        .DI({\count_r[24]_i_2_n_0 ,\count_r[24]_i_3_n_0 ,\count_r[24]_i_4_n_0 ,\count_r[24]_i_5_n_0 ,\count_r[24]_i_6_n_0 ,\count_r[24]_i_7_n_0 ,\count_r[24]_i_8_n_0 ,\count_r[24]_i_9_n_0 }),
        .O({\count_r_reg[24]_i_1_n_8 ,\count_r_reg[24]_i_1_n_9 ,\count_r_reg[24]_i_1_n_10 ,\count_r_reg[24]_i_1_n_11 ,\count_r_reg[24]_i_1_n_12 ,\count_r_reg[24]_i_1_n_13 ,\count_r_reg[24]_i_1_n_14 ,\count_r_reg[24]_i_1_n_15 }),
        .S({\count_r[24]_i_10_n_0 ,\count_r[24]_i_11_n_0 ,\count_r[24]_i_12_n_0 ,\count_r[24]_i_13_n_0 ,\count_r[24]_i_14_n_0 ,\count_r[24]_i_15_n_0 ,\count_r[24]_i_16_n_0 ,\count_r[24]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[25] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_14 ),
        .Q(count_r_reg[25]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_13 ),
        .Q(count_r_reg[26]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_12 ),
        .Q(count_r_reg[27]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_11 ),
        .Q(count_r_reg[28]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_10 ),
        .Q(count_r_reg[29]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_13 ),
        .Q(count_r_reg[2]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_9 ),
        .Q(count_r_reg[30]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_8 ),
        .Q(count_r_reg[31]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_15 ),
        .Q(count_r_reg[32]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[32]_i_1 
       (.CI(\count_r_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[32]_i_1_n_0 ,\count_r_reg[32]_i_1_n_1 ,\count_r_reg[32]_i_1_n_2 ,\count_r_reg[32]_i_1_n_3 ,\count_r_reg[32]_i_1_n_4 ,\count_r_reg[32]_i_1_n_5 ,\count_r_reg[32]_i_1_n_6 ,\count_r_reg[32]_i_1_n_7 }),
        .DI({\count_r[32]_i_2_n_0 ,\count_r[32]_i_3_n_0 ,\count_r[32]_i_4_n_0 ,\count_r[32]_i_5_n_0 ,\count_r[32]_i_6_n_0 ,\count_r[32]_i_7_n_0 ,\count_r[32]_i_8_n_0 ,\count_r[32]_i_9_n_0 }),
        .O({\count_r_reg[32]_i_1_n_8 ,\count_r_reg[32]_i_1_n_9 ,\count_r_reg[32]_i_1_n_10 ,\count_r_reg[32]_i_1_n_11 ,\count_r_reg[32]_i_1_n_12 ,\count_r_reg[32]_i_1_n_13 ,\count_r_reg[32]_i_1_n_14 ,\count_r_reg[32]_i_1_n_15 }),
        .S({\count_r[32]_i_10_n_0 ,\count_r[32]_i_11_n_0 ,\count_r[32]_i_12_n_0 ,\count_r[32]_i_13_n_0 ,\count_r[32]_i_14_n_0 ,\count_r[32]_i_15_n_0 ,\count_r[32]_i_16_n_0 ,\count_r[32]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[33] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_14 ),
        .Q(count_r_reg[33]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_13 ),
        .Q(count_r_reg[34]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_12 ),
        .Q(count_r_reg[35]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_11 ),
        .Q(count_r_reg[36]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_10 ),
        .Q(count_r_reg[37]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_9 ),
        .Q(count_r_reg[38]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_8 ),
        .Q(count_r_reg[39]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_12 ),
        .Q(count_r_reg[3]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_15 ),
        .Q(count_r_reg[40]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[40]_i_1 
       (.CI(\count_r_reg[32]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[40]_i_1_n_0 ,\count_r_reg[40]_i_1_n_1 ,\count_r_reg[40]_i_1_n_2 ,\count_r_reg[40]_i_1_n_3 ,\count_r_reg[40]_i_1_n_4 ,\count_r_reg[40]_i_1_n_5 ,\count_r_reg[40]_i_1_n_6 ,\count_r_reg[40]_i_1_n_7 }),
        .DI({\count_r[40]_i_2_n_0 ,\count_r[40]_i_3_n_0 ,\count_r[40]_i_4_n_0 ,\count_r[40]_i_5_n_0 ,\count_r[40]_i_6_n_0 ,\count_r[40]_i_7_n_0 ,\count_r[40]_i_8_n_0 ,\count_r[40]_i_9_n_0 }),
        .O({\count_r_reg[40]_i_1_n_8 ,\count_r_reg[40]_i_1_n_9 ,\count_r_reg[40]_i_1_n_10 ,\count_r_reg[40]_i_1_n_11 ,\count_r_reg[40]_i_1_n_12 ,\count_r_reg[40]_i_1_n_13 ,\count_r_reg[40]_i_1_n_14 ,\count_r_reg[40]_i_1_n_15 }),
        .S({\count_r[40]_i_10_n_0 ,\count_r[40]_i_11_n_0 ,\count_r[40]_i_12_n_0 ,\count_r[40]_i_13_n_0 ,\count_r[40]_i_14_n_0 ,\count_r[40]_i_15_n_0 ,\count_r[40]_i_16_n_0 ,\count_r[40]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[41] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_14 ),
        .Q(count_r_reg[41]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_13 ),
        .Q(count_r_reg[42]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_12 ),
        .Q(count_r_reg[43]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_11 ),
        .Q(count_r_reg[44]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_10 ),
        .Q(count_r_reg[45]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_9 ),
        .Q(count_r_reg[46]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_8 ),
        .Q(count_r_reg[47]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_15 ),
        .Q(count_r_reg[48]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[48]_i_1 
       (.CI(\count_r_reg[40]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[48]_i_1_CO_UNCONNECTED [7],\count_r_reg[48]_i_1_n_1 ,\count_r_reg[48]_i_1_n_2 ,\count_r_reg[48]_i_1_n_3 ,\count_r_reg[48]_i_1_n_4 ,\count_r_reg[48]_i_1_n_5 ,\count_r_reg[48]_i_1_n_6 ,\count_r_reg[48]_i_1_n_7 }),
        .DI({1'b0,\count_r[48]_i_2__0_n_0 ,\count_r[48]_i_3_n_0 ,\count_r[48]_i_4_n_0 ,\count_r[48]_i_5_n_0 ,\count_r[48]_i_6_n_0 ,\count_r[48]_i_7_n_0 ,\count_r[48]_i_8_n_0 }),
        .O({\count_r_reg[48]_i_1_n_8 ,\count_r_reg[48]_i_1_n_9 ,\count_r_reg[48]_i_1_n_10 ,\count_r_reg[48]_i_1_n_11 ,\count_r_reg[48]_i_1_n_12 ,\count_r_reg[48]_i_1_n_13 ,\count_r_reg[48]_i_1_n_14 ,\count_r_reg[48]_i_1_n_15 }),
        .S({\count_r[48]_i_9_n_0 ,\count_r[48]_i_10_n_0 ,\count_r[48]_i_11_n_0 ,\count_r[48]_i_12_n_0 ,\count_r[48]_i_13_n_0 ,\count_r[48]_i_14_n_0 ,\count_r[48]_i_15_n_0 ,\count_r[48]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[49] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_14 ),
        .Q(count_r_reg[49]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_11 ),
        .Q(count_r_reg[4]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_13 ),
        .Q(count_r_reg[50]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_12 ),
        .Q(count_r_reg[51]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_11 ),
        .Q(count_r_reg[52]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_10 ),
        .Q(count_r_reg[53]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_9 ),
        .Q(count_r_reg[54]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_8 ),
        .Q(count_r_reg[55]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_10 ),
        .Q(count_r_reg[5]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_9 ),
        .Q(count_r_reg[6]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_8 ),
        .Q(count_r_reg[7]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_15 ),
        .Q(count_r_reg[8]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1 
       (.CI(\count_r_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1_n_0 ,\count_r_reg[8]_i_1_n_1 ,\count_r_reg[8]_i_1_n_2 ,\count_r_reg[8]_i_1_n_3 ,\count_r_reg[8]_i_1_n_4 ,\count_r_reg[8]_i_1_n_5 ,\count_r_reg[8]_i_1_n_6 ,\count_r_reg[8]_i_1_n_7 }),
        .DI({\count_r[8]_i_2_n_0 ,\count_r[8]_i_3_n_0 ,\count_r[8]_i_4_n_0 ,\count_r[8]_i_5_n_0 ,\count_r[8]_i_6_n_0 ,\count_r[8]_i_7_n_0 ,\count_r[8]_i_8_n_0 ,\count_r[8]_i_9_n_0 }),
        .O({\count_r_reg[8]_i_1_n_8 ,\count_r_reg[8]_i_1_n_9 ,\count_r_reg[8]_i_1_n_10 ,\count_r_reg[8]_i_1_n_11 ,\count_r_reg[8]_i_1_n_12 ,\count_r_reg[8]_i_1_n_13 ,\count_r_reg[8]_i_1_n_14 ,\count_r_reg[8]_i_1_n_15 }),
        .S({\count_r[8]_i_10_n_0 ,\count_r[8]_i_11_n_0 ,\count_r[8]_i_12_n_0 ,\count_r[8]_i_13_n_0 ,\count_r[8]_i_14_n_0 ,\count_r[8]_i_15_n_0 ,\count_r[8]_i_16_n_0 ,\count_r[8]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_14 ),
        .Q(count_r_reg[9]),
        .R(\count_r_reg[55]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    done_i_1
       (.I0(m_axi_BVALID),
        .I1(is_zero_r_reg_n_0),
        .O(done0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_10__1
       (.I0(count_r_reg[34]),
        .I1(count_r_reg[28]),
        .I2(count_r_reg[29]),
        .I3(count_r_reg[26]),
        .O(is_zero_r_i_10__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_11__0
       (.I0(count_r_reg[2]),
        .I1(count_r_reg[36]),
        .I2(count_r_reg[3]),
        .I3(count_r_reg[22]),
        .I4(is_zero_r_i_15__0_n_0),
        .O(is_zero_r_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_12__0
       (.I0(count_r_reg[55]),
        .I1(start),
        .I2(count_r_reg[32]),
        .I3(count_r_reg[49]),
        .I4(count_r_reg[11]),
        .I5(count_r_reg[52]),
        .O(is_zero_r_i_12__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_13__0
       (.I0(count_r_reg[23]),
        .I1(count_r_reg[21]),
        .I2(count_r_reg[19]),
        .I3(count_r_reg[16]),
        .O(is_zero_r_i_13__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_14__0
       (.I0(count_r_reg[39]),
        .I1(count_r_reg[27]),
        .I2(count_r_reg[12]),
        .I3(count_r_reg[8]),
        .O(is_zero_r_i_14__0_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    is_zero_r_i_15__0
       (.I0(count_r_reg[0]),
        .I1(count_r_reg[45]),
        .I2(count_r_reg[46]),
        .I3(count_r_reg[18]),
        .O(is_zero_r_i_15__0_n_0));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    is_zero_r_i_1__1
       (.I0(\total_len_r_reg[8] ),
        .I1(is_zero_r_i_2__2_n_0),
        .I2(is_zero_r_i_3__1_n_0),
        .I3(is_zero_r_i_4__2_n_0),
        .I4(is_zero_r_i_5__0_n_0),
        .O(is_zero_r_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    is_zero_r_i_2__2
       (.I0(count_r_reg[15]),
        .I1(m_axi_BVALID),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[5]),
        .I4(is_zero_r_i_6__0_n_0),
        .I5(is_zero_r_i_7__0_n_0),
        .O(is_zero_r_i_2__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_3__1
       (.I0(is_zero_r_i_8__0_n_0),
        .I1(count_r_reg[24]),
        .I2(count_r_reg[7]),
        .I3(count_r_reg[40]),
        .I4(count_r_reg[38]),
        .I5(is_zero_r_i_9__0_n_0),
        .O(is_zero_r_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    is_zero_r_i_4__2
       (.I0(is_zero_r_i_10__1_n_0),
        .I1(count_r_reg[42]),
        .I2(count_r_reg[33]),
        .I3(count_r_reg[30]),
        .I4(count_r_reg[20]),
        .I5(is_zero_r_i_11__0_n_0),
        .O(is_zero_r_i_4__2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_5__0
       (.I0(is_zero_r_i_12__0_n_0),
        .I1(is_zero_r_i_13__0_n_0),
        .I2(count_r_reg[25]),
        .I3(count_r_reg[10]),
        .I4(count_r_reg[41]),
        .I5(count_r_reg[4]),
        .O(is_zero_r_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_6__0
       (.I0(count_r_reg[53]),
        .I1(count_r_reg[51]),
        .I2(count_r_reg[47]),
        .I3(count_r_reg[43]),
        .O(is_zero_r_i_6__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_7__0
       (.I0(count_r_reg[50]),
        .I1(count_r_reg[9]),
        .I2(count_r_reg[48]),
        .I3(count_r_reg[6]),
        .O(is_zero_r_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_8__0
       (.I0(count_r_reg[35]),
        .I1(count_r_reg[17]),
        .I2(count_r_reg[37]),
        .I3(count_r_reg[14]),
        .O(is_zero_r_i_8__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_9__0
       (.I0(count_r_reg[31]),
        .I1(count_r_reg[54]),
        .I2(count_r_reg[13]),
        .I3(count_r_reg[44]),
        .I4(is_zero_r_i_14__0_n_0),
        .O(is_zero_r_i_9__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(is_zero_r_i_1__1_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(\count_r_reg[55]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \m_axi_AWLEN[3]_INST_0_i_1 
       (.I0(\m_axi_AWLEN[3]_INST_0_i_2_n_0 ),
        .I1(\m_axi_AWLEN[3]_INST_0_i_3_n_0 ),
        .I2(\m_axi_AWLEN[3]_INST_0_i_4_n_0 ),
        .I3(data[4]),
        .I4(data[13]),
        .I5(data[5]),
        .O(\total_len_r_reg[8] ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_axi_AWLEN[3]_INST_0_i_2 
       (.I0(start),
        .I1(data[6]),
        .I2(data[7]),
        .I3(data[1]),
        .O(\m_axi_AWLEN[3]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axi_AWLEN[3]_INST_0_i_3 
       (.I0(data[12]),
        .I1(data[2]),
        .I2(data[11]),
        .I3(data[0]),
        .O(\m_axi_AWLEN[3]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axi_AWLEN[3]_INST_0_i_4 
       (.I0(data[9]),
        .I1(data[3]),
        .I2(data[10]),
        .I3(data[8]),
        .O(\m_axi_AWLEN[3]_INST_0_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0_1
   (is_zero_r_reg_0,
    D,
    \total_len_r_reg[8] ,
    \final_burst_len_reg[2] ,
    E,
    \count_r_reg[55]_0 ,
    \count_r_reg[0]_0 ,
    clk,
    data,
    start,
    Q,
    \count_r_reg[0]_1 ,
    is_zero_r_reg_1,
    w_running,
    data_valid,
    m_axi_WREADY,
    is_zero_r_reg_2,
    is_zero_r_i_3_0);
  output is_zero_r_reg_0;
  output [0:0]D;
  output \total_len_r_reg[8] ;
  output \final_burst_len_reg[2] ;
  output [0:0]E;
  input \count_r_reg[55]_0 ;
  input \count_r_reg[0]_0 ;
  input clk;
  input [13:0]data;
  input start;
  input [3:0]Q;
  input [0:0]\count_r_reg[0]_1 ;
  input is_zero_r_reg_1;
  input w_running;
  input data_valid;
  input m_axi_WREADY;
  input is_zero_r_reg_2;
  input is_zero_r_i_3_0;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire clk;
  wire \count_r[0]_i_10__0_n_0 ;
  wire \count_r[0]_i_11__1_n_0 ;
  wire \count_r[0]_i_12__1_n_0 ;
  wire \count_r[0]_i_13__1_n_0 ;
  wire \count_r[0]_i_14__1_n_0 ;
  wire \count_r[0]_i_15__1_n_0 ;
  wire \count_r[0]_i_16__1_n_0 ;
  wire \count_r[0]_i_17__1_n_0 ;
  wire \count_r[0]_i_18__0_n_0 ;
  wire \count_r[0]_i_3__1_n_0 ;
  wire \count_r[0]_i_4__1_n_0 ;
  wire \count_r[0]_i_5__1_n_0 ;
  wire \count_r[0]_i_6__1_n_0 ;
  wire \count_r[0]_i_7__1_n_0 ;
  wire \count_r[0]_i_8__1_n_0 ;
  wire \count_r[0]_i_9__1_n_0 ;
  wire \count_r[16]_i_10__1_n_0 ;
  wire \count_r[16]_i_11__1_n_0 ;
  wire \count_r[16]_i_12__1_n_0 ;
  wire \count_r[16]_i_13__1_n_0 ;
  wire \count_r[16]_i_14__1_n_0 ;
  wire \count_r[16]_i_15__1_n_0 ;
  wire \count_r[16]_i_16__1_n_0 ;
  wire \count_r[16]_i_17__1_n_0 ;
  wire \count_r[16]_i_2__1_n_0 ;
  wire \count_r[16]_i_3__1_n_0 ;
  wire \count_r[16]_i_4__1_n_0 ;
  wire \count_r[16]_i_5__1_n_0 ;
  wire \count_r[16]_i_6__1_n_0 ;
  wire \count_r[16]_i_7__1_n_0 ;
  wire \count_r[16]_i_8__1_n_0 ;
  wire \count_r[16]_i_9__1_n_0 ;
  wire \count_r[24]_i_10__1_n_0 ;
  wire \count_r[24]_i_11__1_n_0 ;
  wire \count_r[24]_i_12__1_n_0 ;
  wire \count_r[24]_i_13__1_n_0 ;
  wire \count_r[24]_i_14__1_n_0 ;
  wire \count_r[24]_i_15__1_n_0 ;
  wire \count_r[24]_i_16__1_n_0 ;
  wire \count_r[24]_i_17__1_n_0 ;
  wire \count_r[24]_i_2__1_n_0 ;
  wire \count_r[24]_i_3__1_n_0 ;
  wire \count_r[24]_i_4__1_n_0 ;
  wire \count_r[24]_i_5__1_n_0 ;
  wire \count_r[24]_i_6__1_n_0 ;
  wire \count_r[24]_i_7__1_n_0 ;
  wire \count_r[24]_i_8__1_n_0 ;
  wire \count_r[24]_i_9__1_n_0 ;
  wire \count_r[32]_i_10__1_n_0 ;
  wire \count_r[32]_i_11__1_n_0 ;
  wire \count_r[32]_i_12__1_n_0 ;
  wire \count_r[32]_i_13__1_n_0 ;
  wire \count_r[32]_i_14__1_n_0 ;
  wire \count_r[32]_i_15__1_n_0 ;
  wire \count_r[32]_i_16__1_n_0 ;
  wire \count_r[32]_i_17__1_n_0 ;
  wire \count_r[32]_i_2__1_n_0 ;
  wire \count_r[32]_i_3__1_n_0 ;
  wire \count_r[32]_i_4__1_n_0 ;
  wire \count_r[32]_i_5__1_n_0 ;
  wire \count_r[32]_i_6__1_n_0 ;
  wire \count_r[32]_i_7__1_n_0 ;
  wire \count_r[32]_i_8__1_n_0 ;
  wire \count_r[32]_i_9__1_n_0 ;
  wire \count_r[40]_i_10__1_n_0 ;
  wire \count_r[40]_i_11__1_n_0 ;
  wire \count_r[40]_i_12__1_n_0 ;
  wire \count_r[40]_i_13__1_n_0 ;
  wire \count_r[40]_i_14__1_n_0 ;
  wire \count_r[40]_i_15__1_n_0 ;
  wire \count_r[40]_i_16__1_n_0 ;
  wire \count_r[40]_i_17__1_n_0 ;
  wire \count_r[40]_i_2__1_n_0 ;
  wire \count_r[40]_i_3__1_n_0 ;
  wire \count_r[40]_i_4__1_n_0 ;
  wire \count_r[40]_i_5__1_n_0 ;
  wire \count_r[40]_i_6__1_n_0 ;
  wire \count_r[40]_i_7__1_n_0 ;
  wire \count_r[40]_i_8__1_n_0 ;
  wire \count_r[40]_i_9__1_n_0 ;
  wire \count_r[48]_i_10__1_n_0 ;
  wire \count_r[48]_i_11__1_n_0 ;
  wire \count_r[48]_i_12__1_n_0 ;
  wire \count_r[48]_i_13__1_n_0 ;
  wire \count_r[48]_i_14__1_n_0 ;
  wire \count_r[48]_i_15__1_n_0 ;
  wire \count_r[48]_i_16__1_n_0 ;
  wire \count_r[48]_i_2_n_0 ;
  wire \count_r[48]_i_3__1_n_0 ;
  wire \count_r[48]_i_4__1_n_0 ;
  wire \count_r[48]_i_5__1_n_0 ;
  wire \count_r[48]_i_6__1_n_0 ;
  wire \count_r[48]_i_7__1_n_0 ;
  wire \count_r[48]_i_8__1_n_0 ;
  wire \count_r[48]_i_9__0_n_0 ;
  wire \count_r[8]_i_10__1_n_0 ;
  wire \count_r[8]_i_11__1_n_0 ;
  wire \count_r[8]_i_12__1_n_0 ;
  wire \count_r[8]_i_13__1_n_0 ;
  wire \count_r[8]_i_14__1_n_0 ;
  wire \count_r[8]_i_15__1_n_0 ;
  wire \count_r[8]_i_16__1_n_0 ;
  wire \count_r[8]_i_17__1_n_0 ;
  wire \count_r[8]_i_2__1_n_0 ;
  wire \count_r[8]_i_3__1_n_0 ;
  wire \count_r[8]_i_4__1_n_0 ;
  wire \count_r[8]_i_5__1_n_0 ;
  wire \count_r[8]_i_6__1_n_0 ;
  wire \count_r[8]_i_7__1_n_0 ;
  wire \count_r[8]_i_8__1_n_0 ;
  wire \count_r[8]_i_9__1_n_0 ;
  wire [55:0]count_r_reg;
  wire \count_r_reg[0]_0 ;
  wire [0:0]\count_r_reg[0]_1 ;
  wire \count_r_reg[0]_i_2__0_n_0 ;
  wire \count_r_reg[0]_i_2__0_n_1 ;
  wire \count_r_reg[0]_i_2__0_n_10 ;
  wire \count_r_reg[0]_i_2__0_n_11 ;
  wire \count_r_reg[0]_i_2__0_n_12 ;
  wire \count_r_reg[0]_i_2__0_n_13 ;
  wire \count_r_reg[0]_i_2__0_n_14 ;
  wire \count_r_reg[0]_i_2__0_n_15 ;
  wire \count_r_reg[0]_i_2__0_n_2 ;
  wire \count_r_reg[0]_i_2__0_n_3 ;
  wire \count_r_reg[0]_i_2__0_n_4 ;
  wire \count_r_reg[0]_i_2__0_n_5 ;
  wire \count_r_reg[0]_i_2__0_n_6 ;
  wire \count_r_reg[0]_i_2__0_n_7 ;
  wire \count_r_reg[0]_i_2__0_n_8 ;
  wire \count_r_reg[0]_i_2__0_n_9 ;
  wire \count_r_reg[16]_i_1__1_n_0 ;
  wire \count_r_reg[16]_i_1__1_n_1 ;
  wire \count_r_reg[16]_i_1__1_n_10 ;
  wire \count_r_reg[16]_i_1__1_n_11 ;
  wire \count_r_reg[16]_i_1__1_n_12 ;
  wire \count_r_reg[16]_i_1__1_n_13 ;
  wire \count_r_reg[16]_i_1__1_n_14 ;
  wire \count_r_reg[16]_i_1__1_n_15 ;
  wire \count_r_reg[16]_i_1__1_n_2 ;
  wire \count_r_reg[16]_i_1__1_n_3 ;
  wire \count_r_reg[16]_i_1__1_n_4 ;
  wire \count_r_reg[16]_i_1__1_n_5 ;
  wire \count_r_reg[16]_i_1__1_n_6 ;
  wire \count_r_reg[16]_i_1__1_n_7 ;
  wire \count_r_reg[16]_i_1__1_n_8 ;
  wire \count_r_reg[16]_i_1__1_n_9 ;
  wire \count_r_reg[24]_i_1__1_n_0 ;
  wire \count_r_reg[24]_i_1__1_n_1 ;
  wire \count_r_reg[24]_i_1__1_n_10 ;
  wire \count_r_reg[24]_i_1__1_n_11 ;
  wire \count_r_reg[24]_i_1__1_n_12 ;
  wire \count_r_reg[24]_i_1__1_n_13 ;
  wire \count_r_reg[24]_i_1__1_n_14 ;
  wire \count_r_reg[24]_i_1__1_n_15 ;
  wire \count_r_reg[24]_i_1__1_n_2 ;
  wire \count_r_reg[24]_i_1__1_n_3 ;
  wire \count_r_reg[24]_i_1__1_n_4 ;
  wire \count_r_reg[24]_i_1__1_n_5 ;
  wire \count_r_reg[24]_i_1__1_n_6 ;
  wire \count_r_reg[24]_i_1__1_n_7 ;
  wire \count_r_reg[24]_i_1__1_n_8 ;
  wire \count_r_reg[24]_i_1__1_n_9 ;
  wire \count_r_reg[32]_i_1__1_n_0 ;
  wire \count_r_reg[32]_i_1__1_n_1 ;
  wire \count_r_reg[32]_i_1__1_n_10 ;
  wire \count_r_reg[32]_i_1__1_n_11 ;
  wire \count_r_reg[32]_i_1__1_n_12 ;
  wire \count_r_reg[32]_i_1__1_n_13 ;
  wire \count_r_reg[32]_i_1__1_n_14 ;
  wire \count_r_reg[32]_i_1__1_n_15 ;
  wire \count_r_reg[32]_i_1__1_n_2 ;
  wire \count_r_reg[32]_i_1__1_n_3 ;
  wire \count_r_reg[32]_i_1__1_n_4 ;
  wire \count_r_reg[32]_i_1__1_n_5 ;
  wire \count_r_reg[32]_i_1__1_n_6 ;
  wire \count_r_reg[32]_i_1__1_n_7 ;
  wire \count_r_reg[32]_i_1__1_n_8 ;
  wire \count_r_reg[32]_i_1__1_n_9 ;
  wire \count_r_reg[40]_i_1__1_n_0 ;
  wire \count_r_reg[40]_i_1__1_n_1 ;
  wire \count_r_reg[40]_i_1__1_n_10 ;
  wire \count_r_reg[40]_i_1__1_n_11 ;
  wire \count_r_reg[40]_i_1__1_n_12 ;
  wire \count_r_reg[40]_i_1__1_n_13 ;
  wire \count_r_reg[40]_i_1__1_n_14 ;
  wire \count_r_reg[40]_i_1__1_n_15 ;
  wire \count_r_reg[40]_i_1__1_n_2 ;
  wire \count_r_reg[40]_i_1__1_n_3 ;
  wire \count_r_reg[40]_i_1__1_n_4 ;
  wire \count_r_reg[40]_i_1__1_n_5 ;
  wire \count_r_reg[40]_i_1__1_n_6 ;
  wire \count_r_reg[40]_i_1__1_n_7 ;
  wire \count_r_reg[40]_i_1__1_n_8 ;
  wire \count_r_reg[40]_i_1__1_n_9 ;
  wire \count_r_reg[48]_i_1__1_n_1 ;
  wire \count_r_reg[48]_i_1__1_n_10 ;
  wire \count_r_reg[48]_i_1__1_n_11 ;
  wire \count_r_reg[48]_i_1__1_n_12 ;
  wire \count_r_reg[48]_i_1__1_n_13 ;
  wire \count_r_reg[48]_i_1__1_n_14 ;
  wire \count_r_reg[48]_i_1__1_n_15 ;
  wire \count_r_reg[48]_i_1__1_n_2 ;
  wire \count_r_reg[48]_i_1__1_n_3 ;
  wire \count_r_reg[48]_i_1__1_n_4 ;
  wire \count_r_reg[48]_i_1__1_n_5 ;
  wire \count_r_reg[48]_i_1__1_n_6 ;
  wire \count_r_reg[48]_i_1__1_n_7 ;
  wire \count_r_reg[48]_i_1__1_n_8 ;
  wire \count_r_reg[48]_i_1__1_n_9 ;
  wire \count_r_reg[55]_0 ;
  wire \count_r_reg[8]_i_1__1_n_0 ;
  wire \count_r_reg[8]_i_1__1_n_1 ;
  wire \count_r_reg[8]_i_1__1_n_10 ;
  wire \count_r_reg[8]_i_1__1_n_11 ;
  wire \count_r_reg[8]_i_1__1_n_12 ;
  wire \count_r_reg[8]_i_1__1_n_13 ;
  wire \count_r_reg[8]_i_1__1_n_14 ;
  wire \count_r_reg[8]_i_1__1_n_15 ;
  wire \count_r_reg[8]_i_1__1_n_2 ;
  wire \count_r_reg[8]_i_1__1_n_3 ;
  wire \count_r_reg[8]_i_1__1_n_4 ;
  wire \count_r_reg[8]_i_1__1_n_5 ;
  wire \count_r_reg[8]_i_1__1_n_6 ;
  wire \count_r_reg[8]_i_1__1_n_7 ;
  wire \count_r_reg[8]_i_1__1_n_8 ;
  wire \count_r_reg[8]_i_1__1_n_9 ;
  wire [13:0]data;
  wire data_valid;
  wire \final_burst_len_reg[2] ;
  wire is_zero_r_i_11_n_0;
  wire is_zero_r_i_12_n_0;
  wire is_zero_r_i_13_n_0;
  wire is_zero_r_i_14_n_0;
  wire is_zero_r_i_15_n_0;
  wire is_zero_r_i_16_n_0;
  wire is_zero_r_i_17_n_0;
  wire is_zero_r_i_18_n_0;
  wire is_zero_r_i_19_n_0;
  wire is_zero_r_i_1__4_n_0;
  wire is_zero_r_i_20_n_0;
  wire is_zero_r_i_22_n_0;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_i_3_0;
  wire is_zero_r_i_3__0_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_i_6_n_0;
  wire is_zero_r_i_7_n_0;
  wire is_zero_r_i_8_n_0;
  wire is_zero_r_i_9_n_0;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_2;
  wire m_axi_WREADY;
  wire start;
  wire \total_len_r_reg[8] ;
  wire w_running;
  wire [7:7]\NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h8B)) 
    \count_r[0]_i_1 
       (.I0(Q[0]),
        .I1(\total_len_r_reg[8] ),
        .I2(\count_r_reg[0]_1 ),
        .O(D));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_10__0 
       (.I0(start),
        .O(\count_r[0]_i_10__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_11__1 
       (.I0(count_r_reg[7]),
        .I1(data[7]),
        .I2(start),
        .O(\count_r[0]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_12__1 
       (.I0(count_r_reg[6]),
        .I1(data[6]),
        .I2(start),
        .O(\count_r[0]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_13__1 
       (.I0(count_r_reg[5]),
        .I1(data[5]),
        .I2(start),
        .O(\count_r[0]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_14__1 
       (.I0(count_r_reg[4]),
        .I1(data[4]),
        .I2(start),
        .O(\count_r[0]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_15__1 
       (.I0(count_r_reg[3]),
        .I1(data[3]),
        .I2(start),
        .O(\count_r[0]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_16__1 
       (.I0(count_r_reg[2]),
        .I1(data[2]),
        .I2(start),
        .O(\count_r[0]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_17__1 
       (.I0(count_r_reg[1]),
        .I1(data[1]),
        .I2(start),
        .O(\count_r[0]_i_17__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[0]_i_18__0 
       (.I0(count_r_reg[0]),
        .I1(data[0]),
        .I2(start),
        .O(\count_r[0]_i_18__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_3__1 
       (.I0(start),
        .O(\count_r[0]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_4__1 
       (.I0(start),
        .O(\count_r[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_5__1 
       (.I0(start),
        .O(\count_r[0]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_6__1 
       (.I0(start),
        .O(\count_r[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_7__1 
       (.I0(start),
        .O(\count_r[0]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_8__1 
       (.I0(start),
        .O(\count_r[0]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_9__1 
       (.I0(start),
        .O(\count_r[0]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_10__1 
       (.I0(count_r_reg[23]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_11__1 
       (.I0(count_r_reg[22]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_12__1 
       (.I0(count_r_reg[21]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_13__1 
       (.I0(count_r_reg[20]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_14__1 
       (.I0(count_r_reg[19]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_15__1 
       (.I0(count_r_reg[18]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_16__1 
       (.I0(count_r_reg[17]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[16]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[16]_i_17__1 
       (.I0(count_r_reg[16]),
        .I1(data[12]),
        .I2(start),
        .O(\count_r[16]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_2__1 
       (.I0(start),
        .O(\count_r[16]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_3__1 
       (.I0(start),
        .O(\count_r[16]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_4__1 
       (.I0(start),
        .O(\count_r[16]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_5__1 
       (.I0(start),
        .O(\count_r[16]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_6__1 
       (.I0(start),
        .O(\count_r[16]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_7__1 
       (.I0(start),
        .O(\count_r[16]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_8__1 
       (.I0(start),
        .O(\count_r[16]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[16]_i_9__1 
       (.I0(start),
        .O(\count_r[16]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_10__1 
       (.I0(count_r_reg[31]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_11__1 
       (.I0(count_r_reg[30]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_12__1 
       (.I0(count_r_reg[29]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_13__1 
       (.I0(count_r_reg[28]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_14__1 
       (.I0(count_r_reg[27]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_15__1 
       (.I0(count_r_reg[26]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_16__1 
       (.I0(count_r_reg[25]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[24]_i_17__1 
       (.I0(count_r_reg[24]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[24]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_2__1 
       (.I0(start),
        .O(\count_r[24]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_3__1 
       (.I0(start),
        .O(\count_r[24]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_4__1 
       (.I0(start),
        .O(\count_r[24]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_5__1 
       (.I0(start),
        .O(\count_r[24]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_6__1 
       (.I0(start),
        .O(\count_r[24]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_7__1 
       (.I0(start),
        .O(\count_r[24]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_8__1 
       (.I0(start),
        .O(\count_r[24]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[24]_i_9__1 
       (.I0(start),
        .O(\count_r[24]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_10__1 
       (.I0(count_r_reg[39]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_11__1 
       (.I0(count_r_reg[38]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_12__1 
       (.I0(count_r_reg[37]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_13__1 
       (.I0(count_r_reg[36]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_14__1 
       (.I0(count_r_reg[35]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_15__1 
       (.I0(count_r_reg[34]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_16__1 
       (.I0(count_r_reg[33]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[32]_i_17__1 
       (.I0(count_r_reg[32]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[32]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_2__1 
       (.I0(start),
        .O(\count_r[32]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_3__1 
       (.I0(start),
        .O(\count_r[32]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_4__1 
       (.I0(start),
        .O(\count_r[32]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_5__1 
       (.I0(start),
        .O(\count_r[32]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_6__1 
       (.I0(start),
        .O(\count_r[32]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_7__1 
       (.I0(start),
        .O(\count_r[32]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_8__1 
       (.I0(start),
        .O(\count_r[32]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[32]_i_9__1 
       (.I0(start),
        .O(\count_r[32]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_10__1 
       (.I0(count_r_reg[47]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_11__1 
       (.I0(count_r_reg[46]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_12__1 
       (.I0(count_r_reg[45]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_13__1 
       (.I0(count_r_reg[44]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_14__1 
       (.I0(count_r_reg[43]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_15__1 
       (.I0(count_r_reg[42]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_16__1 
       (.I0(count_r_reg[41]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[40]_i_17__1 
       (.I0(count_r_reg[40]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[40]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_2__1 
       (.I0(start),
        .O(\count_r[40]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_3__1 
       (.I0(start),
        .O(\count_r[40]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_4__1 
       (.I0(start),
        .O(\count_r[40]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_5__1 
       (.I0(start),
        .O(\count_r[40]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_6__1 
       (.I0(start),
        .O(\count_r[40]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_7__1 
       (.I0(start),
        .O(\count_r[40]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_8__1 
       (.I0(start),
        .O(\count_r[40]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[40]_i_9__1 
       (.I0(start),
        .O(\count_r[40]_i_9__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_10__1 
       (.I0(count_r_reg[54]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_11__1 
       (.I0(count_r_reg[53]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_12__1 
       (.I0(count_r_reg[52]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_13__1 
       (.I0(count_r_reg[51]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_14__1 
       (.I0(count_r_reg[50]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_15__1 
       (.I0(count_r_reg[49]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[48]_i_16__1 
       (.I0(count_r_reg[48]),
        .I1(data[13]),
        .I2(start),
        .O(\count_r[48]_i_16__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_2 
       (.I0(start),
        .O(\count_r[48]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_3__1 
       (.I0(start),
        .O(\count_r[48]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_4__1 
       (.I0(start),
        .O(\count_r[48]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_5__1 
       (.I0(start),
        .O(\count_r[48]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_6__1 
       (.I0(start),
        .O(\count_r[48]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_7__1 
       (.I0(start),
        .O(\count_r[48]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[48]_i_8__1 
       (.I0(start),
        .O(\count_r[48]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'hA3)) 
    \count_r[48]_i_9__0 
       (.I0(data[13]),
        .I1(count_r_reg[55]),
        .I2(start),
        .O(\count_r[48]_i_9__0_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_10__1 
       (.I0(count_r_reg[15]),
        .I1(data[12]),
        .I2(start),
        .O(\count_r[8]_i_10__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_11__1 
       (.I0(count_r_reg[14]),
        .I1(data[12]),
        .I2(start),
        .O(\count_r[8]_i_11__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_12__1 
       (.I0(count_r_reg[13]),
        .I1(data[12]),
        .I2(start),
        .O(\count_r[8]_i_12__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_13__1 
       (.I0(count_r_reg[12]),
        .I1(data[12]),
        .I2(start),
        .O(\count_r[8]_i_13__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_14__1 
       (.I0(count_r_reg[11]),
        .I1(data[11]),
        .I2(start),
        .O(\count_r[8]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_15__1 
       (.I0(count_r_reg[10]),
        .I1(data[10]),
        .I2(start),
        .O(\count_r[8]_i_15__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_16__1 
       (.I0(count_r_reg[9]),
        .I1(data[9]),
        .I2(start),
        .O(\count_r[8]_i_16__1_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \count_r[8]_i_17__1 
       (.I0(count_r_reg[8]),
        .I1(data[8]),
        .I2(start),
        .O(\count_r[8]_i_17__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_2__1 
       (.I0(start),
        .O(\count_r[8]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_3__1 
       (.I0(start),
        .O(\count_r[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_4__1 
       (.I0(start),
        .O(\count_r[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_5__1 
       (.I0(start),
        .O(\count_r[8]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_6__1 
       (.I0(start),
        .O(\count_r[8]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_7__1 
       (.I0(start),
        .O(\count_r[8]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_8__1 
       (.I0(start),
        .O(\count_r[8]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[8]_i_9__1 
       (.I0(start),
        .O(\count_r[8]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_15 ),
        .Q(count_r_reg[0]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[0]_i_2__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[0]_i_2__0_n_0 ,\count_r_reg[0]_i_2__0_n_1 ,\count_r_reg[0]_i_2__0_n_2 ,\count_r_reg[0]_i_2__0_n_3 ,\count_r_reg[0]_i_2__0_n_4 ,\count_r_reg[0]_i_2__0_n_5 ,\count_r_reg[0]_i_2__0_n_6 ,\count_r_reg[0]_i_2__0_n_7 }),
        .DI({\count_r[0]_i_3__1_n_0 ,\count_r[0]_i_4__1_n_0 ,\count_r[0]_i_5__1_n_0 ,\count_r[0]_i_6__1_n_0 ,\count_r[0]_i_7__1_n_0 ,\count_r[0]_i_8__1_n_0 ,\count_r[0]_i_9__1_n_0 ,\count_r[0]_i_10__0_n_0 }),
        .O({\count_r_reg[0]_i_2__0_n_8 ,\count_r_reg[0]_i_2__0_n_9 ,\count_r_reg[0]_i_2__0_n_10 ,\count_r_reg[0]_i_2__0_n_11 ,\count_r_reg[0]_i_2__0_n_12 ,\count_r_reg[0]_i_2__0_n_13 ,\count_r_reg[0]_i_2__0_n_14 ,\count_r_reg[0]_i_2__0_n_15 }),
        .S({\count_r[0]_i_11__1_n_0 ,\count_r[0]_i_12__1_n_0 ,\count_r[0]_i_13__1_n_0 ,\count_r[0]_i_14__1_n_0 ,\count_r[0]_i_15__1_n_0 ,\count_r[0]_i_16__1_n_0 ,\count_r[0]_i_17__1_n_0 ,\count_r[0]_i_18__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[10] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_13 ),
        .Q(count_r_reg[10]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_12 ),
        .Q(count_r_reg[11]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_11 ),
        .Q(count_r_reg[12]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_10 ),
        .Q(count_r_reg[13]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_9 ),
        .Q(count_r_reg[14]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_8 ),
        .Q(count_r_reg[15]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_15 ),
        .Q(count_r_reg[16]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[16]_i_1__1 
       (.CI(\count_r_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[16]_i_1__1_n_0 ,\count_r_reg[16]_i_1__1_n_1 ,\count_r_reg[16]_i_1__1_n_2 ,\count_r_reg[16]_i_1__1_n_3 ,\count_r_reg[16]_i_1__1_n_4 ,\count_r_reg[16]_i_1__1_n_5 ,\count_r_reg[16]_i_1__1_n_6 ,\count_r_reg[16]_i_1__1_n_7 }),
        .DI({\count_r[16]_i_2__1_n_0 ,\count_r[16]_i_3__1_n_0 ,\count_r[16]_i_4__1_n_0 ,\count_r[16]_i_5__1_n_0 ,\count_r[16]_i_6__1_n_0 ,\count_r[16]_i_7__1_n_0 ,\count_r[16]_i_8__1_n_0 ,\count_r[16]_i_9__1_n_0 }),
        .O({\count_r_reg[16]_i_1__1_n_8 ,\count_r_reg[16]_i_1__1_n_9 ,\count_r_reg[16]_i_1__1_n_10 ,\count_r_reg[16]_i_1__1_n_11 ,\count_r_reg[16]_i_1__1_n_12 ,\count_r_reg[16]_i_1__1_n_13 ,\count_r_reg[16]_i_1__1_n_14 ,\count_r_reg[16]_i_1__1_n_15 }),
        .S({\count_r[16]_i_10__1_n_0 ,\count_r[16]_i_11__1_n_0 ,\count_r[16]_i_12__1_n_0 ,\count_r[16]_i_13__1_n_0 ,\count_r[16]_i_14__1_n_0 ,\count_r[16]_i_15__1_n_0 ,\count_r[16]_i_16__1_n_0 ,\count_r[16]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[17] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_14 ),
        .Q(count_r_reg[17]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_13 ),
        .Q(count_r_reg[18]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_12 ),
        .Q(count_r_reg[19]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_14 ),
        .Q(count_r_reg[1]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_11 ),
        .Q(count_r_reg[20]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_10 ),
        .Q(count_r_reg[21]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_9 ),
        .Q(count_r_reg[22]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_8 ),
        .Q(count_r_reg[23]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_15 ),
        .Q(count_r_reg[24]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[24]_i_1__1 
       (.CI(\count_r_reg[16]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[24]_i_1__1_n_0 ,\count_r_reg[24]_i_1__1_n_1 ,\count_r_reg[24]_i_1__1_n_2 ,\count_r_reg[24]_i_1__1_n_3 ,\count_r_reg[24]_i_1__1_n_4 ,\count_r_reg[24]_i_1__1_n_5 ,\count_r_reg[24]_i_1__1_n_6 ,\count_r_reg[24]_i_1__1_n_7 }),
        .DI({\count_r[24]_i_2__1_n_0 ,\count_r[24]_i_3__1_n_0 ,\count_r[24]_i_4__1_n_0 ,\count_r[24]_i_5__1_n_0 ,\count_r[24]_i_6__1_n_0 ,\count_r[24]_i_7__1_n_0 ,\count_r[24]_i_8__1_n_0 ,\count_r[24]_i_9__1_n_0 }),
        .O({\count_r_reg[24]_i_1__1_n_8 ,\count_r_reg[24]_i_1__1_n_9 ,\count_r_reg[24]_i_1__1_n_10 ,\count_r_reg[24]_i_1__1_n_11 ,\count_r_reg[24]_i_1__1_n_12 ,\count_r_reg[24]_i_1__1_n_13 ,\count_r_reg[24]_i_1__1_n_14 ,\count_r_reg[24]_i_1__1_n_15 }),
        .S({\count_r[24]_i_10__1_n_0 ,\count_r[24]_i_11__1_n_0 ,\count_r[24]_i_12__1_n_0 ,\count_r[24]_i_13__1_n_0 ,\count_r[24]_i_14__1_n_0 ,\count_r[24]_i_15__1_n_0 ,\count_r[24]_i_16__1_n_0 ,\count_r[24]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[25] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_14 ),
        .Q(count_r_reg[25]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_13 ),
        .Q(count_r_reg[26]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_12 ),
        .Q(count_r_reg[27]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_11 ),
        .Q(count_r_reg[28]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_10 ),
        .Q(count_r_reg[29]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_13 ),
        .Q(count_r_reg[2]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_9 ),
        .Q(count_r_reg[30]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_8 ),
        .Q(count_r_reg[31]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_15 ),
        .Q(count_r_reg[32]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[32]_i_1__1 
       (.CI(\count_r_reg[24]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[32]_i_1__1_n_0 ,\count_r_reg[32]_i_1__1_n_1 ,\count_r_reg[32]_i_1__1_n_2 ,\count_r_reg[32]_i_1__1_n_3 ,\count_r_reg[32]_i_1__1_n_4 ,\count_r_reg[32]_i_1__1_n_5 ,\count_r_reg[32]_i_1__1_n_6 ,\count_r_reg[32]_i_1__1_n_7 }),
        .DI({\count_r[32]_i_2__1_n_0 ,\count_r[32]_i_3__1_n_0 ,\count_r[32]_i_4__1_n_0 ,\count_r[32]_i_5__1_n_0 ,\count_r[32]_i_6__1_n_0 ,\count_r[32]_i_7__1_n_0 ,\count_r[32]_i_8__1_n_0 ,\count_r[32]_i_9__1_n_0 }),
        .O({\count_r_reg[32]_i_1__1_n_8 ,\count_r_reg[32]_i_1__1_n_9 ,\count_r_reg[32]_i_1__1_n_10 ,\count_r_reg[32]_i_1__1_n_11 ,\count_r_reg[32]_i_1__1_n_12 ,\count_r_reg[32]_i_1__1_n_13 ,\count_r_reg[32]_i_1__1_n_14 ,\count_r_reg[32]_i_1__1_n_15 }),
        .S({\count_r[32]_i_10__1_n_0 ,\count_r[32]_i_11__1_n_0 ,\count_r[32]_i_12__1_n_0 ,\count_r[32]_i_13__1_n_0 ,\count_r[32]_i_14__1_n_0 ,\count_r[32]_i_15__1_n_0 ,\count_r[32]_i_16__1_n_0 ,\count_r[32]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[33] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_14 ),
        .Q(count_r_reg[33]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_13 ),
        .Q(count_r_reg[34]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_12 ),
        .Q(count_r_reg[35]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_11 ),
        .Q(count_r_reg[36]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_10 ),
        .Q(count_r_reg[37]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_9 ),
        .Q(count_r_reg[38]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_8 ),
        .Q(count_r_reg[39]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_12 ),
        .Q(count_r_reg[3]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_15 ),
        .Q(count_r_reg[40]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[40]_i_1__1 
       (.CI(\count_r_reg[32]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[40]_i_1__1_n_0 ,\count_r_reg[40]_i_1__1_n_1 ,\count_r_reg[40]_i_1__1_n_2 ,\count_r_reg[40]_i_1__1_n_3 ,\count_r_reg[40]_i_1__1_n_4 ,\count_r_reg[40]_i_1__1_n_5 ,\count_r_reg[40]_i_1__1_n_6 ,\count_r_reg[40]_i_1__1_n_7 }),
        .DI({\count_r[40]_i_2__1_n_0 ,\count_r[40]_i_3__1_n_0 ,\count_r[40]_i_4__1_n_0 ,\count_r[40]_i_5__1_n_0 ,\count_r[40]_i_6__1_n_0 ,\count_r[40]_i_7__1_n_0 ,\count_r[40]_i_8__1_n_0 ,\count_r[40]_i_9__1_n_0 }),
        .O({\count_r_reg[40]_i_1__1_n_8 ,\count_r_reg[40]_i_1__1_n_9 ,\count_r_reg[40]_i_1__1_n_10 ,\count_r_reg[40]_i_1__1_n_11 ,\count_r_reg[40]_i_1__1_n_12 ,\count_r_reg[40]_i_1__1_n_13 ,\count_r_reg[40]_i_1__1_n_14 ,\count_r_reg[40]_i_1__1_n_15 }),
        .S({\count_r[40]_i_10__1_n_0 ,\count_r[40]_i_11__1_n_0 ,\count_r[40]_i_12__1_n_0 ,\count_r[40]_i_13__1_n_0 ,\count_r[40]_i_14__1_n_0 ,\count_r[40]_i_15__1_n_0 ,\count_r[40]_i_16__1_n_0 ,\count_r[40]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[41] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_14 ),
        .Q(count_r_reg[41]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_13 ),
        .Q(count_r_reg[42]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_12 ),
        .Q(count_r_reg[43]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_11 ),
        .Q(count_r_reg[44]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_10 ),
        .Q(count_r_reg[45]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_9 ),
        .Q(count_r_reg[46]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_8 ),
        .Q(count_r_reg[47]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_15 ),
        .Q(count_r_reg[48]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[48]_i_1__1 
       (.CI(\count_r_reg[40]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED [7],\count_r_reg[48]_i_1__1_n_1 ,\count_r_reg[48]_i_1__1_n_2 ,\count_r_reg[48]_i_1__1_n_3 ,\count_r_reg[48]_i_1__1_n_4 ,\count_r_reg[48]_i_1__1_n_5 ,\count_r_reg[48]_i_1__1_n_6 ,\count_r_reg[48]_i_1__1_n_7 }),
        .DI({1'b0,\count_r[48]_i_2_n_0 ,\count_r[48]_i_3__1_n_0 ,\count_r[48]_i_4__1_n_0 ,\count_r[48]_i_5__1_n_0 ,\count_r[48]_i_6__1_n_0 ,\count_r[48]_i_7__1_n_0 ,\count_r[48]_i_8__1_n_0 }),
        .O({\count_r_reg[48]_i_1__1_n_8 ,\count_r_reg[48]_i_1__1_n_9 ,\count_r_reg[48]_i_1__1_n_10 ,\count_r_reg[48]_i_1__1_n_11 ,\count_r_reg[48]_i_1__1_n_12 ,\count_r_reg[48]_i_1__1_n_13 ,\count_r_reg[48]_i_1__1_n_14 ,\count_r_reg[48]_i_1__1_n_15 }),
        .S({\count_r[48]_i_9__0_n_0 ,\count_r[48]_i_10__1_n_0 ,\count_r[48]_i_11__1_n_0 ,\count_r[48]_i_12__1_n_0 ,\count_r[48]_i_13__1_n_0 ,\count_r[48]_i_14__1_n_0 ,\count_r[48]_i_15__1_n_0 ,\count_r[48]_i_16__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[49] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_14 ),
        .Q(count_r_reg[49]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_11 ),
        .Q(count_r_reg[4]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_13 ),
        .Q(count_r_reg[50]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_12 ),
        .Q(count_r_reg[51]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_11 ),
        .Q(count_r_reg[52]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_10 ),
        .Q(count_r_reg[53]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_9 ),
        .Q(count_r_reg[54]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_8 ),
        .Q(count_r_reg[55]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_10 ),
        .Q(count_r_reg[5]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_9 ),
        .Q(count_r_reg[6]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_8 ),
        .Q(count_r_reg[7]),
        .R(\count_r_reg[55]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_15 ),
        .Q(count_r_reg[8]),
        .R(\count_r_reg[55]_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_r_reg[8]_i_1__1 
       (.CI(\count_r_reg[0]_i_2__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_r_reg[8]_i_1__1_n_0 ,\count_r_reg[8]_i_1__1_n_1 ,\count_r_reg[8]_i_1__1_n_2 ,\count_r_reg[8]_i_1__1_n_3 ,\count_r_reg[8]_i_1__1_n_4 ,\count_r_reg[8]_i_1__1_n_5 ,\count_r_reg[8]_i_1__1_n_6 ,\count_r_reg[8]_i_1__1_n_7 }),
        .DI({\count_r[8]_i_2__1_n_0 ,\count_r[8]_i_3__1_n_0 ,\count_r[8]_i_4__1_n_0 ,\count_r[8]_i_5__1_n_0 ,\count_r[8]_i_6__1_n_0 ,\count_r[8]_i_7__1_n_0 ,\count_r[8]_i_8__1_n_0 ,\count_r[8]_i_9__1_n_0 }),
        .O({\count_r_reg[8]_i_1__1_n_8 ,\count_r_reg[8]_i_1__1_n_9 ,\count_r_reg[8]_i_1__1_n_10 ,\count_r_reg[8]_i_1__1_n_11 ,\count_r_reg[8]_i_1__1_n_12 ,\count_r_reg[8]_i_1__1_n_13 ,\count_r_reg[8]_i_1__1_n_14 ,\count_r_reg[8]_i_1__1_n_15 }),
        .S({\count_r[8]_i_10__1_n_0 ,\count_r[8]_i_11__1_n_0 ,\count_r[8]_i_12__1_n_0 ,\count_r[8]_i_13__1_n_0 ,\count_r[8]_i_14__1_n_0 ,\count_r[8]_i_15__1_n_0 ,\count_r[8]_i_16__1_n_0 ,\count_r[8]_i_17__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[9] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_14 ),
        .Q(count_r_reg[9]),
        .R(\count_r_reg[55]_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    is_zero_r_i_1
       (.I0(w_running),
        .I1(data_valid),
        .I2(m_axi_WREADY),
        .I3(\total_len_r_reg[8] ),
        .O(E));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_11
       (.I0(count_r_reg[19]),
        .I1(count_r_reg[15]),
        .I2(count_r_reg[40]),
        .I3(count_r_reg[11]),
        .O(is_zero_r_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_12
       (.I0(count_r_reg[5]),
        .I1(count_r_reg[3]),
        .I2(count_r_reg[50]),
        .I3(count_r_reg[24]),
        .O(is_zero_r_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_13
       (.I0(count_r_reg[25]),
        .I1(count_r_reg[18]),
        .I2(count_r_reg[23]),
        .I3(count_r_reg[16]),
        .O(is_zero_r_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_14
       (.I0(count_r_reg[22]),
        .I1(count_r_reg[21]),
        .I2(count_r_reg[20]),
        .I3(count_r_reg[9]),
        .O(is_zero_r_i_14_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_15
       (.I0(count_r_reg[38]),
        .I1(count_r_reg[33]),
        .I2(count_r_reg[41]),
        .I3(count_r_reg[39]),
        .O(is_zero_r_i_15_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_16
       (.I0(count_r_reg[47]),
        .I1(count_r_reg[35]),
        .I2(count_r_reg[54]),
        .I3(count_r_reg[32]),
        .O(is_zero_r_i_16_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_17
       (.I0(count_r_reg[31]),
        .I1(count_r_reg[26]),
        .I2(count_r_reg[46]),
        .I3(count_r_reg[36]),
        .O(is_zero_r_i_17_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_18
       (.I0(count_r_reg[29]),
        .I1(count_r_reg[6]),
        .I2(count_r_reg[30]),
        .I3(count_r_reg[4]),
        .O(is_zero_r_i_18_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_19
       (.I0(count_r_reg[14]),
        .I1(count_r_reg[10]),
        .I2(count_r_reg[48]),
        .I3(count_r_reg[17]),
        .O(is_zero_r_i_19_n_0));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    is_zero_r_i_1__4
       (.I0(is_zero_r_reg_2),
        .I1(start),
        .I2(is_zero_r_i_2__0_n_0),
        .I3(\count_r_reg[0]_0 ),
        .I4(is_zero_r_reg_0),
        .O(is_zero_r_i_1__4_n_0));
  LUT6 #(
    .INIT(64'h0001FFFF00010000)) 
    is_zero_r_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(\total_len_r_reg[8] ),
        .I5(is_zero_r_reg_1),
        .O(\final_burst_len_reg[2] ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    is_zero_r_i_20
       (.I0(count_r_reg[55]),
        .I1(count_r_reg[34]),
        .I2(count_r_reg[0]),
        .I3(count_r_reg[37]),
        .O(is_zero_r_i_20_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_22
       (.I0(count_r_reg[53]),
        .I1(count_r_reg[52]),
        .I2(count_r_reg[13]),
        .I3(count_r_reg[8]),
        .O(is_zero_r_i_22_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    is_zero_r_i_2__0
       (.I0(is_zero_r_i_9_n_0),
        .I1(is_zero_r_i_8_n_0),
        .I2(is_zero_r_i_7_n_0),
        .I3(is_zero_r_i_6_n_0),
        .I4(is_zero_r_i_3__0_n_0),
        .I5(is_zero_r_i_4_n_0),
        .O(is_zero_r_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABAAAA)) 
    is_zero_r_i_3
       (.I0(is_zero_r_reg_2),
        .I1(is_zero_r_i_5_n_0),
        .I2(is_zero_r_i_6_n_0),
        .I3(is_zero_r_i_7_n_0),
        .I4(is_zero_r_i_8_n_0),
        .I5(is_zero_r_i_9_n_0),
        .O(\total_len_r_reg[8] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_3__0
       (.I0(count_r_reg[24]),
        .I1(count_r_reg[50]),
        .I2(count_r_reg[3]),
        .I3(count_r_reg[5]),
        .I4(is_zero_r_i_11_n_0),
        .O(is_zero_r_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_4
       (.I0(count_r_reg[9]),
        .I1(count_r_reg[20]),
        .I2(count_r_reg[21]),
        .I3(count_r_reg[22]),
        .I4(is_zero_r_i_13_n_0),
        .O(is_zero_r_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_5
       (.I0(is_zero_r_i_11_n_0),
        .I1(is_zero_r_i_12_n_0),
        .I2(is_zero_r_i_13_n_0),
        .I3(is_zero_r_i_14_n_0),
        .O(is_zero_r_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    is_zero_r_i_6
       (.I0(is_zero_r_i_15_n_0),
        .I1(is_zero_r_i_16_n_0),
        .I2(is_zero_r_i_17_n_0),
        .I3(is_zero_r_i_18_n_0),
        .O(is_zero_r_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_7
       (.I0(count_r_reg[7]),
        .I1(count_r_reg[51]),
        .I2(count_r_reg[2]),
        .I3(count_r_reg[49]),
        .I4(is_zero_r_i_19_n_0),
        .O(is_zero_r_i_7_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    is_zero_r_i_8
       (.I0(count_r_reg[27]),
        .I1(count_r_reg[28]),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[45]),
        .I4(is_zero_r_i_20_n_0),
        .O(is_zero_r_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    is_zero_r_i_9
       (.I0(is_zero_r_i_3_0),
        .I1(is_zero_r_i_22_n_0),
        .I2(count_r_reg[43]),
        .I3(count_r_reg[42]),
        .I4(count_r_reg[44]),
        .I5(count_r_reg[12]),
        .O(is_zero_r_i_9_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__4_n_0),
        .Q(is_zero_r_reg_0),
        .S(\count_r_reg[55]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized1
   (m_axi_AWREADY_0,
    m_axi_AWREADY_1,
    \count_r_reg[3]_0 ,
    clk,
    wfirst_pulse,
    is_zero_r_reg_0,
    m_axi_AWREADY,
    stall_aw);
  output m_axi_AWREADY_0;
  output m_axi_AWREADY_1;
  input \count_r_reg[3]_0 ;
  input clk;
  input wfirst_pulse;
  input is_zero_r_reg_0;
  input m_axi_AWREADY;
  input stall_aw;

  wire clk;
  wire \count_r[0]_i_1__1_n_0 ;
  wire \count_r[1]_i_1__1_n_0 ;
  wire \count_r[2]_i_1__1_n_0 ;
  wire \count_r[3]_i_1__1_n_0 ;
  wire \count_r[3]_i_2_n_0 ;
  wire \count_r_reg[3]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire idle_aw;
  wire is_zero_r_i_1__2_n_0;
  wire is_zero_r_reg_0;
  wire m_axi_AWREADY;
  wire m_axi_AWREADY_0;
  wire m_axi_AWREADY_1;
  wire stall_aw;
  wire wfirst_pulse;

  LUT4 #(
    .INIT(16'h5053)) 
    awvalid_r_i_2
       (.I0(m_axi_AWREADY),
        .I1(idle_aw),
        .I2(is_zero_r_reg_0),
        .I3(stall_aw),
        .O(m_axi_AWREADY_1));
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__1 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hA6665999)) 
    \count_r[1]_i_1__1 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(wfirst_pulse),
        .I2(is_zero_r_reg_0),
        .I3(m_axi_AWREADY),
        .I4(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF7000FF70008F)) 
    \count_r[2]_i_1__1 
       (.I0(m_axi_AWREADY),
        .I1(is_zero_r_reg_0),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[2]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_r[3]_i_1__1 
       (.I0(wfirst_pulse),
        .I1(is_zero_r_reg_0),
        .I2(m_axi_AWREADY),
        .O(\count_r[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAA9A9AAA9)) 
    \count_r[3]_i_2 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(wfirst_pulse),
        .I4(m_axi_AWREADY_0),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_r[3]_i_3 
       (.I0(m_axi_AWREADY),
        .I1(is_zero_r_reg_0),
        .O(m_axi_AWREADY_0));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[0]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(\count_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[1]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(\count_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[2]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(\count_r_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[3]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(\count_r_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h8000002280000000)) 
    is_zero_r_i_1__2
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[3] ),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(m_axi_AWREADY_0),
        .O(is_zero_r_i_1__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(is_zero_r_i_1__2_n_0),
        .Q(idle_aw),
        .S(\count_r_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized2
   (stall_aw,
    \count_r_reg[0]_0 ,
    clk,
    is_zero_r_reg_0,
    m_axi_AWREADY,
    m_axi_BVALID,
    \count_r_reg[3]_0 );
  output stall_aw;
  input \count_r_reg[0]_0 ;
  input clk;
  input is_zero_r_reg_0;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input \count_r_reg[3]_0 ;

  wire clk;
  wire \count_r[0]_i_1__2_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__0_n_0 ;
  wire \count_r[3]_i_1__0_n_0 ;
  wire \count_r[4]_i_1_n_0 ;
  wire \count_r[4]_i_2_n_0 ;
  wire \count_r[4]_i_3_n_0 ;
  wire \count_r_reg[0]_0 ;
  wire \count_r_reg[3]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire \count_r_reg_n_0_[4] ;
  wire is_zero_r_i_1__3_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire is_zero_r_reg_0;
  wire m_axi_AWREADY;
  wire m_axi_BVALID;
  wire stall_aw;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__2 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hAA6A5595)) 
    \count_r[1]_i_1__0 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(is_zero_r_reg_0),
        .I2(m_axi_AWREADY),
        .I3(m_axi_BVALID),
        .I4(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF4000FF4000BF)) 
    \count_r[2]_i_1__0 
       (.I0(m_axi_BVALID),
        .I1(m_axi_AWREADY),
        .I2(is_zero_r_reg_0),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[2] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFBA0045)) 
    \count_r[3]_i_1__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(m_axi_BVALID),
        .I2(\count_r_reg[3]_0 ),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[3] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_r[4]_i_1 
       (.I0(m_axi_BVALID),
        .I1(is_zero_r_reg_0),
        .I2(m_axi_AWREADY),
        .O(\count_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAA9)) 
    \count_r[4]_i_2 
       (.I0(\count_r_reg_n_0_[4] ),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r[4]_i_3_n_0 ),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \count_r[4]_i_3 
       (.I0(is_zero_r_reg_0),
        .I1(m_axi_AWREADY),
        .I2(m_axi_BVALID),
        .O(\count_r[4]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[0]_i_1__2_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(\count_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[1]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(\count_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[2]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(\count_r_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[3]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(\count_r_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[4]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .S(\count_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    is_zero_r_i_1__3
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(is_zero_r_i_2__1_n_0),
        .O(is_zero_r_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h3FFFFFFDFFFFFFFD)) 
    is_zero_r_i_2__1
       (.I0(m_axi_BVALID),
        .I1(\count_r_reg_n_0_[4] ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[2] ),
        .I4(\count_r_reg_n_0_[1] ),
        .I5(\count_r_reg[3]_0 ),
        .O(is_zero_r_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(is_zero_r_i_1__3_n_0),
        .Q(stall_aw),
        .R(\count_r_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "swr_engine" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_swr_engine
   (is_zero_r_reg,
    awvalid_r_reg_0,
    m_axi_AWADDR,
    m_axi_AWLEN,
    m_axi_WDATA,
    ctrl_done,
    m_axi_WVALID,
    s_axis_tready,
    m_axi_WREADY,
    m_axi_AWREADY,
    m_axi_BVALID,
    clk,
    s_axis_tvalid,
    s_axis_tdata,
    req_len,
    ctrl_start,
    baseAddr,
    rst_n);
  output is_zero_r_reg;
  output awvalid_r_reg_0;
  output [56:0]m_axi_AWADDR;
  output [3:0]m_axi_AWLEN;
  output [127:0]m_axi_WDATA;
  output ctrl_done;
  output m_axi_WVALID;
  output s_axis_tready;
  input m_axi_WREADY;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input clk;
  input s_axis_tvalid;
  input [127:0]s_axis_tdata;
  input [15:0]req_len;
  input ctrl_start;
  input [55:0]baseAddr;
  input rst_n;

  wire \addr[14]_i_10_n_0 ;
  wire \addr[14]_i_2_n_0 ;
  wire \addr[14]_i_3_n_0 ;
  wire \addr[14]_i_4_n_0 ;
  wire \addr[14]_i_5_n_0 ;
  wire \addr[14]_i_6_n_0 ;
  wire \addr[14]_i_7_n_0 ;
  wire \addr[14]_i_8_n_0 ;
  wire \addr[14]_i_9_n_0 ;
  wire \addr[22]_i_2_n_0 ;
  wire \addr[22]_i_3_n_0 ;
  wire \addr[22]_i_4_n_0 ;
  wire \addr[22]_i_5_n_0 ;
  wire \addr[22]_i_6_n_0 ;
  wire \addr[22]_i_7_n_0 ;
  wire \addr[22]_i_8_n_0 ;
  wire \addr[22]_i_9_n_0 ;
  wire \addr[30]_i_2_n_0 ;
  wire \addr[30]_i_3_n_0 ;
  wire \addr[30]_i_4_n_0 ;
  wire \addr[30]_i_5_n_0 ;
  wire \addr[30]_i_6_n_0 ;
  wire \addr[30]_i_7_n_0 ;
  wire \addr[30]_i_8_n_0 ;
  wire \addr[30]_i_9_n_0 ;
  wire \addr[38]_i_2_n_0 ;
  wire \addr[38]_i_3_n_0 ;
  wire \addr[38]_i_4_n_0 ;
  wire \addr[38]_i_5_n_0 ;
  wire \addr[38]_i_6_n_0 ;
  wire \addr[38]_i_7_n_0 ;
  wire \addr[38]_i_8_n_0 ;
  wire \addr[38]_i_9_n_0 ;
  wire \addr[46]_i_2_n_0 ;
  wire \addr[46]_i_3_n_0 ;
  wire \addr[46]_i_4_n_0 ;
  wire \addr[46]_i_5_n_0 ;
  wire \addr[46]_i_6_n_0 ;
  wire \addr[46]_i_7_n_0 ;
  wire \addr[46]_i_8_n_0 ;
  wire \addr[46]_i_9_n_0 ;
  wire \addr[54]_i_2_n_0 ;
  wire \addr[54]_i_3_n_0 ;
  wire \addr[54]_i_4_n_0 ;
  wire \addr[54]_i_5_n_0 ;
  wire \addr[54]_i_6_n_0 ;
  wire \addr[54]_i_7_n_0 ;
  wire \addr[54]_i_8_n_0 ;
  wire \addr[54]_i_9_n_0 ;
  wire \addr[62]_i_2_n_0 ;
  wire \addr[62]_i_3_n_0 ;
  wire \addr[62]_i_4_n_0 ;
  wire \addr[62]_i_5_n_0 ;
  wire \addr[62]_i_6_n_0 ;
  wire \addr[62]_i_7_n_0 ;
  wire \addr[62]_i_8_n_0 ;
  wire \addr[62]_i_9_n_0 ;
  wire \addr[63]_i_3_n_0 ;
  wire [63:8]addr_offset_r;
  wire \addr_reg[14]_i_1_n_0 ;
  wire \addr_reg[14]_i_1_n_1 ;
  wire \addr_reg[14]_i_1_n_10 ;
  wire \addr_reg[14]_i_1_n_11 ;
  wire \addr_reg[14]_i_1_n_12 ;
  wire \addr_reg[14]_i_1_n_13 ;
  wire \addr_reg[14]_i_1_n_14 ;
  wire \addr_reg[14]_i_1_n_15 ;
  wire \addr_reg[14]_i_1_n_2 ;
  wire \addr_reg[14]_i_1_n_3 ;
  wire \addr_reg[14]_i_1_n_4 ;
  wire \addr_reg[14]_i_1_n_5 ;
  wire \addr_reg[14]_i_1_n_6 ;
  wire \addr_reg[14]_i_1_n_7 ;
  wire \addr_reg[14]_i_1_n_8 ;
  wire \addr_reg[14]_i_1_n_9 ;
  wire \addr_reg[22]_i_1_n_0 ;
  wire \addr_reg[22]_i_1_n_1 ;
  wire \addr_reg[22]_i_1_n_10 ;
  wire \addr_reg[22]_i_1_n_11 ;
  wire \addr_reg[22]_i_1_n_12 ;
  wire \addr_reg[22]_i_1_n_13 ;
  wire \addr_reg[22]_i_1_n_14 ;
  wire \addr_reg[22]_i_1_n_15 ;
  wire \addr_reg[22]_i_1_n_2 ;
  wire \addr_reg[22]_i_1_n_3 ;
  wire \addr_reg[22]_i_1_n_4 ;
  wire \addr_reg[22]_i_1_n_5 ;
  wire \addr_reg[22]_i_1_n_6 ;
  wire \addr_reg[22]_i_1_n_7 ;
  wire \addr_reg[22]_i_1_n_8 ;
  wire \addr_reg[22]_i_1_n_9 ;
  wire \addr_reg[30]_i_1_n_0 ;
  wire \addr_reg[30]_i_1_n_1 ;
  wire \addr_reg[30]_i_1_n_10 ;
  wire \addr_reg[30]_i_1_n_11 ;
  wire \addr_reg[30]_i_1_n_12 ;
  wire \addr_reg[30]_i_1_n_13 ;
  wire \addr_reg[30]_i_1_n_14 ;
  wire \addr_reg[30]_i_1_n_15 ;
  wire \addr_reg[30]_i_1_n_2 ;
  wire \addr_reg[30]_i_1_n_3 ;
  wire \addr_reg[30]_i_1_n_4 ;
  wire \addr_reg[30]_i_1_n_5 ;
  wire \addr_reg[30]_i_1_n_6 ;
  wire \addr_reg[30]_i_1_n_7 ;
  wire \addr_reg[30]_i_1_n_8 ;
  wire \addr_reg[30]_i_1_n_9 ;
  wire \addr_reg[38]_i_1_n_0 ;
  wire \addr_reg[38]_i_1_n_1 ;
  wire \addr_reg[38]_i_1_n_10 ;
  wire \addr_reg[38]_i_1_n_11 ;
  wire \addr_reg[38]_i_1_n_12 ;
  wire \addr_reg[38]_i_1_n_13 ;
  wire \addr_reg[38]_i_1_n_14 ;
  wire \addr_reg[38]_i_1_n_15 ;
  wire \addr_reg[38]_i_1_n_2 ;
  wire \addr_reg[38]_i_1_n_3 ;
  wire \addr_reg[38]_i_1_n_4 ;
  wire \addr_reg[38]_i_1_n_5 ;
  wire \addr_reg[38]_i_1_n_6 ;
  wire \addr_reg[38]_i_1_n_7 ;
  wire \addr_reg[38]_i_1_n_8 ;
  wire \addr_reg[38]_i_1_n_9 ;
  wire \addr_reg[46]_i_1_n_0 ;
  wire \addr_reg[46]_i_1_n_1 ;
  wire \addr_reg[46]_i_1_n_10 ;
  wire \addr_reg[46]_i_1_n_11 ;
  wire \addr_reg[46]_i_1_n_12 ;
  wire \addr_reg[46]_i_1_n_13 ;
  wire \addr_reg[46]_i_1_n_14 ;
  wire \addr_reg[46]_i_1_n_15 ;
  wire \addr_reg[46]_i_1_n_2 ;
  wire \addr_reg[46]_i_1_n_3 ;
  wire \addr_reg[46]_i_1_n_4 ;
  wire \addr_reg[46]_i_1_n_5 ;
  wire \addr_reg[46]_i_1_n_6 ;
  wire \addr_reg[46]_i_1_n_7 ;
  wire \addr_reg[46]_i_1_n_8 ;
  wire \addr_reg[46]_i_1_n_9 ;
  wire \addr_reg[54]_i_1_n_0 ;
  wire \addr_reg[54]_i_1_n_1 ;
  wire \addr_reg[54]_i_1_n_10 ;
  wire \addr_reg[54]_i_1_n_11 ;
  wire \addr_reg[54]_i_1_n_12 ;
  wire \addr_reg[54]_i_1_n_13 ;
  wire \addr_reg[54]_i_1_n_14 ;
  wire \addr_reg[54]_i_1_n_15 ;
  wire \addr_reg[54]_i_1_n_2 ;
  wire \addr_reg[54]_i_1_n_3 ;
  wire \addr_reg[54]_i_1_n_4 ;
  wire \addr_reg[54]_i_1_n_5 ;
  wire \addr_reg[54]_i_1_n_6 ;
  wire \addr_reg[54]_i_1_n_7 ;
  wire \addr_reg[54]_i_1_n_8 ;
  wire \addr_reg[54]_i_1_n_9 ;
  wire \addr_reg[62]_i_1_n_0 ;
  wire \addr_reg[62]_i_1_n_1 ;
  wire \addr_reg[62]_i_1_n_10 ;
  wire \addr_reg[62]_i_1_n_11 ;
  wire \addr_reg[62]_i_1_n_12 ;
  wire \addr_reg[62]_i_1_n_13 ;
  wire \addr_reg[62]_i_1_n_14 ;
  wire \addr_reg[62]_i_1_n_15 ;
  wire \addr_reg[62]_i_1_n_2 ;
  wire \addr_reg[62]_i_1_n_3 ;
  wire \addr_reg[62]_i_1_n_4 ;
  wire \addr_reg[62]_i_1_n_5 ;
  wire \addr_reg[62]_i_1_n_6 ;
  wire \addr_reg[62]_i_1_n_7 ;
  wire \addr_reg[62]_i_1_n_8 ;
  wire \addr_reg[62]_i_1_n_9 ;
  wire \addr_reg[63]_i_2_n_15 ;
  wire awvalid_r_reg_0;
  wire [55:0]baseAddr;
  wire clk;
  wire ctrl_done;
  wire ctrl_start;
  wire ctrl_start_d1;
  wire [55:0]data;
  wire done0;
  wire [3:0]final_burst_len;
  wire inst_aw_transaction_cntr_n_0;
  wire inst_aw_transaction_cntr_n_1;
  wire inst_b_transaction_cntr_n_0;
  wire inst_burst_cntr_n_1;
  wire inst_burst_cntr_n_2;
  wire inst_burst_cntr_n_3;
  wire inst_burst_cntr_n_4;
  wire inst_burst_cntr_n_5;
  wire inst_burst_cntr_n_6;
  wire inst_w_to_aw_cntr_n_0;
  wire inst_w_to_aw_cntr_n_1;
  wire inst_w_transaction_cntr_n_0;
  wire inst_w_transaction_cntr_n_1;
  wire inst_w_transaction_cntr_n_2;
  wire inst_w_transaction_cntr_n_3;
  wire is_zero_r;
  wire is_zero_r_reg;
  wire [56:0]m_axi_AWADDR;
  wire [3:0]m_axi_AWLEN;
  wire m_axi_AWREADY;
  wire m_axi_BVALID;
  wire [127:0]m_axi_WDATA;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire m_axi_wvalid_i;
  wire rd_en0;
  wire [15:0]req_len;
  wire rst_n;
  wire [127:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_n;
  wire s_axis_tvalid;
  wire stall_aw;
  wire start;
  wire start_reg_rep__0_n_0;
  wire start_reg_rep_n_0;
  wire [59:0]total_len_r1;
  wire \total_len_r[20]_i_2_n_0 ;
  wire \total_len_r[20]_i_3_n_0 ;
  wire \total_len_r[20]_i_4_n_0 ;
  wire \total_len_r[20]_i_5_n_0 ;
  wire \total_len_r[20]_i_6_n_0 ;
  wire \total_len_r[20]_i_7_n_0 ;
  wire \total_len_r[20]_i_8_n_0 ;
  wire \total_len_r[8]_i_2_n_0 ;
  wire \total_len_r[8]_i_3_n_0 ;
  wire \total_len_r[8]_i_4_n_0 ;
  wire \total_len_r[8]_i_5_n_0 ;
  wire \total_len_r[8]_i_6_n_0 ;
  wire \total_len_r[8]_i_7_n_0 ;
  wire \total_len_r[8]_i_8_n_0 ;
  wire \total_len_r[8]_i_9_n_0 ;
  wire \total_len_r_reg[20]_i_1_n_1 ;
  wire \total_len_r_reg[20]_i_1_n_2 ;
  wire \total_len_r_reg[20]_i_1_n_3 ;
  wire \total_len_r_reg[20]_i_1_n_4 ;
  wire \total_len_r_reg[20]_i_1_n_5 ;
  wire \total_len_r_reg[20]_i_1_n_6 ;
  wire \total_len_r_reg[20]_i_1_n_7 ;
  wire \total_len_r_reg[8]_i_1_n_0 ;
  wire \total_len_r_reg[8]_i_1_n_1 ;
  wire \total_len_r_reg[8]_i_1_n_2 ;
  wire \total_len_r_reg[8]_i_1_n_3 ;
  wire \total_len_r_reg[8]_i_1_n_4 ;
  wire \total_len_r_reg[8]_i_1_n_5 ;
  wire \total_len_r_reg[8]_i_1_n_6 ;
  wire \total_len_r_reg[8]_i_1_n_7 ;
  wire \total_len_r_reg_n_0_[0] ;
  wire \total_len_r_reg_n_0_[1] ;
  wire \total_len_r_reg_n_0_[2] ;
  wire \total_len_r_reg_n_0_[3] ;
  wire w_running;
  wire wfirst;
  wire wfirst_d1;
  wire wfirst_d10;
  wire wfirst_pulse;
  wire wfirst_pulse0;
  wire [7:0]\NLW_addr_reg[63]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_addr_reg[63]_i_2_O_UNCONNECTED ;
  wire NLW_inst_xpm_fifo_sync_almost_empty_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_almost_full_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_dbiterr_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_empty_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_overflow_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_prog_empty_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_prog_full_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_rd_rst_busy_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_sbiterr_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_underflow_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_wr_ack_UNCONNECTED;
  wire NLW_inst_xpm_fifo_sync_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_inst_xpm_fifo_sync_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_inst_xpm_fifo_sync_wr_data_count_UNCONNECTED;
  wire [7:7]\NLW_total_len_r_reg[20]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \addr[14]_i_10 
       (.I0(m_axi_AWADDR[0]),
        .I1(start_reg_rep_n_0),
        .O(\addr[14]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr[14]_i_2 
       (.I0(start_reg_rep_n_0),
        .O(\addr[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_3 
       (.I0(addr_offset_r[14]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[7]),
        .O(\addr[14]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_4 
       (.I0(addr_offset_r[13]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[6]),
        .O(\addr[14]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_5 
       (.I0(addr_offset_r[12]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[5]),
        .O(\addr[14]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_6 
       (.I0(addr_offset_r[11]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[4]),
        .O(\addr[14]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_7 
       (.I0(addr_offset_r[10]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[3]),
        .O(\addr[14]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_i_8 
       (.I0(addr_offset_r[9]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[2]),
        .O(\addr[14]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \addr[14]_i_9 
       (.I0(m_axi_AWADDR[1]),
        .I1(addr_offset_r[8]),
        .I2(start_reg_rep_n_0),
        .O(\addr[14]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_2 
       (.I0(addr_offset_r[22]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[15]),
        .O(\addr[22]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_3 
       (.I0(addr_offset_r[21]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[14]),
        .O(\addr[22]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_4 
       (.I0(addr_offset_r[20]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[13]),
        .O(\addr[22]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_5 
       (.I0(addr_offset_r[19]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[12]),
        .O(\addr[22]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_6 
       (.I0(addr_offset_r[18]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[11]),
        .O(\addr[22]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_7 
       (.I0(addr_offset_r[17]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[10]),
        .O(\addr[22]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_8 
       (.I0(addr_offset_r[16]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[9]),
        .O(\addr[22]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_i_9 
       (.I0(addr_offset_r[15]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[8]),
        .O(\addr[22]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_2 
       (.I0(addr_offset_r[30]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[23]),
        .O(\addr[30]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_3 
       (.I0(addr_offset_r[29]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[22]),
        .O(\addr[30]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_4 
       (.I0(addr_offset_r[28]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[21]),
        .O(\addr[30]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_5 
       (.I0(addr_offset_r[27]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[20]),
        .O(\addr[30]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_6 
       (.I0(addr_offset_r[26]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[19]),
        .O(\addr[30]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_7 
       (.I0(addr_offset_r[25]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[18]),
        .O(\addr[30]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_8 
       (.I0(addr_offset_r[24]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[17]),
        .O(\addr[30]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_i_9 
       (.I0(addr_offset_r[23]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[16]),
        .O(\addr[30]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_2 
       (.I0(addr_offset_r[38]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[31]),
        .O(\addr[38]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_3 
       (.I0(addr_offset_r[37]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[30]),
        .O(\addr[38]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_4 
       (.I0(addr_offset_r[36]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[29]),
        .O(\addr[38]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_5 
       (.I0(addr_offset_r[35]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[28]),
        .O(\addr[38]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_6 
       (.I0(addr_offset_r[34]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[27]),
        .O(\addr[38]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_7 
       (.I0(addr_offset_r[33]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[26]),
        .O(\addr[38]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_8 
       (.I0(addr_offset_r[32]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[25]),
        .O(\addr[38]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[38]_i_9 
       (.I0(addr_offset_r[31]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[24]),
        .O(\addr[38]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_2 
       (.I0(addr_offset_r[46]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[39]),
        .O(\addr[46]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_3 
       (.I0(addr_offset_r[45]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[38]),
        .O(\addr[46]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_4 
       (.I0(addr_offset_r[44]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[37]),
        .O(\addr[46]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_5 
       (.I0(addr_offset_r[43]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[36]),
        .O(\addr[46]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_6 
       (.I0(addr_offset_r[42]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[35]),
        .O(\addr[46]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_7 
       (.I0(addr_offset_r[41]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[34]),
        .O(\addr[46]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_8 
       (.I0(addr_offset_r[40]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[33]),
        .O(\addr[46]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[46]_i_9 
       (.I0(addr_offset_r[39]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[32]),
        .O(\addr[46]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_2 
       (.I0(addr_offset_r[54]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[47]),
        .O(\addr[54]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_3 
       (.I0(addr_offset_r[53]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[46]),
        .O(\addr[54]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_4 
       (.I0(addr_offset_r[52]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[45]),
        .O(\addr[54]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_5 
       (.I0(addr_offset_r[51]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[44]),
        .O(\addr[54]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_6 
       (.I0(addr_offset_r[50]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[43]),
        .O(\addr[54]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_7 
       (.I0(addr_offset_r[49]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[42]),
        .O(\addr[54]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_8 
       (.I0(addr_offset_r[48]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[41]),
        .O(\addr[54]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[54]_i_9 
       (.I0(addr_offset_r[47]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[40]),
        .O(\addr[54]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_2 
       (.I0(addr_offset_r[62]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[55]),
        .O(\addr[62]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_3 
       (.I0(addr_offset_r[61]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[54]),
        .O(\addr[62]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_4 
       (.I0(addr_offset_r[60]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[53]),
        .O(\addr[62]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_5 
       (.I0(addr_offset_r[59]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[52]),
        .O(\addr[62]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_6 
       (.I0(addr_offset_r[58]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[51]),
        .O(\addr[62]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_7 
       (.I0(addr_offset_r[57]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[50]),
        .O(\addr[62]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_8 
       (.I0(addr_offset_r[56]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[49]),
        .O(\addr[62]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[62]_i_9 
       (.I0(addr_offset_r[55]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[48]),
        .O(\addr[62]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_3 
       (.I0(addr_offset_r[63]),
        .I1(start_reg_rep_n_0),
        .I2(m_axi_AWADDR[56]),
        .O(\addr[63]_i_3_n_0 ));
  FDRE \addr_offset_r_reg[10] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[2]),
        .Q(addr_offset_r[10]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[11] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[3]),
        .Q(addr_offset_r[11]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[12] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[4]),
        .Q(addr_offset_r[12]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[13] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[5]),
        .Q(addr_offset_r[13]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[14] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[6]),
        .Q(addr_offset_r[14]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[15] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[7]),
        .Q(addr_offset_r[15]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[16] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[8]),
        .Q(addr_offset_r[16]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[17] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[9]),
        .Q(addr_offset_r[17]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[18] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[10]),
        .Q(addr_offset_r[18]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[19] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[11]),
        .Q(addr_offset_r[19]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[20] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[12]),
        .Q(addr_offset_r[20]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[21] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[13]),
        .Q(addr_offset_r[21]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[22] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[14]),
        .Q(addr_offset_r[22]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[23] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[15]),
        .Q(addr_offset_r[23]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[24] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[16]),
        .Q(addr_offset_r[24]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[25] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[17]),
        .Q(addr_offset_r[25]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[26] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[18]),
        .Q(addr_offset_r[26]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[27] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[19]),
        .Q(addr_offset_r[27]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[28] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[20]),
        .Q(addr_offset_r[28]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[29] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[21]),
        .Q(addr_offset_r[29]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[30] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[22]),
        .Q(addr_offset_r[30]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[31] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[23]),
        .Q(addr_offset_r[31]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[32] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[24]),
        .Q(addr_offset_r[32]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[33] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[25]),
        .Q(addr_offset_r[33]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[34] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[26]),
        .Q(addr_offset_r[34]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[35] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[27]),
        .Q(addr_offset_r[35]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[36] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[28]),
        .Q(addr_offset_r[36]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[37] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[29]),
        .Q(addr_offset_r[37]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[38] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[30]),
        .Q(addr_offset_r[38]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[39] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[31]),
        .Q(addr_offset_r[39]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[40] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[32]),
        .Q(addr_offset_r[40]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[41] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[33]),
        .Q(addr_offset_r[41]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[42] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[34]),
        .Q(addr_offset_r[42]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[43] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[35]),
        .Q(addr_offset_r[43]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[44] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[36]),
        .Q(addr_offset_r[44]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[45] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[37]),
        .Q(addr_offset_r[45]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[46] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[38]),
        .Q(addr_offset_r[46]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[47] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[39]),
        .Q(addr_offset_r[47]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[48] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[40]),
        .Q(addr_offset_r[48]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[49] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[41]),
        .Q(addr_offset_r[49]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[50] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[42]),
        .Q(addr_offset_r[50]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[51] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[43]),
        .Q(addr_offset_r[51]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[52] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[44]),
        .Q(addr_offset_r[52]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[53] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[45]),
        .Q(addr_offset_r[53]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[54] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[46]),
        .Q(addr_offset_r[54]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[55] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[47]),
        .Q(addr_offset_r[55]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[56] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[48]),
        .Q(addr_offset_r[56]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[57] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[49]),
        .Q(addr_offset_r[57]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[58] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[50]),
        .Q(addr_offset_r[58]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[59] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[51]),
        .Q(addr_offset_r[59]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[60] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[52]),
        .Q(addr_offset_r[60]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[61] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[53]),
        .Q(addr_offset_r[61]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[62] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[54]),
        .Q(addr_offset_r[62]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[63] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[55]),
        .Q(addr_offset_r[63]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[8] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[0]),
        .Q(addr_offset_r[8]),
        .R(1'b0));
  FDRE \addr_offset_r_reg[9] 
       (.C(clk),
        .CE(ctrl_start),
        .D(baseAddr[1]),
        .Q(addr_offset_r[9]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_12 ),
        .Q(m_axi_AWADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_11 ),
        .Q(m_axi_AWADDR[4]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_10 ),
        .Q(m_axi_AWADDR[5]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_9 ),
        .Q(m_axi_AWADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[14] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_8 ),
        .Q(m_axi_AWADDR[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[14]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[14]_i_1_n_0 ,\addr_reg[14]_i_1_n_1 ,\addr_reg[14]_i_1_n_2 ,\addr_reg[14]_i_1_n_3 ,\addr_reg[14]_i_1_n_4 ,\addr_reg[14]_i_1_n_5 ,\addr_reg[14]_i_1_n_6 ,\addr_reg[14]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[14]_i_2_n_0 ,1'b0}),
        .O({\addr_reg[14]_i_1_n_8 ,\addr_reg[14]_i_1_n_9 ,\addr_reg[14]_i_1_n_10 ,\addr_reg[14]_i_1_n_11 ,\addr_reg[14]_i_1_n_12 ,\addr_reg[14]_i_1_n_13 ,\addr_reg[14]_i_1_n_14 ,\addr_reg[14]_i_1_n_15 }),
        .S({\addr[14]_i_3_n_0 ,\addr[14]_i_4_n_0 ,\addr[14]_i_5_n_0 ,\addr[14]_i_6_n_0 ,\addr[14]_i_7_n_0 ,\addr[14]_i_8_n_0 ,\addr[14]_i_9_n_0 ,\addr[14]_i_10_n_0 }));
  FDRE \addr_reg[15] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_15 ),
        .Q(m_axi_AWADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[16] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_14 ),
        .Q(m_axi_AWADDR[9]),
        .R(1'b0));
  FDRE \addr_reg[17] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_13 ),
        .Q(m_axi_AWADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[18] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_12 ),
        .Q(m_axi_AWADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[19] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_11 ),
        .Q(m_axi_AWADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[20] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_10 ),
        .Q(m_axi_AWADDR[13]),
        .R(1'b0));
  FDRE \addr_reg[21] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_9 ),
        .Q(m_axi_AWADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[22] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[22]_i_1_n_8 ),
        .Q(m_axi_AWADDR[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[22]_i_1 
       (.CI(\addr_reg[14]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[22]_i_1_n_0 ,\addr_reg[22]_i_1_n_1 ,\addr_reg[22]_i_1_n_2 ,\addr_reg[22]_i_1_n_3 ,\addr_reg[22]_i_1_n_4 ,\addr_reg[22]_i_1_n_5 ,\addr_reg[22]_i_1_n_6 ,\addr_reg[22]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[22]_i_1_n_8 ,\addr_reg[22]_i_1_n_9 ,\addr_reg[22]_i_1_n_10 ,\addr_reg[22]_i_1_n_11 ,\addr_reg[22]_i_1_n_12 ,\addr_reg[22]_i_1_n_13 ,\addr_reg[22]_i_1_n_14 ,\addr_reg[22]_i_1_n_15 }),
        .S({\addr[22]_i_2_n_0 ,\addr[22]_i_3_n_0 ,\addr[22]_i_4_n_0 ,\addr[22]_i_5_n_0 ,\addr[22]_i_6_n_0 ,\addr[22]_i_7_n_0 ,\addr[22]_i_8_n_0 ,\addr[22]_i_9_n_0 }));
  FDRE \addr_reg[23] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_15 ),
        .Q(m_axi_AWADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[24] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_14 ),
        .Q(m_axi_AWADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[25] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_13 ),
        .Q(m_axi_AWADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[26] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_12 ),
        .Q(m_axi_AWADDR[19]),
        .R(1'b0));
  FDRE \addr_reg[27] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_11 ),
        .Q(m_axi_AWADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[28] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_10 ),
        .Q(m_axi_AWADDR[21]),
        .R(1'b0));
  FDRE \addr_reg[29] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_9 ),
        .Q(m_axi_AWADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[30] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[30]_i_1_n_8 ),
        .Q(m_axi_AWADDR[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[30]_i_1 
       (.CI(\addr_reg[22]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[30]_i_1_n_0 ,\addr_reg[30]_i_1_n_1 ,\addr_reg[30]_i_1_n_2 ,\addr_reg[30]_i_1_n_3 ,\addr_reg[30]_i_1_n_4 ,\addr_reg[30]_i_1_n_5 ,\addr_reg[30]_i_1_n_6 ,\addr_reg[30]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[30]_i_1_n_8 ,\addr_reg[30]_i_1_n_9 ,\addr_reg[30]_i_1_n_10 ,\addr_reg[30]_i_1_n_11 ,\addr_reg[30]_i_1_n_12 ,\addr_reg[30]_i_1_n_13 ,\addr_reg[30]_i_1_n_14 ,\addr_reg[30]_i_1_n_15 }),
        .S({\addr[30]_i_2_n_0 ,\addr[30]_i_3_n_0 ,\addr[30]_i_4_n_0 ,\addr[30]_i_5_n_0 ,\addr[30]_i_6_n_0 ,\addr[30]_i_7_n_0 ,\addr[30]_i_8_n_0 ,\addr[30]_i_9_n_0 }));
  FDRE \addr_reg[31] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_15 ),
        .Q(m_axi_AWADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[32] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_14 ),
        .Q(m_axi_AWADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[33] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_13 ),
        .Q(m_axi_AWADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[34] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_12 ),
        .Q(m_axi_AWADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[35] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_11 ),
        .Q(m_axi_AWADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[36] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_10 ),
        .Q(m_axi_AWADDR[29]),
        .R(1'b0));
  FDRE \addr_reg[37] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_9 ),
        .Q(m_axi_AWADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[38] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[38]_i_1_n_8 ),
        .Q(m_axi_AWADDR[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[38]_i_1 
       (.CI(\addr_reg[30]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[38]_i_1_n_0 ,\addr_reg[38]_i_1_n_1 ,\addr_reg[38]_i_1_n_2 ,\addr_reg[38]_i_1_n_3 ,\addr_reg[38]_i_1_n_4 ,\addr_reg[38]_i_1_n_5 ,\addr_reg[38]_i_1_n_6 ,\addr_reg[38]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[38]_i_1_n_8 ,\addr_reg[38]_i_1_n_9 ,\addr_reg[38]_i_1_n_10 ,\addr_reg[38]_i_1_n_11 ,\addr_reg[38]_i_1_n_12 ,\addr_reg[38]_i_1_n_13 ,\addr_reg[38]_i_1_n_14 ,\addr_reg[38]_i_1_n_15 }),
        .S({\addr[38]_i_2_n_0 ,\addr[38]_i_3_n_0 ,\addr[38]_i_4_n_0 ,\addr[38]_i_5_n_0 ,\addr[38]_i_6_n_0 ,\addr[38]_i_7_n_0 ,\addr[38]_i_8_n_0 ,\addr[38]_i_9_n_0 }));
  FDRE \addr_reg[39] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_15 ),
        .Q(m_axi_AWADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[40] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_14 ),
        .Q(m_axi_AWADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[41] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_13 ),
        .Q(m_axi_AWADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[42] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_12 ),
        .Q(m_axi_AWADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[43] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_11 ),
        .Q(m_axi_AWADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[44] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_10 ),
        .Q(m_axi_AWADDR[37]),
        .R(1'b0));
  FDRE \addr_reg[45] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_9 ),
        .Q(m_axi_AWADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[46] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[46]_i_1_n_8 ),
        .Q(m_axi_AWADDR[39]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[46]_i_1 
       (.CI(\addr_reg[38]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[46]_i_1_n_0 ,\addr_reg[46]_i_1_n_1 ,\addr_reg[46]_i_1_n_2 ,\addr_reg[46]_i_1_n_3 ,\addr_reg[46]_i_1_n_4 ,\addr_reg[46]_i_1_n_5 ,\addr_reg[46]_i_1_n_6 ,\addr_reg[46]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[46]_i_1_n_8 ,\addr_reg[46]_i_1_n_9 ,\addr_reg[46]_i_1_n_10 ,\addr_reg[46]_i_1_n_11 ,\addr_reg[46]_i_1_n_12 ,\addr_reg[46]_i_1_n_13 ,\addr_reg[46]_i_1_n_14 ,\addr_reg[46]_i_1_n_15 }),
        .S({\addr[46]_i_2_n_0 ,\addr[46]_i_3_n_0 ,\addr[46]_i_4_n_0 ,\addr[46]_i_5_n_0 ,\addr[46]_i_6_n_0 ,\addr[46]_i_7_n_0 ,\addr[46]_i_8_n_0 ,\addr[46]_i_9_n_0 }));
  FDRE \addr_reg[47] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_15 ),
        .Q(m_axi_AWADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[48] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_14 ),
        .Q(m_axi_AWADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[49] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_13 ),
        .Q(m_axi_AWADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[50] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_12 ),
        .Q(m_axi_AWADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[51] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_11 ),
        .Q(m_axi_AWADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[52] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_10 ),
        .Q(m_axi_AWADDR[45]),
        .R(1'b0));
  FDRE \addr_reg[53] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_9 ),
        .Q(m_axi_AWADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[54] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[54]_i_1_n_8 ),
        .Q(m_axi_AWADDR[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[54]_i_1 
       (.CI(\addr_reg[46]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[54]_i_1_n_0 ,\addr_reg[54]_i_1_n_1 ,\addr_reg[54]_i_1_n_2 ,\addr_reg[54]_i_1_n_3 ,\addr_reg[54]_i_1_n_4 ,\addr_reg[54]_i_1_n_5 ,\addr_reg[54]_i_1_n_6 ,\addr_reg[54]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[54]_i_1_n_8 ,\addr_reg[54]_i_1_n_9 ,\addr_reg[54]_i_1_n_10 ,\addr_reg[54]_i_1_n_11 ,\addr_reg[54]_i_1_n_12 ,\addr_reg[54]_i_1_n_13 ,\addr_reg[54]_i_1_n_14 ,\addr_reg[54]_i_1_n_15 }),
        .S({\addr[54]_i_2_n_0 ,\addr[54]_i_3_n_0 ,\addr[54]_i_4_n_0 ,\addr[54]_i_5_n_0 ,\addr[54]_i_6_n_0 ,\addr[54]_i_7_n_0 ,\addr[54]_i_8_n_0 ,\addr[54]_i_9_n_0 }));
  FDRE \addr_reg[55] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_15 ),
        .Q(m_axi_AWADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[56] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_14 ),
        .Q(m_axi_AWADDR[49]),
        .R(1'b0));
  FDRE \addr_reg[57] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_13 ),
        .Q(m_axi_AWADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[58] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_12 ),
        .Q(m_axi_AWADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[59] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_11 ),
        .Q(m_axi_AWADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[60] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_10 ),
        .Q(m_axi_AWADDR[53]),
        .R(1'b0));
  FDRE \addr_reg[61] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_9 ),
        .Q(m_axi_AWADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[62] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[62]_i_1_n_8 ),
        .Q(m_axi_AWADDR[55]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[62]_i_1 
       (.CI(\addr_reg[54]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[62]_i_1_n_0 ,\addr_reg[62]_i_1_n_1 ,\addr_reg[62]_i_1_n_2 ,\addr_reg[62]_i_1_n_3 ,\addr_reg[62]_i_1_n_4 ,\addr_reg[62]_i_1_n_5 ,\addr_reg[62]_i_1_n_6 ,\addr_reg[62]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[62]_i_1_n_8 ,\addr_reg[62]_i_1_n_9 ,\addr_reg[62]_i_1_n_10 ,\addr_reg[62]_i_1_n_11 ,\addr_reg[62]_i_1_n_12 ,\addr_reg[62]_i_1_n_13 ,\addr_reg[62]_i_1_n_14 ,\addr_reg[62]_i_1_n_15 }),
        .S({\addr[62]_i_2_n_0 ,\addr[62]_i_3_n_0 ,\addr[62]_i_4_n_0 ,\addr[62]_i_5_n_0 ,\addr[62]_i_6_n_0 ,\addr[62]_i_7_n_0 ,\addr[62]_i_8_n_0 ,\addr[62]_i_9_n_0 }));
  FDRE \addr_reg[63] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[63]_i_2_n_15 ),
        .Q(m_axi_AWADDR[56]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[63]_i_2 
       (.CI(\addr_reg[62]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_addr_reg[63]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[63]_i_2_O_UNCONNECTED [7:1],\addr_reg[63]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[63]_i_3_n_0 }));
  FDRE \addr_reg[7] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_15 ),
        .Q(m_axi_AWADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_14 ),
        .Q(m_axi_AWADDR[1]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(clk),
        .CE(inst_aw_transaction_cntr_n_1),
        .D(\addr_reg[14]_i_1_n_13 ),
        .Q(m_axi_AWADDR[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_w_to_aw_cntr_n_1),
        .Q(awvalid_r_reg_0),
        .R(inst_aw_transaction_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ctrl_start_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_start),
        .Q(ctrl_start_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .D(done0),
        .Q(ctrl_done),
        .R(1'b0));
  FDRE \final_burst_len_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_len_r_reg_n_0_[0] ),
        .Q(final_burst_len[0]),
        .R(1'b0));
  FDRE \final_burst_len_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_len_r_reg_n_0_[1] ),
        .Q(final_burst_len[1]),
        .R(1'b0));
  FDRE \final_burst_len_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_len_r_reg_n_0_[2] ),
        .Q(final_burst_len[2]),
        .R(1'b0));
  FDRE \final_burst_len_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\total_len_r_reg_n_0_[3] ),
        .Q(final_burst_len[3]),
        .R(1'b0));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized2 inst_aw_to_b_transaction_cntr
       (.clk(clk),
        .\count_r_reg[0]_0 (inst_aw_transaction_cntr_n_0),
        .\count_r_reg[3]_0 (inst_w_to_aw_cntr_n_0),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_BVALID(m_axi_BVALID),
        .stall_aw(stall_aw));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0 inst_aw_transaction_cntr
       (.Q(final_burst_len),
        .clk(clk),
        .\count_r_reg[0]_0 (start_reg_rep_n_0),
        .\count_r_reg[0]_1 (awvalid_r_reg_0),
        .data({data[55],data[16],data[11:0]}),
        .is_zero_r_i_4__1_0(inst_w_to_aw_cntr_n_0),
        .is_zero_r_reg_0(inst_b_transaction_cntr_n_0),
        .m_axi_AWLEN(m_axi_AWLEN),
        .m_axi_AWREADY(m_axi_AWREADY),
        .rst_n(rst_n),
        .rst_n_0(inst_aw_transaction_cntr_n_0),
        .start(start),
        .start_reg_rep(inst_aw_transaction_cntr_n_1));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0_0 inst_b_transaction_cntr
       (.clk(clk),
        .\count_r_reg[55]_0 (inst_aw_transaction_cntr_n_0),
        .data({data[55],data[16],data[11:0]}),
        .done0(done0),
        .is_zero_r_reg_0(start_reg_rep__0_n_0),
        .m_axi_BVALID(m_axi_BVALID),
        .start(start),
        .\total_len_r_reg[8] (inst_b_transaction_cntr_n_0));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter inst_burst_cntr
       (.D(inst_w_transaction_cntr_n_1),
        .E(is_zero_r),
        .Q(final_burst_len[3:1]),
        .clk(clk),
        .\count_r_reg[0]_0 (inst_burst_cntr_n_2),
        .\count_r_reg[0]_1 (inst_aw_transaction_cntr_n_0),
        .\count_r_reg[1]_0 (inst_w_transaction_cntr_n_2),
        .\count_r_reg[3]_0 (inst_burst_cntr_n_4),
        .data_valid(m_axi_wvalid_i),
        .is_zero_r_reg_0(is_zero_r_reg),
        .is_zero_r_reg_1(inst_burst_cntr_n_3),
        .is_zero_r_reg_2(inst_burst_cntr_n_5),
        .is_zero_r_reg_3(inst_burst_cntr_n_6),
        .is_zero_r_reg_4(inst_w_transaction_cntr_n_3),
        .m_axi_WREADY(m_axi_WREADY),
        .start(start),
        .start_reg(inst_burst_cntr_n_1),
        .w_running(w_running),
        .w_running_reg(inst_w_transaction_cntr_n_0),
        .wfirst(wfirst));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized1 inst_w_to_aw_cntr
       (.clk(clk),
        .\count_r_reg[3]_0 (inst_aw_transaction_cntr_n_0),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_AWREADY_0(inst_w_to_aw_cntr_n_0),
        .m_axi_AWREADY_1(inst_w_to_aw_cntr_n_1),
        .stall_aw(stall_aw),
        .wfirst_pulse(wfirst_pulse));
  cus_m_axi_s_128_ultra_swr_engine_0_0_axi_counter__parameterized0_1 inst_w_transaction_cntr
       (.D(inst_w_transaction_cntr_n_1),
        .E(is_zero_r),
        .Q(final_burst_len),
        .clk(clk),
        .\count_r_reg[0]_0 (inst_burst_cntr_n_1),
        .\count_r_reg[0]_1 (inst_burst_cntr_n_2),
        .\count_r_reg[55]_0 (inst_aw_transaction_cntr_n_0),
        .data({data[55],data[16],data[11:0]}),
        .data_valid(m_axi_wvalid_i),
        .\final_burst_len_reg[2] (inst_w_transaction_cntr_n_3),
        .is_zero_r_i_3_0(inst_burst_cntr_n_3),
        .is_zero_r_reg_0(inst_w_transaction_cntr_n_0),
        .is_zero_r_reg_1(inst_burst_cntr_n_4),
        .is_zero_r_reg_2(inst_b_transaction_cntr_n_0),
        .m_axi_WREADY(m_axi_WREADY),
        .start(start),
        .\total_len_r_reg[8] (inst_w_transaction_cntr_n_2),
        .w_running(w_running));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) 
  (* FIFO_MEMORY_TYPE = "distributed" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "5" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* READ_DATA_WIDTH = "128" *) 
  (* READ_MODE = "fwft" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "128" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_sync inst_xpm_fifo_sync
       (.almost_empty(NLW_inst_xpm_fifo_sync_almost_empty_UNCONNECTED),
        .almost_full(NLW_inst_xpm_fifo_sync_almost_full_UNCONNECTED),
        .data_valid(m_axi_wvalid_i),
        .dbiterr(NLW_inst_xpm_fifo_sync_dbiterr_UNCONNECTED),
        .din(s_axis_tdata),
        .dout(m_axi_WDATA),
        .empty(NLW_inst_xpm_fifo_sync_empty_UNCONNECTED),
        .full(s_axis_tready_n),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_inst_xpm_fifo_sync_overflow_UNCONNECTED),
        .prog_empty(NLW_inst_xpm_fifo_sync_prog_empty_UNCONNECTED),
        .prog_full(NLW_inst_xpm_fifo_sync_prog_full_UNCONNECTED),
        .rd_data_count(NLW_inst_xpm_fifo_sync_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en0),
        .rd_rst_busy(NLW_inst_xpm_fifo_sync_rd_rst_busy_UNCONNECTED),
        .rst(inst_aw_transaction_cntr_n_0),
        .sbiterr(NLW_inst_xpm_fifo_sync_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_inst_xpm_fifo_sync_underflow_UNCONNECTED),
        .wr_ack(NLW_inst_xpm_fifo_sync_wr_ack_UNCONNECTED),
        .wr_clk(clk),
        .wr_data_count(NLW_inst_xpm_fifo_sync_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_inst_xpm_fifo_sync_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    inst_xpm_fifo_sync_i_1
       (.I0(w_running),
        .I1(m_axi_WREADY),
        .O(rd_en0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_WVALID_INST_0
       (.I0(m_axi_wvalid_i),
        .I1(w_running),
        .O(m_axi_WVALID));
  LUT1 #(
    .INIT(2'h1)) 
    s_axis_tready_INST_0
       (.I0(s_axis_tready_n),
        .O(s_axis_tready));
  (* ORIG_CELL_NAME = "start_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_start_d1),
        .Q(start),
        .R(1'b0));
  (* ORIG_CELL_NAME = "start_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_reg_rep
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_start_d1),
        .Q(start_reg_rep_n_0),
        .R(1'b0));
  (* ORIG_CELL_NAME = "start_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    start_reg_rep__0
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_start_d1),
        .Q(start_reg_rep__0_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[0]_i_1 
       (.I0(req_len[0]),
        .O(total_len_r1[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_2 
       (.I0(req_len[15]),
        .O(\total_len_r[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_3 
       (.I0(req_len[14]),
        .O(\total_len_r[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_4 
       (.I0(req_len[13]),
        .O(\total_len_r[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_5 
       (.I0(req_len[12]),
        .O(\total_len_r[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_6 
       (.I0(req_len[11]),
        .O(\total_len_r[20]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_7 
       (.I0(req_len[10]),
        .O(\total_len_r[20]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[20]_i_8 
       (.I0(req_len[9]),
        .O(\total_len_r[20]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_2 
       (.I0(req_len[8]),
        .O(\total_len_r[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_3 
       (.I0(req_len[7]),
        .O(\total_len_r[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_4 
       (.I0(req_len[6]),
        .O(\total_len_r[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_5 
       (.I0(req_len[5]),
        .O(\total_len_r[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_6 
       (.I0(req_len[4]),
        .O(\total_len_r[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_7 
       (.I0(req_len[3]),
        .O(\total_len_r[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_8 
       (.I0(req_len[2]),
        .O(\total_len_r[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \total_len_r[8]_i_9 
       (.I0(req_len[1]),
        .O(\total_len_r[8]_i_9_n_0 ));
  FDRE \total_len_r_reg[0] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[0]),
        .Q(\total_len_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \total_len_r_reg[10] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[10]),
        .Q(data[6]),
        .R(1'b0));
  FDRE \total_len_r_reg[11] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[11]),
        .Q(data[7]),
        .R(1'b0));
  FDRE \total_len_r_reg[12] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[12]),
        .Q(data[8]),
        .R(1'b0));
  FDRE \total_len_r_reg[13] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[13]),
        .Q(data[9]),
        .R(1'b0));
  FDRE \total_len_r_reg[14] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[14]),
        .Q(data[10]),
        .R(1'b0));
  FDRE \total_len_r_reg[15] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[15]),
        .Q(data[11]),
        .R(1'b0));
  FDRE \total_len_r_reg[1] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[1]),
        .Q(\total_len_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \total_len_r_reg[20] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[59]),
        .Q(data[16]),
        .R(1'b0));
  CARRY8 \total_len_r_reg[20]_i_1 
       (.CI(\total_len_r_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_total_len_r_reg[20]_i_1_CO_UNCONNECTED [7],\total_len_r_reg[20]_i_1_n_1 ,\total_len_r_reg[20]_i_1_n_2 ,\total_len_r_reg[20]_i_1_n_3 ,\total_len_r_reg[20]_i_1_n_4 ,\total_len_r_reg[20]_i_1_n_5 ,\total_len_r_reg[20]_i_1_n_6 ,\total_len_r_reg[20]_i_1_n_7 }),
        .DI({1'b0,req_len[15:9]}),
        .O({total_len_r1[59],total_len_r1[15:9]}),
        .S({1'b1,\total_len_r[20]_i_2_n_0 ,\total_len_r[20]_i_3_n_0 ,\total_len_r[20]_i_4_n_0 ,\total_len_r[20]_i_5_n_0 ,\total_len_r[20]_i_6_n_0 ,\total_len_r[20]_i_7_n_0 ,\total_len_r[20]_i_8_n_0 }));
  FDRE \total_len_r_reg[2] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[2]),
        .Q(\total_len_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \total_len_r_reg[3] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[3]),
        .Q(\total_len_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \total_len_r_reg[4] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[4]),
        .Q(data[0]),
        .R(1'b0));
  FDRE \total_len_r_reg[59] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[59]),
        .Q(data[55]),
        .R(1'b0));
  FDRE \total_len_r_reg[5] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[5]),
        .Q(data[1]),
        .R(1'b0));
  FDRE \total_len_r_reg[6] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[6]),
        .Q(data[2]),
        .R(1'b0));
  FDRE \total_len_r_reg[7] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[7]),
        .Q(data[3]),
        .R(1'b0));
  FDRE \total_len_r_reg[8] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[8]),
        .Q(data[4]),
        .R(1'b0));
  CARRY8 \total_len_r_reg[8]_i_1 
       (.CI(req_len[0]),
        .CI_TOP(1'b0),
        .CO({\total_len_r_reg[8]_i_1_n_0 ,\total_len_r_reg[8]_i_1_n_1 ,\total_len_r_reg[8]_i_1_n_2 ,\total_len_r_reg[8]_i_1_n_3 ,\total_len_r_reg[8]_i_1_n_4 ,\total_len_r_reg[8]_i_1_n_5 ,\total_len_r_reg[8]_i_1_n_6 ,\total_len_r_reg[8]_i_1_n_7 }),
        .DI(req_len[8:1]),
        .O(total_len_r1[8:1]),
        .S({\total_len_r[8]_i_2_n_0 ,\total_len_r[8]_i_3_n_0 ,\total_len_r[8]_i_4_n_0 ,\total_len_r[8]_i_5_n_0 ,\total_len_r[8]_i_6_n_0 ,\total_len_r[8]_i_7_n_0 ,\total_len_r[8]_i_8_n_0 ,\total_len_r[8]_i_9_n_0 }));
  FDRE \total_len_r_reg[9] 
       (.C(clk),
        .CE(ctrl_start),
        .D(total_len_r1[9]),
        .Q(data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_running_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_burst_cntr_n_5),
        .Q(w_running),
        .R(inst_aw_transaction_cntr_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    wfirst_d1_i_1
       (.I0(wfirst),
        .I1(m_axi_wvalid_i),
        .I2(w_running),
        .O(wfirst_d10));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(wfirst_d10),
        .Q(wfirst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    wfirst_pulse_i_1
       (.I0(w_running),
        .I1(m_axi_wvalid_i),
        .I2(wfirst),
        .I3(wfirst_d1),
        .O(wfirst_pulse0));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_pulse_reg
       (.C(clk),
        .CE(1'b1),
        .D(wfirst_pulse0),
        .Q(wfirst_pulse),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    wfirst_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_burst_cntr_n_6),
        .Q(wfirst),
        .S(inst_aw_transaction_cntr_n_0));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized2
   (leaving_empty0,
    Q,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    enb,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    full,
    E,
    clr_full,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    rd_clk);
  output leaving_empty0;
  output [3:0]Q;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output enb;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input full;
  input [0:0]E;
  input clr_full;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire enb;
  wire full;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(enb),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000003B2A2A2A)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(full),
        .I1(enb),
        .I2(leaving_empty0),
        .I3(going_full1),
        .I4(E),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_empty0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(enb));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized2_2
   (ram_empty_i0,
    Q,
    enb,
    leaving_empty0,
    E,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    \count_value_i_reg[3]_0 ,
    rd_clk);
  output ram_empty_i0;
  output [3:0]Q;
  input enb;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
  input [3:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  input [0:0]\count_value_i_reg[3]_0 ;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire enb;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire rd_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(enb),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized3
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_clk;
  wire rd_en;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized3_3
   (Q,
    \count_value_i_reg[0]_0 ,
    E,
    rd_clk);
  output [3:0]Q;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire rd_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001111100011111" *) (* EN_AE = "1'b1" *) (* EN_AF = "1'b1" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_UF = "1'b1" *) 
(* EN_WACK = "1'b1" *) (* EN_WDC = "1'b1" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "2048" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "3" *) (* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "5" *) (* RD_DATA_COUNT_WIDTH = "5" *) 
(* RD_DC_WIDTH_EXT = "5" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "4" *) (* READ_DATA_WIDTH = "128" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "128" *) 
(* WR_DATA_COUNT_WIDTH = "5" *) (* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) 
(* WR_PNTR_WIDTH = "4" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "7" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [127:0]din;
  output full;
  output full_n;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [127:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire clr_full;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [127:0]din;
  wire [127:0]dout;
  wire full;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rd_clk;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire rdp_inst_n_5;
  wire rdp_inst_n_6;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_en;
  wire [3:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [127:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .O(data_valid_fwft1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3575)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_i_1 
       (.I0(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .I3(rd_en),
        .O(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fwft.gdvld_fwft.data_valid_fwft_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(rdp_inst_n_5),
        .Q(full),
        .S(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "128" *) 
  (* BYTE_WRITE_WIDTH_B = "128" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "2048" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "128" *) 
  (* P_MIN_WIDTH_DATA_A = "128" *) 
  (* P_MIN_WIDTH_DATA_B = "128" *) 
  (* P_MIN_WIDTH_DATA_ECC = "128" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "128" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "4" *) 
  (* P_WIDTH_ADDR_READ_B = "4" *) 
  (* P_WIDTH_ADDR_WRITE_A = "4" *) 
  (* P_WIDTH_ADDR_WRITE_B = "4" *) 
  (* P_WIDTH_COL_WRITE_A = "128" *) 
  (* P_WIDTH_COL_WRITE_B = "128" *) 
  (* READ_DATA_WIDTH_A = "128" *) 
  (* READ_DATA_WIDTH_B = "128" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "128" *) 
  (* WRITE_DATA_WIDTH_B = "128" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "128" *) 
  (* rstb_loop_iter = "128" *) 
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(rd_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [127:0]),
        .doutb(dout),
        .ena(ram_wr_en_pf),
        .enb(rdp_inst_n_6),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized2 rdp_inst
       (.E(ram_wr_en_pf),
        .Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .enb(rdp_inst_n_6),
        .full(full),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_5),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized3 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized2_2 wrp_inst
       (.E(ram_wr_en_pf),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .enb(rdp_inst_n_6),
        .\gen_pntr_flags_cc.ram_empty_i_reg ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .rd_clk(rd_clk));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_counter_updn__parameterized3_3 wrpp1_inst
       (.E(ram_wr_en_pf),
        .Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .rd_clk(rd_clk));
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_pf),
        .Q(xpm_fifo_rst_inst_n_1),
        .full(full),
        .rd_clk(rd_clk),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    rd_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input rd_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rd_clk;
  wire rst;
  wire rst_d1;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_rst
   (E,
    Q,
    rst,
    wr_en,
    full,
    rst_d1,
    rd_clk);
  output [0:0]E;
  output [0:0]Q;
  input rst;
  input wr_en;
  input full;
  input rst_d1;
  input rd_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire full;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rd_clk;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(full),
        .I2(Q),
        .I3(rst_d1),
        .O(E));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0001111100011111" *) (* FIFO_MEMORY_TYPE = "distributed" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "1" *) (* ORIG_REF_NAME = "xpm_fifo_sync" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "5" *) (* P_COMMON_CLOCK = "1" *) 
(* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "1" *) (* P_READ_MODE = "1" *) 
(* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "5" *) (* READ_DATA_WIDTH = "128" *) 
(* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "1F1F" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "128" *) (* WR_DATA_COUNT_WIDTH = "5" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [127:0]din;
  output full;
  output prog_full;
  output [4:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [127:0]dout;
  output empty;
  output prog_empty;
  output [4:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire data_valid;
  wire [127:0]din;
  wire [127:0]dout;
  wire full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001111100011111" *) 
  (* EN_AE = "1'b1" *) 
  (* EN_AF = "1'b1" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b1" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "2048" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "3" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "5" *) 
  (* RD_DATA_COUNT_WIDTH = "5" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "128" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "1F1F" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "128" *) 
  (* WR_DATA_COUNT_WIDTH = "5" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(data_valid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(wr_clk),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "128" *) (* BYTE_WRITE_WIDTH_B = "128" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "2048" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) 
(* P_MIN_WIDTH_DATA = "128" *) (* P_MIN_WIDTH_DATA_A = "128" *) (* P_MIN_WIDTH_DATA_B = "128" *) 
(* P_MIN_WIDTH_DATA_ECC = "128" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "128" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) 
(* P_WIDTH_ADDR_READ_B = "4" *) (* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) 
(* P_WIDTH_COL_WRITE_A = "128" *) (* P_WIDTH_COL_WRITE_B = "128" *) (* READ_DATA_WIDTH_A = "128" *) 
(* READ_DATA_WIDTH_B = "128" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "128" *) (* WRITE_DATA_WIDTH_B = "128" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "128" *) 
(* rstb_loop_iter = "128" *) 
module cus_m_axi_s_128_ultra_swr_engine_0_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [3:0]addra;
  input [127:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [127:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [127:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [127:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [127:0]dina;
  wire [127:0]doutb;
  wire ena;
  wire enb;
  wire [127:0]\gen_rd_b.doutb_reg ;
  wire [127:0]\gen_rd_b.doutb_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOE_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOF_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOG_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(\gen_rd_b.doutb_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[100] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [100]),
        .Q(\gen_rd_b.doutb_reg [100]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[101] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [101]),
        .Q(\gen_rd_b.doutb_reg [101]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[102] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [102]),
        .Q(\gen_rd_b.doutb_reg [102]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[103] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [103]),
        .Q(\gen_rd_b.doutb_reg [103]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[104] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [104]),
        .Q(\gen_rd_b.doutb_reg [104]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[105] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [105]),
        .Q(\gen_rd_b.doutb_reg [105]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[106] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [106]),
        .Q(\gen_rd_b.doutb_reg [106]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[107] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [107]),
        .Q(\gen_rd_b.doutb_reg [107]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[108] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [108]),
        .Q(\gen_rd_b.doutb_reg [108]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[109] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [109]),
        .Q(\gen_rd_b.doutb_reg [109]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [10]),
        .Q(\gen_rd_b.doutb_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[110] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [110]),
        .Q(\gen_rd_b.doutb_reg [110]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[111] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [111]),
        .Q(\gen_rd_b.doutb_reg [111]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[112] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [112]),
        .Q(\gen_rd_b.doutb_reg [112]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[113] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [113]),
        .Q(\gen_rd_b.doutb_reg [113]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[114] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [114]),
        .Q(\gen_rd_b.doutb_reg [114]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[115] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [115]),
        .Q(\gen_rd_b.doutb_reg [115]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[116] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [116]),
        .Q(\gen_rd_b.doutb_reg [116]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[117] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [117]),
        .Q(\gen_rd_b.doutb_reg [117]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[118] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [118]),
        .Q(\gen_rd_b.doutb_reg [118]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[119] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [119]),
        .Q(\gen_rd_b.doutb_reg [119]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [11]),
        .Q(\gen_rd_b.doutb_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[120] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [120]),
        .Q(\gen_rd_b.doutb_reg [120]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[121] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [121]),
        .Q(\gen_rd_b.doutb_reg [121]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[122] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [122]),
        .Q(\gen_rd_b.doutb_reg [122]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[123] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [123]),
        .Q(\gen_rd_b.doutb_reg [123]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[124] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [124]),
        .Q(\gen_rd_b.doutb_reg [124]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[125] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [125]),
        .Q(\gen_rd_b.doutb_reg [125]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[126] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [126]),
        .Q(\gen_rd_b.doutb_reg [126]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[127] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [127]),
        .Q(\gen_rd_b.doutb_reg [127]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [12]),
        .Q(\gen_rd_b.doutb_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [13]),
        .Q(\gen_rd_b.doutb_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[14] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [14]),
        .Q(\gen_rd_b.doutb_reg [14]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[15] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [15]),
        .Q(\gen_rd_b.doutb_reg [15]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[16] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [16]),
        .Q(\gen_rd_b.doutb_reg [16]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[17] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [17]),
        .Q(\gen_rd_b.doutb_reg [17]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[18] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [18]),
        .Q(\gen_rd_b.doutb_reg [18]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[19] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [19]),
        .Q(\gen_rd_b.doutb_reg [19]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(\gen_rd_b.doutb_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[20] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [20]),
        .Q(\gen_rd_b.doutb_reg [20]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[21] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [21]),
        .Q(\gen_rd_b.doutb_reg [21]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[22] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [22]),
        .Q(\gen_rd_b.doutb_reg [22]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[23] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [23]),
        .Q(\gen_rd_b.doutb_reg [23]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[24] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [24]),
        .Q(\gen_rd_b.doutb_reg [24]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[25] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [25]),
        .Q(\gen_rd_b.doutb_reg [25]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[26] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [26]),
        .Q(\gen_rd_b.doutb_reg [26]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[27] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [27]),
        .Q(\gen_rd_b.doutb_reg [27]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[28] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [28]),
        .Q(\gen_rd_b.doutb_reg [28]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[29] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [29]),
        .Q(\gen_rd_b.doutb_reg [29]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(\gen_rd_b.doutb_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[30] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [30]),
        .Q(\gen_rd_b.doutb_reg [30]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[31] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [31]),
        .Q(\gen_rd_b.doutb_reg [31]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[32] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [32]),
        .Q(\gen_rd_b.doutb_reg [32]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[33] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [33]),
        .Q(\gen_rd_b.doutb_reg [33]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[34] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [34]),
        .Q(\gen_rd_b.doutb_reg [34]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[35] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [35]),
        .Q(\gen_rd_b.doutb_reg [35]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[36] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [36]),
        .Q(\gen_rd_b.doutb_reg [36]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[37] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [37]),
        .Q(\gen_rd_b.doutb_reg [37]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[38] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [38]),
        .Q(\gen_rd_b.doutb_reg [38]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[39] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [39]),
        .Q(\gen_rd_b.doutb_reg [39]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(\gen_rd_b.doutb_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[40] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [40]),
        .Q(\gen_rd_b.doutb_reg [40]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[41] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [41]),
        .Q(\gen_rd_b.doutb_reg [41]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[42] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [42]),
        .Q(\gen_rd_b.doutb_reg [42]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[43] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [43]),
        .Q(\gen_rd_b.doutb_reg [43]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[44] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [44]),
        .Q(\gen_rd_b.doutb_reg [44]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[45] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [45]),
        .Q(\gen_rd_b.doutb_reg [45]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[46] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [46]),
        .Q(\gen_rd_b.doutb_reg [46]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[47] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [47]),
        .Q(\gen_rd_b.doutb_reg [47]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[48] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [48]),
        .Q(\gen_rd_b.doutb_reg [48]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[49] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [49]),
        .Q(\gen_rd_b.doutb_reg [49]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(\gen_rd_b.doutb_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[50] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [50]),
        .Q(\gen_rd_b.doutb_reg [50]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[51] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [51]),
        .Q(\gen_rd_b.doutb_reg [51]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[52] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [52]),
        .Q(\gen_rd_b.doutb_reg [52]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[53] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [53]),
        .Q(\gen_rd_b.doutb_reg [53]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[54] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [54]),
        .Q(\gen_rd_b.doutb_reg [54]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[55] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [55]),
        .Q(\gen_rd_b.doutb_reg [55]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[56] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [56]),
        .Q(\gen_rd_b.doutb_reg [56]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[57] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [57]),
        .Q(\gen_rd_b.doutb_reg [57]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[58] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [58]),
        .Q(\gen_rd_b.doutb_reg [58]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[59] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [59]),
        .Q(\gen_rd_b.doutb_reg [59]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(\gen_rd_b.doutb_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[60] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [60]),
        .Q(\gen_rd_b.doutb_reg [60]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[61] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [61]),
        .Q(\gen_rd_b.doutb_reg [61]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[62] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [62]),
        .Q(\gen_rd_b.doutb_reg [62]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[63] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [63]),
        .Q(\gen_rd_b.doutb_reg [63]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[64] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [64]),
        .Q(\gen_rd_b.doutb_reg [64]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[65] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [65]),
        .Q(\gen_rd_b.doutb_reg [65]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[66] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [66]),
        .Q(\gen_rd_b.doutb_reg [66]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[67] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [67]),
        .Q(\gen_rd_b.doutb_reg [67]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[68] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [68]),
        .Q(\gen_rd_b.doutb_reg [68]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[69] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [69]),
        .Q(\gen_rd_b.doutb_reg [69]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(\gen_rd_b.doutb_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[70] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [70]),
        .Q(\gen_rd_b.doutb_reg [70]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[71] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [71]),
        .Q(\gen_rd_b.doutb_reg [71]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[72] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [72]),
        .Q(\gen_rd_b.doutb_reg [72]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[73] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [73]),
        .Q(\gen_rd_b.doutb_reg [73]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[74] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [74]),
        .Q(\gen_rd_b.doutb_reg [74]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[75] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [75]),
        .Q(\gen_rd_b.doutb_reg [75]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[76] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [76]),
        .Q(\gen_rd_b.doutb_reg [76]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[77] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [77]),
        .Q(\gen_rd_b.doutb_reg [77]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[78] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [78]),
        .Q(\gen_rd_b.doutb_reg [78]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[79] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [79]),
        .Q(\gen_rd_b.doutb_reg [79]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(\gen_rd_b.doutb_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[80] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [80]),
        .Q(\gen_rd_b.doutb_reg [80]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[81] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [81]),
        .Q(\gen_rd_b.doutb_reg [81]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[82] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [82]),
        .Q(\gen_rd_b.doutb_reg [82]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[83] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [83]),
        .Q(\gen_rd_b.doutb_reg [83]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[84] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [84]),
        .Q(\gen_rd_b.doutb_reg [84]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[85] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [85]),
        .Q(\gen_rd_b.doutb_reg [85]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[86] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [86]),
        .Q(\gen_rd_b.doutb_reg [86]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[87] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [87]),
        .Q(\gen_rd_b.doutb_reg [87]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[88] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [88]),
        .Q(\gen_rd_b.doutb_reg [88]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[89] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [89]),
        .Q(\gen_rd_b.doutb_reg [89]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [8]),
        .Q(\gen_rd_b.doutb_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[90] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [90]),
        .Q(\gen_rd_b.doutb_reg [90]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[91] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [91]),
        .Q(\gen_rd_b.doutb_reg [91]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[92] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [92]),
        .Q(\gen_rd_b.doutb_reg [92]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[93] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [93]),
        .Q(\gen_rd_b.doutb_reg [93]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[94] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [94]),
        .Q(\gen_rd_b.doutb_reg [94]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[95] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [95]),
        .Q(\gen_rd_b.doutb_reg [95]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[96] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [96]),
        .Q(\gen_rd_b.doutb_reg [96]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[97] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [97]),
        .Q(\gen_rd_b.doutb_reg [97]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[98] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [98]),
        .Q(\gen_rd_b.doutb_reg [98]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[99] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [99]),
        .Q(\gen_rd_b.doutb_reg [99]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [9]),
        .Q(\gen_rd_b.doutb_reg [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][100] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [100]),
        .Q(doutb[100]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][101] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [101]),
        .Q(doutb[101]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][102] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [102]),
        .Q(doutb[102]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][103] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [103]),
        .Q(doutb[103]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][104] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [104]),
        .Q(doutb[104]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][105] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [105]),
        .Q(doutb[105]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][106] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [106]),
        .Q(doutb[106]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][107] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [107]),
        .Q(doutb[107]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][108] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [108]),
        .Q(doutb[108]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][109] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [109]),
        .Q(doutb[109]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][110] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [110]),
        .Q(doutb[110]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][111] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [111]),
        .Q(doutb[111]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][112] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [112]),
        .Q(doutb[112]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][113] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [113]),
        .Q(doutb[113]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][114] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [114]),
        .Q(doutb[114]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][115] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [115]),
        .Q(doutb[115]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][116] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [116]),
        .Q(doutb[116]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][117] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [117]),
        .Q(doutb[117]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][118] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [118]),
        .Q(doutb[118]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][119] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [119]),
        .Q(doutb[119]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][120] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [120]),
        .Q(doutb[120]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][121] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [121]),
        .Q(doutb[121]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][122] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [122]),
        .Q(doutb[122]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][123] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [123]),
        .Q(doutb[123]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][124] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [124]),
        .Q(doutb[124]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][125] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [125]),
        .Q(doutb[125]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][126] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [126]),
        .Q(doutb[126]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][127] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [127]),
        .Q(doutb[127]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [14]),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [15]),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [16]),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [17]),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [18]),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [19]),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [20]),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [21]),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [22]),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [23]),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [24]),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [25]),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [26]),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [27]),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [28]),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [29]),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [30]),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [31]),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [32]),
        .Q(doutb[32]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [33]),
        .Q(doutb[33]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [34]),
        .Q(doutb[34]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [35]),
        .Q(doutb[35]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [36]),
        .Q(doutb[36]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [37]),
        .Q(doutb[37]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [38]),
        .Q(doutb[38]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [39]),
        .Q(doutb[39]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [40]),
        .Q(doutb[40]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [41]),
        .Q(doutb[41]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [42]),
        .Q(doutb[42]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [43]),
        .Q(doutb[43]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [44]),
        .Q(doutb[44]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [45]),
        .Q(doutb[45]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [46]),
        .Q(doutb[46]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [47]),
        .Q(doutb[47]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [48]),
        .Q(doutb[48]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [49]),
        .Q(doutb[49]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [50]),
        .Q(doutb[50]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [51]),
        .Q(doutb[51]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [52]),
        .Q(doutb[52]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [53]),
        .Q(doutb[53]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [54]),
        .Q(doutb[54]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [55]),
        .Q(doutb[55]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [56]),
        .Q(doutb[56]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [57]),
        .Q(doutb[57]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [58]),
        .Q(doutb[58]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [59]),
        .Q(doutb[59]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [60]),
        .Q(doutb[60]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [61]),
        .Q(doutb[61]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [62]),
        .Q(doutb[62]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [63]),
        .Q(doutb[63]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][64] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [64]),
        .Q(doutb[64]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][65] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [65]),
        .Q(doutb[65]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][66] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [66]),
        .Q(doutb[66]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][67] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [67]),
        .Q(doutb[67]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][68] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [68]),
        .Q(doutb[68]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][69] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [69]),
        .Q(doutb[69]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][70] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [70]),
        .Q(doutb[70]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][71] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [71]),
        .Q(doutb[71]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][72] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [72]),
        .Q(doutb[72]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][73] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [73]),
        .Q(doutb[73]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][74] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [74]),
        .Q(doutb[74]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][75] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [75]),
        .Q(doutb[75]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][76] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [76]),
        .Q(doutb[76]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][77] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [77]),
        .Q(doutb[77]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][78] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [78]),
        .Q(doutb[78]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][79] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [79]),
        .Q(doutb[79]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][80] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [80]),
        .Q(doutb[80]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][81] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [81]),
        .Q(doutb[81]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][82] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [82]),
        .Q(doutb[82]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][83] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [83]),
        .Q(doutb[83]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][84] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [84]),
        .Q(doutb[84]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][85] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [85]),
        .Q(doutb[85]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][86] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [86]),
        .Q(doutb[86]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][87] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [87]),
        .Q(doutb[87]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][88] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [88]),
        .Q(doutb[88]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][89] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [89]),
        .Q(doutb[89]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][90] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [90]),
        .Q(doutb[90]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][91] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [91]),
        .Q(doutb[91]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][92] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [92]),
        .Q(doutb[92]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][93] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [93]),
        .Q(doutb[93]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][94] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [94]),
        .Q(doutb[94]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][95] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [95]),
        .Q(doutb[95]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][96] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [96]),
        .Q(doutb[96]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][97] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [97]),
        .Q(doutb[97]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][98] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [98]),
        .Q(doutb[98]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][99] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [99]),
        .Q(doutb[99]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "13" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[1:0]),
        .DIB(dina[3:2]),
        .DIC(dina[5:4]),
        .DID(dina[7:6]),
        .DIE(dina[9:8]),
        .DIF(dina[11:10]),
        .DIG(dina[13:12]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [1:0]),
        .DOB(\gen_rd_b.doutb_reg0 [3:2]),
        .DOC(\gen_rd_b.doutb_reg0 [5:4]),
        .DOD(\gen_rd_b.doutb_reg0 [7:6]),
        .DOE(\gen_rd_b.doutb_reg0 [9:8]),
        .DOF(\gen_rd_b.doutb_reg0 [11:10]),
        .DOG(\gen_rd_b.doutb_reg0 [13:12]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "112" *) 
  (* ram_slice_end = "125" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[113:112]),
        .DIB(dina[115:114]),
        .DIC(dina[117:116]),
        .DID(dina[119:118]),
        .DIE(dina[121:120]),
        .DIF(dina[123:122]),
        .DIG(dina[125:124]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [113:112]),
        .DOB(\gen_rd_b.doutb_reg0 [115:114]),
        .DOC(\gen_rd_b.doutb_reg0 [117:116]),
        .DOD(\gen_rd_b.doutb_reg0 [119:118]),
        .DOE(\gen_rd_b.doutb_reg0 [121:120]),
        .DOF(\gen_rd_b.doutb_reg0 [123:122]),
        .DOG(\gen_rd_b.doutb_reg0 [125:124]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "127" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[127:126]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [127:126]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOD_UNCONNECTED [1:0]),
        .DOE(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "27" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[15:14]),
        .DIB(dina[17:16]),
        .DIC(dina[19:18]),
        .DID(dina[21:20]),
        .DIE(dina[23:22]),
        .DIF(dina[25:24]),
        .DIG(dina[27:26]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [15:14]),
        .DOB(\gen_rd_b.doutb_reg0 [17:16]),
        .DOC(\gen_rd_b.doutb_reg0 [19:18]),
        .DOD(\gen_rd_b.doutb_reg0 [21:20]),
        .DOE(\gen_rd_b.doutb_reg0 [23:22]),
        .DOF(\gen_rd_b.doutb_reg0 [25:24]),
        .DOG(\gen_rd_b.doutb_reg0 [27:26]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "41" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[29:28]),
        .DIB(dina[31:30]),
        .DIC(dina[33:32]),
        .DID(dina[35:34]),
        .DIE(dina[37:36]),
        .DIF(dina[39:38]),
        .DIG(dina[41:40]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [29:28]),
        .DOB(\gen_rd_b.doutb_reg0 [31:30]),
        .DOC(\gen_rd_b.doutb_reg0 [33:32]),
        .DOD(\gen_rd_b.doutb_reg0 [35:34]),
        .DOE(\gen_rd_b.doutb_reg0 [37:36]),
        .DOF(\gen_rd_b.doutb_reg0 [39:38]),
        .DOG(\gen_rd_b.doutb_reg0 [41:40]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "55" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[43:42]),
        .DIB(dina[45:44]),
        .DIC(dina[47:46]),
        .DID(dina[49:48]),
        .DIE(dina[51:50]),
        .DIF(dina[53:52]),
        .DIG(dina[55:54]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [43:42]),
        .DOB(\gen_rd_b.doutb_reg0 [45:44]),
        .DOC(\gen_rd_b.doutb_reg0 [47:46]),
        .DOD(\gen_rd_b.doutb_reg0 [49:48]),
        .DOE(\gen_rd_b.doutb_reg0 [51:50]),
        .DOF(\gen_rd_b.doutb_reg0 [53:52]),
        .DOG(\gen_rd_b.doutb_reg0 [55:54]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "69" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[57:56]),
        .DIB(dina[59:58]),
        .DIC(dina[61:60]),
        .DID(dina[63:62]),
        .DIE(dina[65:64]),
        .DIF(dina[67:66]),
        .DIG(dina[69:68]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [57:56]),
        .DOB(\gen_rd_b.doutb_reg0 [59:58]),
        .DOC(\gen_rd_b.doutb_reg0 [61:60]),
        .DOD(\gen_rd_b.doutb_reg0 [63:62]),
        .DOE(\gen_rd_b.doutb_reg0 [65:64]),
        .DOF(\gen_rd_b.doutb_reg0 [67:66]),
        .DOG(\gen_rd_b.doutb_reg0 [69:68]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "70" *) 
  (* ram_slice_end = "83" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[71:70]),
        .DIB(dina[73:72]),
        .DIC(dina[75:74]),
        .DID(dina[77:76]),
        .DIE(dina[79:78]),
        .DIF(dina[81:80]),
        .DIG(dina[83:82]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [71:70]),
        .DOB(\gen_rd_b.doutb_reg0 [73:72]),
        .DOC(\gen_rd_b.doutb_reg0 [75:74]),
        .DOD(\gen_rd_b.doutb_reg0 [77:76]),
        .DOE(\gen_rd_b.doutb_reg0 [79:78]),
        .DOF(\gen_rd_b.doutb_reg0 [81:80]),
        .DOG(\gen_rd_b.doutb_reg0 [83:82]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "97" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[85:84]),
        .DIB(dina[87:86]),
        .DIC(dina[89:88]),
        .DID(dina[91:90]),
        .DIE(dina[93:92]),
        .DIF(dina[95:94]),
        .DIG(dina[97:96]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [85:84]),
        .DOB(\gen_rd_b.doutb_reg0 [87:86]),
        .DOC(\gen_rd_b.doutb_reg0 [89:88]),
        .DOD(\gen_rd_b.doutb_reg0 [91:90]),
        .DOE(\gen_rd_b.doutb_reg0 [93:92]),
        .DOF(\gen_rd_b.doutb_reg0 [95:94]),
        .DOG(\gen_rd_b.doutb_reg0 [97:96]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "98" *) 
  (* ram_slice_end = "111" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[99:98]),
        .DIB(dina[101:100]),
        .DIC(dina[103:102]),
        .DID(dina[105:104]),
        .DIE(dina[107:106]),
        .DIF(dina[109:108]),
        .DIG(dina[111:110]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [99:98]),
        .DOB(\gen_rd_b.doutb_reg0 [101:100]),
        .DOC(\gen_rd_b.doutb_reg0 [103:102]),
        .DOD(\gen_rd_b.doutb_reg0 [105:104]),
        .DOE(\gen_rd_b.doutb_reg0 [107:106]),
        .DOF(\gen_rd_b.doutb_reg0 [109:108]),
        .DOG(\gen_rd_b.doutb_reg0 [111:110]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
