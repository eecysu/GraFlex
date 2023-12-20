// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jun 16 20:03:32 2022
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top custom_m_axi_128_mread_master_0_0 -prefix
//               custom_m_axi_128_mread_master_0_0_ custom_m_axi_128_mread_master_0_0_sim_netlist.v
// Design      : custom_m_axi_128_mread_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module custom_m_axi_128_mread_master_0_0_axi_counter
   (SR,
    \num_transactions_reg[1] ,
    \num_transactions_reg[2] ,
    \num_transactions_reg[1]_0 ,
    arvalid_r_reg,
    clk,
    m_axi_ARREADY,
    \count_r_reg[0]_0 ,
    start,
    rst_n,
    Q,
    ar_idle);
  output [0:0]SR;
  output \num_transactions_reg[1] ;
  output \num_transactions_reg[2] ;
  output \num_transactions_reg[1]_0 ;
  output arvalid_r_reg;
  input clk;
  input m_axi_ARREADY;
  input \count_r_reg[0]_0 ;
  input start;
  input rst_n;
  input [3:0]Q;
  input ar_idle;

  wire [3:0]Q;
  wire [0:0]SR;
  wire ar_idle;
  wire arvalid_r_reg;
  wire clk;
  wire count_r;
  wire [3:0]count_r_reg;
  wire \count_r_reg[0]_0 ;
  wire is_zero_r0;
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_reg_n_0;
  wire m_axi_ARREADY;
  wire \num_transactions_reg[1] ;
  wire \num_transactions_reg[1]_0 ;
  wire \num_transactions_reg[2] ;
  wire [3:0]p_0_in__1;
  wire rst_n;
  wire start;

  LUT5 #(
    .INIT(32'h00FF0080)) 
    ar_idle_i_1
       (.I0(\count_r_reg[0]_0 ),
        .I1(m_axi_ARREADY),
        .I2(is_zero_r_reg_n_0),
        .I3(start),
        .I4(ar_idle),
        .O(arvalid_r_reg));
  LUT1 #(
    .INIT(2'h1)) 
    arvalid_r_i_1
       (.I0(rst_n),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \count_r[0]_i_1__0 
       (.I0(Q[0]),
        .I1(start),
        .I2(count_r_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h9F90909F)) 
    \count_r[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[1]),
        .O(p_0_in__1[1]));
  LUT5 #(
    .INIT(32'h77744447)) 
    \count_r[2]_i_1__0 
       (.I0(\num_transactions_reg[1] ),
        .I1(start),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[2]),
        .O(p_0_in__1[2]));
  LUT3 #(
    .INIT(8'h1E)) 
    \count_r[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\num_transactions_reg[1] ));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[3]_i_1__0 
       (.I0(start),
        .I1(m_axi_ARREADY),
        .I2(\count_r_reg[0]_0 ),
        .O(count_r));
  LUT6 #(
    .INIT(64'h7777777444444447)) 
    \count_r[3]_i_2__0 
       (.I0(\num_transactions_reg[2] ),
        .I1(start),
        .I2(count_r_reg[2]),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[1]),
        .I5(count_r_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \count_r[3]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\num_transactions_reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(count_r),
        .D(p_0_in__1[0]),
        .Q(count_r_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(count_r),
        .D(p_0_in__1[1]),
        .Q(count_r_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(count_r),
        .D(p_0_in__1[2]),
        .Q(count_r_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(count_r),
        .D(p_0_in__1[3]),
        .Q(count_r_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555DFFF5555D000)) 
    is_zero_r_i_1__0
       (.I0(\num_transactions_reg[1]_0 ),
        .I1(is_zero_r0),
        .I2(m_axi_ARREADY),
        .I3(\count_r_reg[0]_0 ),
        .I4(start),
        .I5(is_zero_r_reg_n_0),
        .O(is_zero_r_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    is_zero_r_i_2
       (.I0(m_axi_ARREADY),
        .I1(\count_r_reg[0]_0 ),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[3]),
        .I4(count_r_reg[2]),
        .I5(count_r_reg[0]),
        .O(is_zero_r0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    is_zero_r_i_2__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(start),
        .O(\num_transactions_reg[1]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_zero_r_i_1__0_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(SR));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module custom_m_axi_128_mread_master_0_0_axi_counter_0
   (is_zero_r_reg_0,
    req_done,
    SR,
    clk,
    m_axi_RVALID,
    m_axi_RLAST,
    rst_n,
    start,
    Q,
    \count_r_reg[2]_0 ,
    \count_r_reg[3]_0 ,
    is_zero_r_reg_1);
  output [0:0]is_zero_r_reg_0;
  output req_done;
  input [0:0]SR;
  input clk;
  input m_axi_RVALID;
  input m_axi_RLAST;
  input rst_n;
  input start;
  input [1:0]Q;
  input \count_r_reg[2]_0 ;
  input \count_r_reg[3]_0 ;
  input is_zero_r_reg_1;

  wire [1:0]Q;
  wire [0:0]SR;
  wire clk;
  wire \count_r[3]_i_1_n_0 ;
  wire [3:0]count_r_reg;
  wire \count_r_reg[2]_0 ;
  wire \count_r_reg[3]_0 ;
  wire is_zero_r_i_1_n_0;
  wire is_zero_r_i_3_n_0;
  wire [0:0]is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_n_0;
  wire m_axi_RLAST;
  wire m_axi_RVALID;
  wire [3:0]p_0_in__0;
  wire req_done;
  wire rst_n;
  wire start;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \count_r[0]_i_1 
       (.I0(Q[0]),
        .I1(start),
        .I2(count_r_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h9F90909F)) 
    \count_r[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(start),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[1]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'h77744447)) 
    \count_r[2]_i_1 
       (.I0(\count_r_reg[2]_0 ),
        .I1(start),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[2]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[3]_i_1 
       (.I0(start),
        .I1(m_axi_RLAST),
        .I2(m_axi_RVALID),
        .O(\count_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777444444447)) 
    \count_r[3]_i_2 
       (.I0(\count_r_reg[3]_0 ),
        .I1(start),
        .I2(count_r_reg[2]),
        .I3(count_r_reg[0]),
        .I4(count_r_reg[1]),
        .I5(count_r_reg[3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r[3]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(count_r_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[3]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(count_r_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[3]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(count_r_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[3]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(count_r_reg[3]),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555DFFF5555D000)) 
    is_zero_r_i_1
       (.I0(is_zero_r_reg_1),
        .I1(is_zero_r_i_3_n_0),
        .I2(m_axi_RLAST),
        .I3(m_axi_RVALID),
        .I4(start),
        .I5(is_zero_r_reg_n_0),
        .O(is_zero_r_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    is_zero_r_i_3
       (.I0(m_axi_RLAST),
        .I1(m_axi_RVALID),
        .I2(count_r_reg[1]),
        .I3(count_r_reg[3]),
        .I4(count_r_reg[2]),
        .I5(count_r_reg[0]),
        .O(is_zero_r_i_3_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(is_zero_r_i_1_n_0),
        .Q(is_zero_r_reg_n_0),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    req_done_INST_0
       (.I0(m_axi_RLAST),
        .I1(m_axi_RVALID),
        .I2(is_zero_r_reg_n_0),
        .O(req_done));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \trans_counter[3]_i_1 
       (.I0(is_zero_r_reg_n_0),
        .I1(m_axi_RVALID),
        .I2(m_axi_RLAST),
        .I3(rst_n),
        .O(is_zero_r_reg_0));
endmodule

(* CHECK_LICENSE_TYPE = "custom_m_axi_128_mread_master_0_0,mread_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "mread_master,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module custom_m_axi_128_mread_master_0_0
   (clk,
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
    m_axis_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [63:0]baseAddr;
  input [31:0]req_din;
  output req_full_n;
  input req_wr_en;
  input req_start;
  output req_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARVALID" *) output m_axi_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLEN" *) output [7:0]m_axi_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARADDR" *) output [63:0]m_axi_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARID" *) output [5:0]m_axi_ARID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARSIZE" *) output [2:0]m_axi_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARBURST" *) output [1:0]m_axi_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARLOCK" *) output [1:0]m_axi_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARCACHE" *) output [3:0]m_axi_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARQOS" *) output [3:0]m_axi_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREGION" *) output [3:0]m_axi_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi ARREADY" *) input m_axi_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RVALID" *) input m_axi_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RDATA" *) input [127:0]m_axi_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RLAST" *) input m_axi_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RID" *) input [5:0]m_axi_RID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RRESP" *) input [1:0]m_axi_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 0, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TKEEP" *) output [15:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TSTRB" *) output [15:0]m_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_axis_tdata;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]baseAddr;
  wire clk;
  wire [63:0]m_axi_ARADDR;
  wire [3:0]\^m_axi_ARLEN ;
  wire m_axi_ARREADY;
  wire m_axi_ARVALID;
  wire [127:0]m_axi_RDATA;
  wire m_axi_RLAST;
  wire m_axi_RVALID;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire [31:0]req_din;
  wire req_done;
  wire req_full_n;
  wire req_start;
  wire req_wr_en;
  wire rst_n;

  assign m_axi_ARBURST[1] = \<const0> ;
  assign m_axi_ARBURST[0] = \<const1> ;
  assign m_axi_ARCACHE[3] = \<const0> ;
  assign m_axi_ARCACHE[2] = \<const0> ;
  assign m_axi_ARCACHE[1] = \<const1> ;
  assign m_axi_ARCACHE[0] = \<const1> ;
  assign m_axi_ARID[5] = \<const0> ;
  assign m_axi_ARID[4] = \<const0> ;
  assign m_axi_ARID[3] = \<const0> ;
  assign m_axi_ARID[2] = \<const0> ;
  assign m_axi_ARID[1] = \<const0> ;
  assign m_axi_ARID[0] = \<const0> ;
  assign m_axi_ARLEN[7] = \<const0> ;
  assign m_axi_ARLEN[6] = \<const0> ;
  assign m_axi_ARLEN[5] = \<const0> ;
  assign m_axi_ARLEN[4] = \<const0> ;
  assign m_axi_ARLEN[3:0] = \^m_axi_ARLEN [3:0];
  assign m_axi_ARLOCK[1] = \<const0> ;
  assign m_axi_ARLOCK[0] = \<const0> ;
  assign m_axi_ARQOS[3] = \<const0> ;
  assign m_axi_ARQOS[2] = \<const0> ;
  assign m_axi_ARQOS[1] = \<const0> ;
  assign m_axi_ARQOS[0] = \<const0> ;
  assign m_axi_ARREGION[3] = \<const0> ;
  assign m_axi_ARREGION[2] = \<const0> ;
  assign m_axi_ARREGION[1] = \<const0> ;
  assign m_axi_ARREGION[0] = \<const0> ;
  assign m_axi_ARSIZE[2] = \<const1> ;
  assign m_axi_ARSIZE[1] = \<const0> ;
  assign m_axi_ARSIZE[0] = \<const1> ;
  assign m_axi_RREADY = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  custom_m_axi_128_mread_master_0_0_mread_master inst
       (.arvalid_r_reg_0(m_axi_ARVALID),
        .baseAddr(baseAddr),
        .clk(clk),
        .m_axi_ARADDR(m_axi_ARADDR),
        .m_axi_ARLEN(\^m_axi_ARLEN ),
        .m_axi_ARREADY(m_axi_ARREADY),
        .m_axi_RDATA(m_axi_RDATA),
        .m_axi_RLAST(m_axi_RLAST),
        .m_axi_RVALID(m_axi_RVALID),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tvalid(m_axis_tvalid),
        .req_din(req_din),
        .req_done(req_done),
        .req_full_n(req_full_n),
        .req_start(req_start),
        .req_wr_en(req_wr_en),
        .rst_n(rst_n));
endmodule

module custom_m_axi_128_mread_master_0_0_mread_master
   (m_axi_ARLEN,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axi_ARADDR,
    req_done,
    arvalid_r_reg_0,
    m_axis_tlast,
    req_full_n,
    m_axi_RVALID,
    m_axi_RLAST,
    rst_n,
    clk,
    req_wr_en,
    req_din,
    m_axi_RDATA,
    m_axis_tready,
    req_start,
    baseAddr,
    m_axi_ARREADY);
  output [3:0]m_axi_ARLEN;
  output m_axis_tvalid;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output [63:0]m_axi_ARADDR;
  output req_done;
  output arvalid_r_reg_0;
  output m_axis_tlast;
  output req_full_n;
  input m_axi_RVALID;
  input m_axi_RLAST;
  input rst_n;
  input clk;
  input req_wr_en;
  input [31:0]req_din;
  input [127:0]m_axi_RDATA;
  input m_axis_tready;
  input req_start;
  input [63:0]baseAddr;
  input m_axi_ARREADY;

  wire ar_idle;
  wire arvalid_r_i_2_n_0;
  wire arvalid_r_reg_0;
  wire [63:0]baseAddr;
  wire clk;
  wire [31:0]cnt_item_sent_reg;
  wire \cnt_item_sent_reg[0]_i_2_n_0 ;
  wire \cnt_item_sent_reg[0]_i_2_n_1 ;
  wire \cnt_item_sent_reg[0]_i_2_n_10 ;
  wire \cnt_item_sent_reg[0]_i_2_n_11 ;
  wire \cnt_item_sent_reg[0]_i_2_n_12 ;
  wire \cnt_item_sent_reg[0]_i_2_n_13 ;
  wire \cnt_item_sent_reg[0]_i_2_n_14 ;
  wire \cnt_item_sent_reg[0]_i_2_n_15 ;
  wire \cnt_item_sent_reg[0]_i_2_n_2 ;
  wire \cnt_item_sent_reg[0]_i_2_n_3 ;
  wire \cnt_item_sent_reg[0]_i_2_n_4 ;
  wire \cnt_item_sent_reg[0]_i_2_n_5 ;
  wire \cnt_item_sent_reg[0]_i_2_n_6 ;
  wire \cnt_item_sent_reg[0]_i_2_n_7 ;
  wire \cnt_item_sent_reg[0]_i_2_n_8 ;
  wire \cnt_item_sent_reg[0]_i_2_n_9 ;
  wire \cnt_item_sent_reg[16]_i_1_n_0 ;
  wire \cnt_item_sent_reg[16]_i_1_n_1 ;
  wire \cnt_item_sent_reg[16]_i_1_n_10 ;
  wire \cnt_item_sent_reg[16]_i_1_n_11 ;
  wire \cnt_item_sent_reg[16]_i_1_n_12 ;
  wire \cnt_item_sent_reg[16]_i_1_n_13 ;
  wire \cnt_item_sent_reg[16]_i_1_n_14 ;
  wire \cnt_item_sent_reg[16]_i_1_n_15 ;
  wire \cnt_item_sent_reg[16]_i_1_n_2 ;
  wire \cnt_item_sent_reg[16]_i_1_n_3 ;
  wire \cnt_item_sent_reg[16]_i_1_n_4 ;
  wire \cnt_item_sent_reg[16]_i_1_n_5 ;
  wire \cnt_item_sent_reg[16]_i_1_n_6 ;
  wire \cnt_item_sent_reg[16]_i_1_n_7 ;
  wire \cnt_item_sent_reg[16]_i_1_n_8 ;
  wire \cnt_item_sent_reg[16]_i_1_n_9 ;
  wire \cnt_item_sent_reg[24]_i_1_n_1 ;
  wire \cnt_item_sent_reg[24]_i_1_n_10 ;
  wire \cnt_item_sent_reg[24]_i_1_n_11 ;
  wire \cnt_item_sent_reg[24]_i_1_n_12 ;
  wire \cnt_item_sent_reg[24]_i_1_n_13 ;
  wire \cnt_item_sent_reg[24]_i_1_n_14 ;
  wire \cnt_item_sent_reg[24]_i_1_n_15 ;
  wire \cnt_item_sent_reg[24]_i_1_n_2 ;
  wire \cnt_item_sent_reg[24]_i_1_n_3 ;
  wire \cnt_item_sent_reg[24]_i_1_n_4 ;
  wire \cnt_item_sent_reg[24]_i_1_n_5 ;
  wire \cnt_item_sent_reg[24]_i_1_n_6 ;
  wire \cnt_item_sent_reg[24]_i_1_n_7 ;
  wire \cnt_item_sent_reg[24]_i_1_n_8 ;
  wire \cnt_item_sent_reg[24]_i_1_n_9 ;
  wire \cnt_item_sent_reg[8]_i_1_n_0 ;
  wire \cnt_item_sent_reg[8]_i_1_n_1 ;
  wire \cnt_item_sent_reg[8]_i_1_n_10 ;
  wire \cnt_item_sent_reg[8]_i_1_n_11 ;
  wire \cnt_item_sent_reg[8]_i_1_n_12 ;
  wire \cnt_item_sent_reg[8]_i_1_n_13 ;
  wire \cnt_item_sent_reg[8]_i_1_n_14 ;
  wire \cnt_item_sent_reg[8]_i_1_n_15 ;
  wire \cnt_item_sent_reg[8]_i_1_n_2 ;
  wire \cnt_item_sent_reg[8]_i_1_n_3 ;
  wire \cnt_item_sent_reg[8]_i_1_n_4 ;
  wire \cnt_item_sent_reg[8]_i_1_n_5 ;
  wire \cnt_item_sent_reg[8]_i_1_n_6 ;
  wire \cnt_item_sent_reg[8]_i_1_n_7 ;
  wire \cnt_item_sent_reg[8]_i_1_n_8 ;
  wire \cnt_item_sent_reg[8]_i_1_n_9 ;
  wire [31:0]cnt_item_togo;
  wire \cnt_item_togo[7]_i_2_n_0 ;
  wire \cnt_item_togo[7]_i_3_n_0 ;
  wire \cnt_item_togo[7]_i_4_n_0 ;
  wire \cnt_item_togo[7]_i_5_n_0 ;
  wire \cnt_item_togo_reg[15]_i_1_n_0 ;
  wire \cnt_item_togo_reg[15]_i_1_n_1 ;
  wire \cnt_item_togo_reg[15]_i_1_n_10 ;
  wire \cnt_item_togo_reg[15]_i_1_n_11 ;
  wire \cnt_item_togo_reg[15]_i_1_n_12 ;
  wire \cnt_item_togo_reg[15]_i_1_n_13 ;
  wire \cnt_item_togo_reg[15]_i_1_n_14 ;
  wire \cnt_item_togo_reg[15]_i_1_n_15 ;
  wire \cnt_item_togo_reg[15]_i_1_n_2 ;
  wire \cnt_item_togo_reg[15]_i_1_n_3 ;
  wire \cnt_item_togo_reg[15]_i_1_n_4 ;
  wire \cnt_item_togo_reg[15]_i_1_n_5 ;
  wire \cnt_item_togo_reg[15]_i_1_n_6 ;
  wire \cnt_item_togo_reg[15]_i_1_n_7 ;
  wire \cnt_item_togo_reg[15]_i_1_n_8 ;
  wire \cnt_item_togo_reg[15]_i_1_n_9 ;
  wire \cnt_item_togo_reg[23]_i_1_n_0 ;
  wire \cnt_item_togo_reg[23]_i_1_n_1 ;
  wire \cnt_item_togo_reg[23]_i_1_n_10 ;
  wire \cnt_item_togo_reg[23]_i_1_n_11 ;
  wire \cnt_item_togo_reg[23]_i_1_n_12 ;
  wire \cnt_item_togo_reg[23]_i_1_n_13 ;
  wire \cnt_item_togo_reg[23]_i_1_n_14 ;
  wire \cnt_item_togo_reg[23]_i_1_n_15 ;
  wire \cnt_item_togo_reg[23]_i_1_n_2 ;
  wire \cnt_item_togo_reg[23]_i_1_n_3 ;
  wire \cnt_item_togo_reg[23]_i_1_n_4 ;
  wire \cnt_item_togo_reg[23]_i_1_n_5 ;
  wire \cnt_item_togo_reg[23]_i_1_n_6 ;
  wire \cnt_item_togo_reg[23]_i_1_n_7 ;
  wire \cnt_item_togo_reg[23]_i_1_n_8 ;
  wire \cnt_item_togo_reg[23]_i_1_n_9 ;
  wire \cnt_item_togo_reg[31]_i_1_n_1 ;
  wire \cnt_item_togo_reg[31]_i_1_n_10 ;
  wire \cnt_item_togo_reg[31]_i_1_n_11 ;
  wire \cnt_item_togo_reg[31]_i_1_n_12 ;
  wire \cnt_item_togo_reg[31]_i_1_n_13 ;
  wire \cnt_item_togo_reg[31]_i_1_n_14 ;
  wire \cnt_item_togo_reg[31]_i_1_n_15 ;
  wire \cnt_item_togo_reg[31]_i_1_n_2 ;
  wire \cnt_item_togo_reg[31]_i_1_n_3 ;
  wire \cnt_item_togo_reg[31]_i_1_n_4 ;
  wire \cnt_item_togo_reg[31]_i_1_n_5 ;
  wire \cnt_item_togo_reg[31]_i_1_n_6 ;
  wire \cnt_item_togo_reg[31]_i_1_n_7 ;
  wire \cnt_item_togo_reg[31]_i_1_n_8 ;
  wire \cnt_item_togo_reg[31]_i_1_n_9 ;
  wire \cnt_item_togo_reg[7]_i_1_n_0 ;
  wire \cnt_item_togo_reg[7]_i_1_n_1 ;
  wire \cnt_item_togo_reg[7]_i_1_n_10 ;
  wire \cnt_item_togo_reg[7]_i_1_n_11 ;
  wire \cnt_item_togo_reg[7]_i_1_n_12 ;
  wire \cnt_item_togo_reg[7]_i_1_n_13 ;
  wire \cnt_item_togo_reg[7]_i_1_n_14 ;
  wire \cnt_item_togo_reg[7]_i_1_n_15 ;
  wire \cnt_item_togo_reg[7]_i_1_n_2 ;
  wire \cnt_item_togo_reg[7]_i_1_n_3 ;
  wire \cnt_item_togo_reg[7]_i_1_n_4 ;
  wire \cnt_item_togo_reg[7]_i_1_n_5 ;
  wire \cnt_item_togo_reg[7]_i_1_n_6 ;
  wire \cnt_item_togo_reg[7]_i_1_n_7 ;
  wire \cnt_item_togo_reg[7]_i_1_n_8 ;
  wire \cnt_item_togo_reg[7]_i_1_n_9 ;
  wire i_axis_tlast;
  wire inst_ar_transaction_cntr_n_1;
  wire inst_ar_transaction_cntr_n_2;
  wire inst_ar_transaction_cntr_n_3;
  wire inst_ar_transaction_cntr_n_4;
  wire inst_r_transaction_cntr_n_0;
  wire [63:0]m_axi_ARADDR;
  wire \m_axi_ARADDR[0]_INST_0_i_1_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_2_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_3_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_4_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_5_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_6_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_7_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_i_8_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_n_0 ;
  wire \m_axi_ARADDR[0]_INST_0_n_1 ;
  wire \m_axi_ARADDR[0]_INST_0_n_2 ;
  wire \m_axi_ARADDR[0]_INST_0_n_3 ;
  wire \m_axi_ARADDR[0]_INST_0_n_4 ;
  wire \m_axi_ARADDR[0]_INST_0_n_5 ;
  wire \m_axi_ARADDR[0]_INST_0_n_6 ;
  wire \m_axi_ARADDR[0]_INST_0_n_7 ;
  wire \m_axi_ARADDR[16]_INST_0_i_1_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_2_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_3_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_4_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_5_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_6_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_7_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_i_8_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_n_0 ;
  wire \m_axi_ARADDR[16]_INST_0_n_1 ;
  wire \m_axi_ARADDR[16]_INST_0_n_2 ;
  wire \m_axi_ARADDR[16]_INST_0_n_3 ;
  wire \m_axi_ARADDR[16]_INST_0_n_4 ;
  wire \m_axi_ARADDR[16]_INST_0_n_5 ;
  wire \m_axi_ARADDR[16]_INST_0_n_6 ;
  wire \m_axi_ARADDR[16]_INST_0_n_7 ;
  wire \m_axi_ARADDR[24]_INST_0_i_1_n_0 ;
  wire \m_axi_ARADDR[24]_INST_0_i_2_n_0 ;
  wire \m_axi_ARADDR[24]_INST_0_i_3_n_0 ;
  wire \m_axi_ARADDR[24]_INST_0_i_4_n_0 ;
  wire \m_axi_ARADDR[24]_INST_0_n_0 ;
  wire \m_axi_ARADDR[24]_INST_0_n_1 ;
  wire \m_axi_ARADDR[24]_INST_0_n_2 ;
  wire \m_axi_ARADDR[24]_INST_0_n_3 ;
  wire \m_axi_ARADDR[24]_INST_0_n_4 ;
  wire \m_axi_ARADDR[24]_INST_0_n_5 ;
  wire \m_axi_ARADDR[24]_INST_0_n_6 ;
  wire \m_axi_ARADDR[24]_INST_0_n_7 ;
  wire \m_axi_ARADDR[32]_INST_0_n_0 ;
  wire \m_axi_ARADDR[32]_INST_0_n_1 ;
  wire \m_axi_ARADDR[32]_INST_0_n_2 ;
  wire \m_axi_ARADDR[32]_INST_0_n_3 ;
  wire \m_axi_ARADDR[32]_INST_0_n_4 ;
  wire \m_axi_ARADDR[32]_INST_0_n_5 ;
  wire \m_axi_ARADDR[32]_INST_0_n_6 ;
  wire \m_axi_ARADDR[32]_INST_0_n_7 ;
  wire \m_axi_ARADDR[40]_INST_0_n_0 ;
  wire \m_axi_ARADDR[40]_INST_0_n_1 ;
  wire \m_axi_ARADDR[40]_INST_0_n_2 ;
  wire \m_axi_ARADDR[40]_INST_0_n_3 ;
  wire \m_axi_ARADDR[40]_INST_0_n_4 ;
  wire \m_axi_ARADDR[40]_INST_0_n_5 ;
  wire \m_axi_ARADDR[40]_INST_0_n_6 ;
  wire \m_axi_ARADDR[40]_INST_0_n_7 ;
  wire \m_axi_ARADDR[48]_INST_0_n_0 ;
  wire \m_axi_ARADDR[48]_INST_0_n_1 ;
  wire \m_axi_ARADDR[48]_INST_0_n_2 ;
  wire \m_axi_ARADDR[48]_INST_0_n_3 ;
  wire \m_axi_ARADDR[48]_INST_0_n_4 ;
  wire \m_axi_ARADDR[48]_INST_0_n_5 ;
  wire \m_axi_ARADDR[48]_INST_0_n_6 ;
  wire \m_axi_ARADDR[48]_INST_0_n_7 ;
  wire \m_axi_ARADDR[56]_INST_0_n_1 ;
  wire \m_axi_ARADDR[56]_INST_0_n_2 ;
  wire \m_axi_ARADDR[56]_INST_0_n_3 ;
  wire \m_axi_ARADDR[56]_INST_0_n_4 ;
  wire \m_axi_ARADDR[56]_INST_0_n_5 ;
  wire \m_axi_ARADDR[56]_INST_0_n_6 ;
  wire \m_axi_ARADDR[56]_INST_0_n_7 ;
  wire \m_axi_ARADDR[8]_INST_0_i_1_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_2_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_3_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_4_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_5_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_6_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_7_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_i_8_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_n_0 ;
  wire \m_axi_ARADDR[8]_INST_0_n_1 ;
  wire \m_axi_ARADDR[8]_INST_0_n_2 ;
  wire \m_axi_ARADDR[8]_INST_0_n_3 ;
  wire \m_axi_ARADDR[8]_INST_0_n_4 ;
  wire \m_axi_ARADDR[8]_INST_0_n_5 ;
  wire \m_axi_ARADDR[8]_INST_0_n_6 ;
  wire \m_axi_ARADDR[8]_INST_0_n_7 ;
  wire [3:0]m_axi_ARLEN;
  wire m_axi_ARREADY;
  wire [127:0]m_axi_RDATA;
  wire m_axi_RLAST;
  wire m_axi_RVALID;
  wire [127:0]m_axis_tdata;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tlast0;
  wire m_axis_tlast0_carry__0_i_1_n_0;
  wire m_axis_tlast0_carry__0_i_2_n_0;
  wire m_axis_tlast0_carry__0_i_3_n_0;
  wire m_axis_tlast0_carry__0_i_4_n_2;
  wire m_axis_tlast0_carry__0_i_4_n_3;
  wire m_axis_tlast0_carry__0_i_4_n_4;
  wire m_axis_tlast0_carry__0_i_4_n_5;
  wire m_axis_tlast0_carry__0_i_4_n_6;
  wire m_axis_tlast0_carry__0_i_4_n_7;
  wire m_axis_tlast0_carry__0_n_6;
  wire m_axis_tlast0_carry__0_n_7;
  wire m_axis_tlast0_carry_i_10_n_0;
  wire m_axis_tlast0_carry_i_10_n_1;
  wire m_axis_tlast0_carry_i_10_n_2;
  wire m_axis_tlast0_carry_i_10_n_3;
  wire m_axis_tlast0_carry_i_10_n_4;
  wire m_axis_tlast0_carry_i_10_n_5;
  wire m_axis_tlast0_carry_i_10_n_6;
  wire m_axis_tlast0_carry_i_10_n_7;
  wire m_axis_tlast0_carry_i_11_n_0;
  wire m_axis_tlast0_carry_i_11_n_1;
  wire m_axis_tlast0_carry_i_11_n_2;
  wire m_axis_tlast0_carry_i_11_n_3;
  wire m_axis_tlast0_carry_i_11_n_4;
  wire m_axis_tlast0_carry_i_11_n_5;
  wire m_axis_tlast0_carry_i_11_n_6;
  wire m_axis_tlast0_carry_i_11_n_7;
  wire m_axis_tlast0_carry_i_1_n_0;
  wire m_axis_tlast0_carry_i_2_n_0;
  wire m_axis_tlast0_carry_i_3_n_0;
  wire m_axis_tlast0_carry_i_4_n_0;
  wire m_axis_tlast0_carry_i_5_n_0;
  wire m_axis_tlast0_carry_i_6_n_0;
  wire m_axis_tlast0_carry_i_7_n_0;
  wire m_axis_tlast0_carry_i_8_n_0;
  wire m_axis_tlast0_carry_i_9_n_0;
  wire m_axis_tlast0_carry_i_9_n_1;
  wire m_axis_tlast0_carry_i_9_n_2;
  wire m_axis_tlast0_carry_i_9_n_3;
  wire m_axis_tlast0_carry_i_9_n_4;
  wire m_axis_tlast0_carry_i_9_n_5;
  wire m_axis_tlast0_carry_i_9_n_6;
  wire m_axis_tlast0_carry_i_9_n_7;
  wire m_axis_tlast0_carry_n_0;
  wire m_axis_tlast0_carry_n_1;
  wire m_axis_tlast0_carry_n_2;
  wire m_axis_tlast0_carry_n_3;
  wire m_axis_tlast0_carry_n_4;
  wire m_axis_tlast0_carry_n_5;
  wire m_axis_tlast0_carry_n_6;
  wire m_axis_tlast0_carry_n_7;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire m_axis_tvalid;
  wire [27:0]mem_req_tuple;
  wire [3:0]num_transactions;
  wire [3:0]p_0_in;
  wire [31:0]p_0_in__2;
  wire rd_en0;
  wire [31:0]req_din;
  wire req_done;
  wire req_full;
  wire req_full_n;
  wire req_start;
  wire req_wr_en;
  wire rst_n;
  wire sel;
  wire start;
  wire trans_counter1;
  wire [3:0]trans_counter_reg;
  wire [7:7]\NLW_cnt_item_sent_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_cnt_item_togo_reg[31]_i_1_CO_UNCONNECTED ;
  wire NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_s_axis_tready_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED;
  wire [15:0]NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED;
  wire [15:0]NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED;
  wire [7:7]\NLW_m_axi_ARADDR[56]_INST_0_CO_UNCONNECTED ;
  wire [7:0]NLW_m_axis_tlast0_carry_O_UNCONNECTED;
  wire [7:3]NLW_m_axis_tlast0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_m_axis_tlast0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_m_axis_tlast0_carry__0_i_4_CO_UNCONNECTED;
  wire [7:7]NLW_m_axis_tlast0_carry__0_i_4_O_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_almost_empty_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_almost_full_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_data_valid_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_dbiterr_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_empty_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_overflow_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_prog_empty_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_prog_full_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_sbiterr_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_underflow_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_wr_ack_UNCONNECTED;
  wire NLW_mem_req_tuple_fifo_inst_wr_rst_busy_UNCONNECTED;
  wire [7:0]NLW_mem_req_tuple_fifo_inst_rd_data_count_UNCONNECTED;
  wire [7:0]NLW_mem_req_tuple_fifo_inst_wr_data_count_UNCONNECTED;

  FDSE #(
    .INIT(1'b1)) 
    ar_idle_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_ar_transaction_cntr_n_4),
        .Q(ar_idle),
        .S(trans_counter1));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h47)) 
    arvalid_r_i_2
       (.I0(m_axi_ARREADY),
        .I1(arvalid_r_reg_0),
        .I2(ar_idle),
        .O(arvalid_r_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    arvalid_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(arvalid_r_i_2_n_0),
        .Q(arvalid_r_reg_0),
        .R(trans_counter1));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_item_sent[0]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(sel));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_item_sent[0]_i_3 
       (.I0(cnt_item_sent_reg[0]),
        .O(p_0_in__2[0]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[0] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_15 ),
        .Q(cnt_item_sent_reg[0]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_item_sent_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\cnt_item_sent_reg[0]_i_2_n_0 ,\cnt_item_sent_reg[0]_i_2_n_1 ,\cnt_item_sent_reg[0]_i_2_n_2 ,\cnt_item_sent_reg[0]_i_2_n_3 ,\cnt_item_sent_reg[0]_i_2_n_4 ,\cnt_item_sent_reg[0]_i_2_n_5 ,\cnt_item_sent_reg[0]_i_2_n_6 ,\cnt_item_sent_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_item_sent_reg[0]_i_2_n_8 ,\cnt_item_sent_reg[0]_i_2_n_9 ,\cnt_item_sent_reg[0]_i_2_n_10 ,\cnt_item_sent_reg[0]_i_2_n_11 ,\cnt_item_sent_reg[0]_i_2_n_12 ,\cnt_item_sent_reg[0]_i_2_n_13 ,\cnt_item_sent_reg[0]_i_2_n_14 ,\cnt_item_sent_reg[0]_i_2_n_15 }),
        .S({cnt_item_sent_reg[7:1],p_0_in__2[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[10] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_13 ),
        .Q(cnt_item_sent_reg[10]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[11] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_12 ),
        .Q(cnt_item_sent_reg[11]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[12] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_11 ),
        .Q(cnt_item_sent_reg[12]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[13] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_10 ),
        .Q(cnt_item_sent_reg[13]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[14] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_9 ),
        .Q(cnt_item_sent_reg[14]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[15] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_8 ),
        .Q(cnt_item_sent_reg[15]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[16] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_15 ),
        .Q(cnt_item_sent_reg[16]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_item_sent_reg[16]_i_1 
       (.CI(\cnt_item_sent_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_item_sent_reg[16]_i_1_n_0 ,\cnt_item_sent_reg[16]_i_1_n_1 ,\cnt_item_sent_reg[16]_i_1_n_2 ,\cnt_item_sent_reg[16]_i_1_n_3 ,\cnt_item_sent_reg[16]_i_1_n_4 ,\cnt_item_sent_reg[16]_i_1_n_5 ,\cnt_item_sent_reg[16]_i_1_n_6 ,\cnt_item_sent_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_sent_reg[16]_i_1_n_8 ,\cnt_item_sent_reg[16]_i_1_n_9 ,\cnt_item_sent_reg[16]_i_1_n_10 ,\cnt_item_sent_reg[16]_i_1_n_11 ,\cnt_item_sent_reg[16]_i_1_n_12 ,\cnt_item_sent_reg[16]_i_1_n_13 ,\cnt_item_sent_reg[16]_i_1_n_14 ,\cnt_item_sent_reg[16]_i_1_n_15 }),
        .S(cnt_item_sent_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[17] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_14 ),
        .Q(cnt_item_sent_reg[17]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[18] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_13 ),
        .Q(cnt_item_sent_reg[18]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[19] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_12 ),
        .Q(cnt_item_sent_reg[19]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[1] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_14 ),
        .Q(cnt_item_sent_reg[1]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[20] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_11 ),
        .Q(cnt_item_sent_reg[20]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[21] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_10 ),
        .Q(cnt_item_sent_reg[21]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[22] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_9 ),
        .Q(cnt_item_sent_reg[22]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[23] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[16]_i_1_n_8 ),
        .Q(cnt_item_sent_reg[23]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[24] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_15 ),
        .Q(cnt_item_sent_reg[24]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_item_sent_reg[24]_i_1 
       (.CI(\cnt_item_sent_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cnt_item_sent_reg[24]_i_1_CO_UNCONNECTED [7],\cnt_item_sent_reg[24]_i_1_n_1 ,\cnt_item_sent_reg[24]_i_1_n_2 ,\cnt_item_sent_reg[24]_i_1_n_3 ,\cnt_item_sent_reg[24]_i_1_n_4 ,\cnt_item_sent_reg[24]_i_1_n_5 ,\cnt_item_sent_reg[24]_i_1_n_6 ,\cnt_item_sent_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_sent_reg[24]_i_1_n_8 ,\cnt_item_sent_reg[24]_i_1_n_9 ,\cnt_item_sent_reg[24]_i_1_n_10 ,\cnt_item_sent_reg[24]_i_1_n_11 ,\cnt_item_sent_reg[24]_i_1_n_12 ,\cnt_item_sent_reg[24]_i_1_n_13 ,\cnt_item_sent_reg[24]_i_1_n_14 ,\cnt_item_sent_reg[24]_i_1_n_15 }),
        .S(cnt_item_sent_reg[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[25] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_14 ),
        .Q(cnt_item_sent_reg[25]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[26] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_13 ),
        .Q(cnt_item_sent_reg[26]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[27] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_12 ),
        .Q(cnt_item_sent_reg[27]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[28] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_11 ),
        .Q(cnt_item_sent_reg[28]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[29] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_10 ),
        .Q(cnt_item_sent_reg[29]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[2] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_13 ),
        .Q(cnt_item_sent_reg[2]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[30] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_9 ),
        .Q(cnt_item_sent_reg[30]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[31] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[24]_i_1_n_8 ),
        .Q(cnt_item_sent_reg[31]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[3] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_12 ),
        .Q(cnt_item_sent_reg[3]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[4] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_11 ),
        .Q(cnt_item_sent_reg[4]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[5] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_10 ),
        .Q(cnt_item_sent_reg[5]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[6] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_9 ),
        .Q(cnt_item_sent_reg[6]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[7] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[0]_i_2_n_8 ),
        .Q(cnt_item_sent_reg[7]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[8] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_15 ),
        .Q(cnt_item_sent_reg[8]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \cnt_item_sent_reg[8]_i_1 
       (.CI(\cnt_item_sent_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_item_sent_reg[8]_i_1_n_0 ,\cnt_item_sent_reg[8]_i_1_n_1 ,\cnt_item_sent_reg[8]_i_1_n_2 ,\cnt_item_sent_reg[8]_i_1_n_3 ,\cnt_item_sent_reg[8]_i_1_n_4 ,\cnt_item_sent_reg[8]_i_1_n_5 ,\cnt_item_sent_reg[8]_i_1_n_6 ,\cnt_item_sent_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_sent_reg[8]_i_1_n_8 ,\cnt_item_sent_reg[8]_i_1_n_9 ,\cnt_item_sent_reg[8]_i_1_n_10 ,\cnt_item_sent_reg[8]_i_1_n_11 ,\cnt_item_sent_reg[8]_i_1_n_12 ,\cnt_item_sent_reg[8]_i_1_n_13 ,\cnt_item_sent_reg[8]_i_1_n_14 ,\cnt_item_sent_reg[8]_i_1_n_15 }),
        .S(cnt_item_sent_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_sent_reg[9] 
       (.C(clk),
        .CE(sel),
        .D(\cnt_item_sent_reg[8]_i_1_n_14 ),
        .Q(cnt_item_sent_reg[9]),
        .R(trans_counter1));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_item_togo[7]_i_2 
       (.I0(cnt_item_togo[3]),
        .I1(req_din[31]),
        .O(\cnt_item_togo[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_item_togo[7]_i_3 
       (.I0(cnt_item_togo[2]),
        .I1(req_din[30]),
        .O(\cnt_item_togo[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_item_togo[7]_i_4 
       (.I0(cnt_item_togo[1]),
        .I1(req_din[29]),
        .O(\cnt_item_togo[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_item_togo[7]_i_5 
       (.I0(cnt_item_togo[0]),
        .I1(req_din[28]),
        .O(\cnt_item_togo[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[0] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_15 ),
        .Q(cnt_item_togo[0]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[10] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_13 ),
        .Q(cnt_item_togo[10]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[11] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_12 ),
        .Q(cnt_item_togo[11]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[12] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_11 ),
        .Q(cnt_item_togo[12]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[13] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_10 ),
        .Q(cnt_item_togo[13]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[14] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_9 ),
        .Q(cnt_item_togo[14]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[15] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_8 ),
        .Q(cnt_item_togo[15]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_item_togo_reg[15]_i_1 
       (.CI(\cnt_item_togo_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_item_togo_reg[15]_i_1_n_0 ,\cnt_item_togo_reg[15]_i_1_n_1 ,\cnt_item_togo_reg[15]_i_1_n_2 ,\cnt_item_togo_reg[15]_i_1_n_3 ,\cnt_item_togo_reg[15]_i_1_n_4 ,\cnt_item_togo_reg[15]_i_1_n_5 ,\cnt_item_togo_reg[15]_i_1_n_6 ,\cnt_item_togo_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_togo_reg[15]_i_1_n_8 ,\cnt_item_togo_reg[15]_i_1_n_9 ,\cnt_item_togo_reg[15]_i_1_n_10 ,\cnt_item_togo_reg[15]_i_1_n_11 ,\cnt_item_togo_reg[15]_i_1_n_12 ,\cnt_item_togo_reg[15]_i_1_n_13 ,\cnt_item_togo_reg[15]_i_1_n_14 ,\cnt_item_togo_reg[15]_i_1_n_15 }),
        .S(cnt_item_togo[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[16] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_15 ),
        .Q(cnt_item_togo[16]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[17] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_14 ),
        .Q(cnt_item_togo[17]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[18] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_13 ),
        .Q(cnt_item_togo[18]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[19] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_12 ),
        .Q(cnt_item_togo[19]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[1] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_14 ),
        .Q(cnt_item_togo[1]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[20] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_11 ),
        .Q(cnt_item_togo[20]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[21] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_10 ),
        .Q(cnt_item_togo[21]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[22] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_9 ),
        .Q(cnt_item_togo[22]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[23] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[23]_i_1_n_8 ),
        .Q(cnt_item_togo[23]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_item_togo_reg[23]_i_1 
       (.CI(\cnt_item_togo_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\cnt_item_togo_reg[23]_i_1_n_0 ,\cnt_item_togo_reg[23]_i_1_n_1 ,\cnt_item_togo_reg[23]_i_1_n_2 ,\cnt_item_togo_reg[23]_i_1_n_3 ,\cnt_item_togo_reg[23]_i_1_n_4 ,\cnt_item_togo_reg[23]_i_1_n_5 ,\cnt_item_togo_reg[23]_i_1_n_6 ,\cnt_item_togo_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_togo_reg[23]_i_1_n_8 ,\cnt_item_togo_reg[23]_i_1_n_9 ,\cnt_item_togo_reg[23]_i_1_n_10 ,\cnt_item_togo_reg[23]_i_1_n_11 ,\cnt_item_togo_reg[23]_i_1_n_12 ,\cnt_item_togo_reg[23]_i_1_n_13 ,\cnt_item_togo_reg[23]_i_1_n_14 ,\cnt_item_togo_reg[23]_i_1_n_15 }),
        .S(cnt_item_togo[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[24] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_15 ),
        .Q(cnt_item_togo[24]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[25] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_14 ),
        .Q(cnt_item_togo[25]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[26] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_13 ),
        .Q(cnt_item_togo[26]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[27] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_12 ),
        .Q(cnt_item_togo[27]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[28] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_11 ),
        .Q(cnt_item_togo[28]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[29] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_10 ),
        .Q(cnt_item_togo[29]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[2] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_13 ),
        .Q(cnt_item_togo[2]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[30] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_9 ),
        .Q(cnt_item_togo[30]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[31] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[31]_i_1_n_8 ),
        .Q(cnt_item_togo[31]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_item_togo_reg[31]_i_1 
       (.CI(\cnt_item_togo_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cnt_item_togo_reg[31]_i_1_CO_UNCONNECTED [7],\cnt_item_togo_reg[31]_i_1_n_1 ,\cnt_item_togo_reg[31]_i_1_n_2 ,\cnt_item_togo_reg[31]_i_1_n_3 ,\cnt_item_togo_reg[31]_i_1_n_4 ,\cnt_item_togo_reg[31]_i_1_n_5 ,\cnt_item_togo_reg[31]_i_1_n_6 ,\cnt_item_togo_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_item_togo_reg[31]_i_1_n_8 ,\cnt_item_togo_reg[31]_i_1_n_9 ,\cnt_item_togo_reg[31]_i_1_n_10 ,\cnt_item_togo_reg[31]_i_1_n_11 ,\cnt_item_togo_reg[31]_i_1_n_12 ,\cnt_item_togo_reg[31]_i_1_n_13 ,\cnt_item_togo_reg[31]_i_1_n_14 ,\cnt_item_togo_reg[31]_i_1_n_15 }),
        .S(cnt_item_togo[31:24]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[3] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_12 ),
        .Q(cnt_item_togo[3]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[4] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_11 ),
        .Q(cnt_item_togo[4]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[5] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_10 ),
        .Q(cnt_item_togo[5]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[6] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_9 ),
        .Q(cnt_item_togo[6]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[7] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[7]_i_1_n_8 ),
        .Q(cnt_item_togo[7]),
        .R(trans_counter1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \cnt_item_togo_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\cnt_item_togo_reg[7]_i_1_n_0 ,\cnt_item_togo_reg[7]_i_1_n_1 ,\cnt_item_togo_reg[7]_i_1_n_2 ,\cnt_item_togo_reg[7]_i_1_n_3 ,\cnt_item_togo_reg[7]_i_1_n_4 ,\cnt_item_togo_reg[7]_i_1_n_5 ,\cnt_item_togo_reg[7]_i_1_n_6 ,\cnt_item_togo_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,cnt_item_togo[3:0]}),
        .O({\cnt_item_togo_reg[7]_i_1_n_8 ,\cnt_item_togo_reg[7]_i_1_n_9 ,\cnt_item_togo_reg[7]_i_1_n_10 ,\cnt_item_togo_reg[7]_i_1_n_11 ,\cnt_item_togo_reg[7]_i_1_n_12 ,\cnt_item_togo_reg[7]_i_1_n_13 ,\cnt_item_togo_reg[7]_i_1_n_14 ,\cnt_item_togo_reg[7]_i_1_n_15 }),
        .S({cnt_item_togo[7:4],\cnt_item_togo[7]_i_2_n_0 ,\cnt_item_togo[7]_i_3_n_0 ,\cnt_item_togo[7]_i_4_n_0 ,\cnt_item_togo[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[8] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_15 ),
        .Q(cnt_item_togo[8]),
        .R(trans_counter1));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_item_togo_reg[9] 
       (.C(clk),
        .CE(req_wr_en),
        .D(\cnt_item_togo_reg[15]_i_1_n_14 ),
        .Q(cnt_item_togo[9]),
        .R(trans_counter1));
  custom_m_axi_128_mread_master_0_0_axi_counter inst_ar_transaction_cntr
       (.Q(num_transactions),
        .SR(trans_counter1),
        .ar_idle(ar_idle),
        .arvalid_r_reg(inst_ar_transaction_cntr_n_4),
        .clk(clk),
        .\count_r_reg[0]_0 (arvalid_r_reg_0),
        .m_axi_ARREADY(m_axi_ARREADY),
        .\num_transactions_reg[1] (inst_ar_transaction_cntr_n_1),
        .\num_transactions_reg[1]_0 (inst_ar_transaction_cntr_n_3),
        .\num_transactions_reg[2] (inst_ar_transaction_cntr_n_2),
        .rst_n(rst_n),
        .start(start));
  (* AXIS_DATA_WIDTH = "164" *) 
  (* AXIS_FINAL_DATA_WIDTH = "164" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "256" *) 
  (* FIFO_MEMORY_TYPE = "block" *) 
  (* LOG_DEPTH_AXIS = "8" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "250" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "2" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "16" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "128" *) 
  (* TDATA_WIDTH = "128" *) 
  (* TDEST_OFFSET = "162" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "161" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "160" *) 
  (* TSTRB_OFFSET = "144" *) 
  (* TUSER_MAX_WIDTH = "3933" *) 
  (* TUSER_OFFSET = "163" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "1000" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "16" *) 
  (* XPM_MODULE = "TRUE" *) 
  custom_m_axi_128_mread_master_0_0_xpm_fifo_axis inst_axis_data_fifo
       (.almost_empty_axis(NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(i_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(m_axis_tstrb),
        .m_axis_tuser(NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .prog_empty_axis(NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED[15:0]),
        .s_aclk(clk),
        .s_aresetn(rst_n),
        .s_axis_tdata(m_axi_RDATA),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(m_axi_RLAST),
        .s_axis_tready(NLW_inst_axis_data_fifo_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(m_axi_RVALID),
        .sbiterr_axis(NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED[15:0]));
  custom_m_axi_128_mread_master_0_0_axi_counter_0 inst_r_transaction_cntr
       (.Q(num_transactions[1:0]),
        .SR(trans_counter1),
        .clk(clk),
        .\count_r_reg[2]_0 (inst_ar_transaction_cntr_n_1),
        .\count_r_reg[3]_0 (inst_ar_transaction_cntr_n_2),
        .is_zero_r_reg_0(inst_r_transaction_cntr_n_0),
        .is_zero_r_reg_1(inst_ar_transaction_cntr_n_3),
        .m_axi_RLAST(m_axi_RLAST),
        .m_axi_RVALID(m_axi_RVALID),
        .req_done(req_done),
        .rst_n(rst_n),
        .start(start));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[0]_INST_0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[0]_INST_0_n_0 ,\m_axi_ARADDR[0]_INST_0_n_1 ,\m_axi_ARADDR[0]_INST_0_n_2 ,\m_axi_ARADDR[0]_INST_0_n_3 ,\m_axi_ARADDR[0]_INST_0_n_4 ,\m_axi_ARADDR[0]_INST_0_n_5 ,\m_axi_ARADDR[0]_INST_0_n_6 ,\m_axi_ARADDR[0]_INST_0_n_7 }),
        .DI(baseAddr[7:0]),
        .O(m_axi_ARADDR[7:0]),
        .S({\m_axi_ARADDR[0]_INST_0_i_1_n_0 ,\m_axi_ARADDR[0]_INST_0_i_2_n_0 ,\m_axi_ARADDR[0]_INST_0_i_3_n_0 ,\m_axi_ARADDR[0]_INST_0_i_4_n_0 ,\m_axi_ARADDR[0]_INST_0_i_5_n_0 ,\m_axi_ARADDR[0]_INST_0_i_6_n_0 ,\m_axi_ARADDR[0]_INST_0_i_7_n_0 ,\m_axi_ARADDR[0]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_1 
       (.I0(baseAddr[7]),
        .I1(mem_req_tuple[7]),
        .O(\m_axi_ARADDR[0]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_2 
       (.I0(baseAddr[6]),
        .I1(mem_req_tuple[6]),
        .O(\m_axi_ARADDR[0]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_3 
       (.I0(baseAddr[5]),
        .I1(mem_req_tuple[5]),
        .O(\m_axi_ARADDR[0]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_4 
       (.I0(baseAddr[4]),
        .I1(mem_req_tuple[4]),
        .O(\m_axi_ARADDR[0]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_5 
       (.I0(baseAddr[3]),
        .I1(mem_req_tuple[3]),
        .O(\m_axi_ARADDR[0]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_6 
       (.I0(baseAddr[2]),
        .I1(mem_req_tuple[2]),
        .O(\m_axi_ARADDR[0]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_7 
       (.I0(baseAddr[1]),
        .I1(mem_req_tuple[1]),
        .O(\m_axi_ARADDR[0]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[0]_INST_0_i_8 
       (.I0(baseAddr[0]),
        .I1(mem_req_tuple[0]),
        .O(\m_axi_ARADDR[0]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[16]_INST_0 
       (.CI(\m_axi_ARADDR[8]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[16]_INST_0_n_0 ,\m_axi_ARADDR[16]_INST_0_n_1 ,\m_axi_ARADDR[16]_INST_0_n_2 ,\m_axi_ARADDR[16]_INST_0_n_3 ,\m_axi_ARADDR[16]_INST_0_n_4 ,\m_axi_ARADDR[16]_INST_0_n_5 ,\m_axi_ARADDR[16]_INST_0_n_6 ,\m_axi_ARADDR[16]_INST_0_n_7 }),
        .DI(baseAddr[23:16]),
        .O(m_axi_ARADDR[23:16]),
        .S({\m_axi_ARADDR[16]_INST_0_i_1_n_0 ,\m_axi_ARADDR[16]_INST_0_i_2_n_0 ,\m_axi_ARADDR[16]_INST_0_i_3_n_0 ,\m_axi_ARADDR[16]_INST_0_i_4_n_0 ,\m_axi_ARADDR[16]_INST_0_i_5_n_0 ,\m_axi_ARADDR[16]_INST_0_i_6_n_0 ,\m_axi_ARADDR[16]_INST_0_i_7_n_0 ,\m_axi_ARADDR[16]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_1 
       (.I0(baseAddr[23]),
        .I1(mem_req_tuple[23]),
        .O(\m_axi_ARADDR[16]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_2 
       (.I0(baseAddr[22]),
        .I1(mem_req_tuple[22]),
        .O(\m_axi_ARADDR[16]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_3 
       (.I0(baseAddr[21]),
        .I1(mem_req_tuple[21]),
        .O(\m_axi_ARADDR[16]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_4 
       (.I0(baseAddr[20]),
        .I1(mem_req_tuple[20]),
        .O(\m_axi_ARADDR[16]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_5 
       (.I0(baseAddr[19]),
        .I1(mem_req_tuple[19]),
        .O(\m_axi_ARADDR[16]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_6 
       (.I0(baseAddr[18]),
        .I1(mem_req_tuple[18]),
        .O(\m_axi_ARADDR[16]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_7 
       (.I0(baseAddr[17]),
        .I1(mem_req_tuple[17]),
        .O(\m_axi_ARADDR[16]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[16]_INST_0_i_8 
       (.I0(baseAddr[16]),
        .I1(mem_req_tuple[16]),
        .O(\m_axi_ARADDR[16]_INST_0_i_8_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[24]_INST_0 
       (.CI(\m_axi_ARADDR[16]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[24]_INST_0_n_0 ,\m_axi_ARADDR[24]_INST_0_n_1 ,\m_axi_ARADDR[24]_INST_0_n_2 ,\m_axi_ARADDR[24]_INST_0_n_3 ,\m_axi_ARADDR[24]_INST_0_n_4 ,\m_axi_ARADDR[24]_INST_0_n_5 ,\m_axi_ARADDR[24]_INST_0_n_6 ,\m_axi_ARADDR[24]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,baseAddr[27:24]}),
        .O(m_axi_ARADDR[31:24]),
        .S({baseAddr[31:28],\m_axi_ARADDR[24]_INST_0_i_1_n_0 ,\m_axi_ARADDR[24]_INST_0_i_2_n_0 ,\m_axi_ARADDR[24]_INST_0_i_3_n_0 ,\m_axi_ARADDR[24]_INST_0_i_4_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[24]_INST_0_i_1 
       (.I0(baseAddr[27]),
        .I1(mem_req_tuple[27]),
        .O(\m_axi_ARADDR[24]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[24]_INST_0_i_2 
       (.I0(baseAddr[26]),
        .I1(mem_req_tuple[26]),
        .O(\m_axi_ARADDR[24]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[24]_INST_0_i_3 
       (.I0(baseAddr[25]),
        .I1(mem_req_tuple[25]),
        .O(\m_axi_ARADDR[24]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[24]_INST_0_i_4 
       (.I0(baseAddr[24]),
        .I1(mem_req_tuple[24]),
        .O(\m_axi_ARADDR[24]_INST_0_i_4_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[32]_INST_0 
       (.CI(\m_axi_ARADDR[24]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[32]_INST_0_n_0 ,\m_axi_ARADDR[32]_INST_0_n_1 ,\m_axi_ARADDR[32]_INST_0_n_2 ,\m_axi_ARADDR[32]_INST_0_n_3 ,\m_axi_ARADDR[32]_INST_0_n_4 ,\m_axi_ARADDR[32]_INST_0_n_5 ,\m_axi_ARADDR[32]_INST_0_n_6 ,\m_axi_ARADDR[32]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axi_ARADDR[39:32]),
        .S(baseAddr[39:32]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[40]_INST_0 
       (.CI(\m_axi_ARADDR[32]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[40]_INST_0_n_0 ,\m_axi_ARADDR[40]_INST_0_n_1 ,\m_axi_ARADDR[40]_INST_0_n_2 ,\m_axi_ARADDR[40]_INST_0_n_3 ,\m_axi_ARADDR[40]_INST_0_n_4 ,\m_axi_ARADDR[40]_INST_0_n_5 ,\m_axi_ARADDR[40]_INST_0_n_6 ,\m_axi_ARADDR[40]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axi_ARADDR[47:40]),
        .S(baseAddr[47:40]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[48]_INST_0 
       (.CI(\m_axi_ARADDR[40]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[48]_INST_0_n_0 ,\m_axi_ARADDR[48]_INST_0_n_1 ,\m_axi_ARADDR[48]_INST_0_n_2 ,\m_axi_ARADDR[48]_INST_0_n_3 ,\m_axi_ARADDR[48]_INST_0_n_4 ,\m_axi_ARADDR[48]_INST_0_n_5 ,\m_axi_ARADDR[48]_INST_0_n_6 ,\m_axi_ARADDR[48]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axi_ARADDR[55:48]),
        .S(baseAddr[55:48]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[56]_INST_0 
       (.CI(\m_axi_ARADDR[48]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axi_ARADDR[56]_INST_0_CO_UNCONNECTED [7],\m_axi_ARADDR[56]_INST_0_n_1 ,\m_axi_ARADDR[56]_INST_0_n_2 ,\m_axi_ARADDR[56]_INST_0_n_3 ,\m_axi_ARADDR[56]_INST_0_n_4 ,\m_axi_ARADDR[56]_INST_0_n_5 ,\m_axi_ARADDR[56]_INST_0_n_6 ,\m_axi_ARADDR[56]_INST_0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(m_axi_ARADDR[63:56]),
        .S(baseAddr[63:56]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \m_axi_ARADDR[8]_INST_0 
       (.CI(\m_axi_ARADDR[0]_INST_0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\m_axi_ARADDR[8]_INST_0_n_0 ,\m_axi_ARADDR[8]_INST_0_n_1 ,\m_axi_ARADDR[8]_INST_0_n_2 ,\m_axi_ARADDR[8]_INST_0_n_3 ,\m_axi_ARADDR[8]_INST_0_n_4 ,\m_axi_ARADDR[8]_INST_0_n_5 ,\m_axi_ARADDR[8]_INST_0_n_6 ,\m_axi_ARADDR[8]_INST_0_n_7 }),
        .DI(baseAddr[15:8]),
        .O(m_axi_ARADDR[15:8]),
        .S({\m_axi_ARADDR[8]_INST_0_i_1_n_0 ,\m_axi_ARADDR[8]_INST_0_i_2_n_0 ,\m_axi_ARADDR[8]_INST_0_i_3_n_0 ,\m_axi_ARADDR[8]_INST_0_i_4_n_0 ,\m_axi_ARADDR[8]_INST_0_i_5_n_0 ,\m_axi_ARADDR[8]_INST_0_i_6_n_0 ,\m_axi_ARADDR[8]_INST_0_i_7_n_0 ,\m_axi_ARADDR[8]_INST_0_i_8_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_1 
       (.I0(baseAddr[15]),
        .I1(mem_req_tuple[15]),
        .O(\m_axi_ARADDR[8]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_2 
       (.I0(baseAddr[14]),
        .I1(mem_req_tuple[14]),
        .O(\m_axi_ARADDR[8]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_3 
       (.I0(baseAddr[13]),
        .I1(mem_req_tuple[13]),
        .O(\m_axi_ARADDR[8]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_4 
       (.I0(baseAddr[12]),
        .I1(mem_req_tuple[12]),
        .O(\m_axi_ARADDR[8]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_5 
       (.I0(baseAddr[11]),
        .I1(mem_req_tuple[11]),
        .O(\m_axi_ARADDR[8]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_6 
       (.I0(baseAddr[10]),
        .I1(mem_req_tuple[10]),
        .O(\m_axi_ARADDR[8]_INST_0_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_7 
       (.I0(baseAddr[9]),
        .I1(mem_req_tuple[9]),
        .O(\m_axi_ARADDR[8]_INST_0_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \m_axi_ARADDR[8]_INST_0_i_8 
       (.I0(baseAddr[8]),
        .I1(mem_req_tuple[8]),
        .O(\m_axi_ARADDR[8]_INST_0_i_8_n_0 ));
  CARRY8 m_axis_tlast0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast0_carry_n_0,m_axis_tlast0_carry_n_1,m_axis_tlast0_carry_n_2,m_axis_tlast0_carry_n_3,m_axis_tlast0_carry_n_4,m_axis_tlast0_carry_n_5,m_axis_tlast0_carry_n_6,m_axis_tlast0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry_O_UNCONNECTED[7:0]),
        .S({m_axis_tlast0_carry_i_1_n_0,m_axis_tlast0_carry_i_2_n_0,m_axis_tlast0_carry_i_3_n_0,m_axis_tlast0_carry_i_4_n_0,m_axis_tlast0_carry_i_5_n_0,m_axis_tlast0_carry_i_6_n_0,m_axis_tlast0_carry_i_7_n_0,m_axis_tlast0_carry_i_8_n_0}));
  CARRY8 m_axis_tlast0_carry__0
       (.CI(m_axis_tlast0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_m_axis_tlast0_carry__0_CO_UNCONNECTED[7:3],m_axis_tlast0,m_axis_tlast0_carry__0_n_6,m_axis_tlast0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_m_axis_tlast0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,m_axis_tlast0_carry__0_i_1_n_0,m_axis_tlast0_carry__0_i_2_n_0,m_axis_tlast0_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    m_axis_tlast0_carry__0_i_1
       (.I0(p_0_in__2[30]),
        .I1(cnt_item_togo[30]),
        .I2(p_0_in__2[31]),
        .I3(cnt_item_togo[31]),
        .O(m_axis_tlast0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry__0_i_2
       (.I0(p_0_in__2[27]),
        .I1(cnt_item_togo[27]),
        .I2(cnt_item_togo[29]),
        .I3(p_0_in__2[29]),
        .I4(cnt_item_togo[28]),
        .I5(p_0_in__2[28]),
        .O(m_axis_tlast0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry__0_i_3
       (.I0(p_0_in__2[24]),
        .I1(cnt_item_togo[24]),
        .I2(cnt_item_togo[26]),
        .I3(p_0_in__2[26]),
        .I4(cnt_item_togo[25]),
        .I5(p_0_in__2[25]),
        .O(m_axis_tlast0_carry__0_i_3_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast0_carry__0_i_4
       (.CI(m_axis_tlast0_carry_i_9_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_m_axis_tlast0_carry__0_i_4_CO_UNCONNECTED[7:6],m_axis_tlast0_carry__0_i_4_n_2,m_axis_tlast0_carry__0_i_4_n_3,m_axis_tlast0_carry__0_i_4_n_4,m_axis_tlast0_carry__0_i_4_n_5,m_axis_tlast0_carry__0_i_4_n_6,m_axis_tlast0_carry__0_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_m_axis_tlast0_carry__0_i_4_O_UNCONNECTED[7],p_0_in__2[31:25]}),
        .S({1'b0,cnt_item_sent_reg[31:25]}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_1
       (.I0(p_0_in__2[21]),
        .I1(cnt_item_togo[21]),
        .I2(cnt_item_togo[23]),
        .I3(p_0_in__2[23]),
        .I4(cnt_item_togo[22]),
        .I5(p_0_in__2[22]),
        .O(m_axis_tlast0_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast0_carry_i_10
       (.CI(m_axis_tlast0_carry_i_11_n_0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast0_carry_i_10_n_0,m_axis_tlast0_carry_i_10_n_1,m_axis_tlast0_carry_i_10_n_2,m_axis_tlast0_carry_i_10_n_3,m_axis_tlast0_carry_i_10_n_4,m_axis_tlast0_carry_i_10_n_5,m_axis_tlast0_carry_i_10_n_6,m_axis_tlast0_carry_i_10_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__2[16:9]),
        .S(cnt_item_sent_reg[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast0_carry_i_11
       (.CI(cnt_item_sent_reg[0]),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast0_carry_i_11_n_0,m_axis_tlast0_carry_i_11_n_1,m_axis_tlast0_carry_i_11_n_2,m_axis_tlast0_carry_i_11_n_3,m_axis_tlast0_carry_i_11_n_4,m_axis_tlast0_carry_i_11_n_5,m_axis_tlast0_carry_i_11_n_6,m_axis_tlast0_carry_i_11_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__2[8:1]),
        .S(cnt_item_sent_reg[8:1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_2
       (.I0(p_0_in__2[18]),
        .I1(cnt_item_togo[18]),
        .I2(cnt_item_togo[20]),
        .I3(p_0_in__2[20]),
        .I4(cnt_item_togo[19]),
        .I5(p_0_in__2[19]),
        .O(m_axis_tlast0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_3
       (.I0(p_0_in__2[15]),
        .I1(cnt_item_togo[15]),
        .I2(cnt_item_togo[17]),
        .I3(p_0_in__2[17]),
        .I4(cnt_item_togo[16]),
        .I5(p_0_in__2[16]),
        .O(m_axis_tlast0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_4
       (.I0(p_0_in__2[12]),
        .I1(cnt_item_togo[12]),
        .I2(cnt_item_togo[14]),
        .I3(p_0_in__2[14]),
        .I4(cnt_item_togo[13]),
        .I5(p_0_in__2[13]),
        .O(m_axis_tlast0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_5
       (.I0(p_0_in__2[9]),
        .I1(cnt_item_togo[9]),
        .I2(cnt_item_togo[11]),
        .I3(p_0_in__2[11]),
        .I4(cnt_item_togo[10]),
        .I5(p_0_in__2[10]),
        .O(m_axis_tlast0_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_6
       (.I0(p_0_in__2[6]),
        .I1(cnt_item_togo[6]),
        .I2(cnt_item_togo[8]),
        .I3(p_0_in__2[8]),
        .I4(cnt_item_togo[7]),
        .I5(p_0_in__2[7]),
        .O(m_axis_tlast0_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    m_axis_tlast0_carry_i_7
       (.I0(p_0_in__2[3]),
        .I1(cnt_item_togo[3]),
        .I2(cnt_item_togo[5]),
        .I3(p_0_in__2[5]),
        .I4(cnt_item_togo[4]),
        .I5(p_0_in__2[4]),
        .O(m_axis_tlast0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    m_axis_tlast0_carry_i_8
       (.I0(cnt_item_sent_reg[0]),
        .I1(cnt_item_togo[0]),
        .I2(cnt_item_togo[2]),
        .I3(p_0_in__2[2]),
        .I4(cnt_item_togo[1]),
        .I5(p_0_in__2[1]),
        .O(m_axis_tlast0_carry_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 m_axis_tlast0_carry_i_9
       (.CI(m_axis_tlast0_carry_i_10_n_0),
        .CI_TOP(1'b0),
        .CO({m_axis_tlast0_carry_i_9_n_0,m_axis_tlast0_carry_i_9_n_1,m_axis_tlast0_carry_i_9_n_2,m_axis_tlast0_carry_i_9_n_3,m_axis_tlast0_carry_i_9_n_4,m_axis_tlast0_carry_i_9_n_5,m_axis_tlast0_carry_i_9_n_6,m_axis_tlast0_carry_i_9_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__2[24:17]),
        .S(cnt_item_sent_reg[24:17]));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tlast_INST_0
       (.I0(i_axis_tlast),
        .I1(m_axis_tlast0),
        .O(m_axis_tlast));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) 
  (* FIFO_MEMORY_TYPE = "distributed" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "3" *) 
  (* PROG_FULL_THRESH = "13" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_READ_MODE = "0" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "std" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  custom_m_axi_128_mread_master_0_0_xpm_fifo_sync mem_req_tuple_fifo_inst
       (.almost_empty(NLW_mem_req_tuple_fifo_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_mem_req_tuple_fifo_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_mem_req_tuple_fifo_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_mem_req_tuple_fifo_inst_dbiterr_UNCONNECTED),
        .din(req_din),
        .dout({m_axi_ARLEN,mem_req_tuple}),
        .empty(NLW_mem_req_tuple_fifo_inst_empty_UNCONNECTED),
        .full(req_full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_mem_req_tuple_fifo_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_mem_req_tuple_fifo_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_mem_req_tuple_fifo_inst_prog_full_UNCONNECTED),
        .rd_data_count(NLW_mem_req_tuple_fifo_inst_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en0),
        .rd_rst_busy(NLW_mem_req_tuple_fifo_inst_rd_rst_busy_UNCONNECTED),
        .rst(trans_counter1),
        .sbiterr(NLW_mem_req_tuple_fifo_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_mem_req_tuple_fifo_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_mem_req_tuple_fifo_inst_wr_ack_UNCONNECTED),
        .wr_clk(clk),
        .wr_data_count(NLW_mem_req_tuple_fifo_inst_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(req_wr_en),
        .wr_rst_busy(NLW_mem_req_tuple_fifo_inst_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    mem_req_tuple_fifo_inst_i_1
       (.I0(req_start),
        .I1(m_axi_ARREADY),
        .I2(arvalid_r_reg_0),
        .O(rd_en0));
  FDRE \num_transactions_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(trans_counter_reg[0]),
        .Q(num_transactions[0]),
        .R(1'b0));
  FDRE \num_transactions_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(trans_counter_reg[1]),
        .Q(num_transactions[1]),
        .R(1'b0));
  FDRE \num_transactions_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(trans_counter_reg[2]),
        .Q(num_transactions[2]),
        .R(1'b0));
  FDRE \num_transactions_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(trans_counter_reg[3]),
        .Q(num_transactions[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    req_full_n_INST_0
       (.I0(req_full),
        .O(req_full_n));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk),
        .CE(1'b1),
        .D(req_start),
        .Q(start),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \trans_counter[0]_i_1 
       (.I0(trans_counter_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \trans_counter[1]_i_1 
       (.I0(trans_counter_reg[0]),
        .I1(trans_counter_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \trans_counter[2]_i_1 
       (.I0(trans_counter_reg[0]),
        .I1(trans_counter_reg[1]),
        .I2(trans_counter_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \trans_counter[3]_i_2 
       (.I0(trans_counter_reg[1]),
        .I1(trans_counter_reg[0]),
        .I2(trans_counter_reg[2]),
        .I3(trans_counter_reg[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \trans_counter_reg[0] 
       (.C(clk),
        .CE(req_wr_en),
        .D(p_0_in[0]),
        .Q(trans_counter_reg[0]),
        .R(inst_r_transaction_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \trans_counter_reg[1] 
       (.C(clk),
        .CE(req_wr_en),
        .D(p_0_in[1]),
        .Q(trans_counter_reg[1]),
        .R(inst_r_transaction_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \trans_counter_reg[2] 
       (.C(clk),
        .CE(req_wr_en),
        .D(p_0_in[2]),
        .Q(trans_counter_reg[2]),
        .R(inst_r_transaction_cntr_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \trans_counter_reg[3] 
       (.C(clk),
        .CE(req_wr_en),
        .D(p_0_in[3]),
        .Q(trans_counter_reg[3]),
        .R(inst_r_transaction_cntr_n_0));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module custom_m_axi_128_mread_master_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [3:0]syncstages_ff;

  assign dest_rst = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b0)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

module custom_m_axi_128_mread_master_0_0_xpm_counter_updn
   (ram_full_i0,
    leaving_empty0,
    \count_value_i_reg[3]_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    rd_en,
    full,
    Q,
    E,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[3]_1 ,
    wr_clk);
  output ram_full_i0;
  output leaving_empty0;
  output [3:0]\count_value_i_reg[3]_0 ;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input rd_en;
  input full;
  input [3:0]Q;
  input [0:0]E;
  input [3:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[3]_1 ;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [3:0]\count_value_i_reg[3]_0 ;
  wire [0:0]\count_value_i_reg[3]_1 ;
  wire full;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 ;
  wire going_full;
  wire leaving_empty0;
  wire ram_full_i0;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__1 
       (.I0(\count_value_i_reg[3]_0 [0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[3]_0 [0]),
        .I1(\count_value_i_reg[3]_0 [1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(\count_value_i_reg[3]_0 [0]),
        .I1(\count_value_i_reg[3]_0 [1]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(\count_value_i_reg[3]_0 [1]),
        .I1(\count_value_i_reg[3]_0 [0]),
        .I2(\count_value_i_reg[3]_0 [2]),
        .I3(\count_value_i_reg[3]_0 [3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[3]_1 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(\count_value_i_reg[3]_0 [0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[3]_1 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(\count_value_i_reg[3]_0 [1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[3]_1 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(\count_value_i_reg[3]_0 [2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[3]_1 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(\count_value_i_reg[3]_0 [3]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hFBFFAAAA)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(going_full),
        .I1(leaving_empty0),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I3(rd_en),
        .I4(full),
        .O(ram_full_i0));
  LUT6 #(
    .INIT(64'h8282008200000000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(Q[3]),
        .I2(\count_value_i_reg[3]_0 [3]),
        .I3(rd_en),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .I5(E),
        .O(going_full));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\count_value_i_reg[3]_0 [3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(\count_value_i_reg[3]_0 [0]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(\count_value_i_reg[3]_0 [2]),
        .I4(Q[1]),
        .I5(\count_value_i_reg[3]_0 [1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(\count_value_i_reg[3]_0 [0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [2]),
        .I3(\count_value_i_reg[3]_0 [2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 [1]),
        .I5(\count_value_i_reg[3]_0 [1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn_4
   (empty_i0,
    Q,
    rd_en,
    leaving_empty0,
    E,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \count_value_i_reg[3]_0 ,
    wr_clk);
  output empty_i0;
  output [3:0]Q;
  input rd_en;
  input leaving_empty0;
  input [0:0]E;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input [0:0]\count_value_i_reg[3]_0 ;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire [0:0]\count_value_i_reg[3]_0 ;
  wire empty_i0;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(rd_en),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .O(empty_i0));
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized0
   (E,
    Q,
    rd_en,
    \count_value_i_reg[3]_0 ,
    \count_value_i_reg[0]_0 ,
    wr_clk);
  output [0:0]E;
  output [3:0]Q;
  input rd_en;
  input \count_value_i_reg[3]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[3]_0 ;
  wire rd_en;
  wire wr_clk;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__2 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[3]_0 ),
        .O(E));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized0_5
   (Q,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [3:0]Q;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire wr_clk;

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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized3
   (Q,
    leaving_empty0,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [7:0]Q;
  output leaving_empty0;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input \count_value_i_reg[0]_0 ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire [7:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ;
  wire [7:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\count_value_i_reg[0]_0 ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ),
        .I5(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized3_1
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_i,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[7]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    wr_clk);
  output ram_empty_i0;
  output [7:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_i;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[7]_0 ;
  input rst_d1;
  input [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [0:0]\count_value_i_reg[7]_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [7:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[7]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_i),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg_0 [7]),
        .I1(Q[7]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [6]),
        .I3(Q[6]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I5(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_reg_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_reg_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_reg_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized4
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output [7:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [7:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized4_2
   (Q,
    ram_wr_en_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    wr_clk);
  output [7:0]Q;
  input ram_wr_en_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input wr_clk;

  wire [7:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_i;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_i),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[7]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_i),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
endmodule

(* AXIS_DATA_WIDTH = "164" *) (* AXIS_FINAL_DATA_WIDTH = "164" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "256" *) 
(* FIFO_MEMORY_TYPE = "block" *) (* LOG_DEPTH_AXIS = "8" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "250" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "2" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "16" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "128" *) (* TDATA_WIDTH = "128" *) 
(* TDEST_OFFSET = "162" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "161" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "160" *) (* TSTRB_OFFSET = "144" *) 
(* TUSER_MAX_WIDTH = "3933" *) (* TUSER_OFFSET = "163" *) (* TUSER_WIDTH = "1" *) 
(* USE_ADV_FEATURES = "1000" *) (* USE_ADV_FEATURES_INT = "825241648" *) (* WR_DATA_COUNT_WIDTH = "16" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_axis
   (s_aresetn,
    s_aclk,
    m_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    prog_full_axis,
    wr_data_count_axis,
    almost_full_axis,
    prog_empty_axis,
    rd_data_count_axis,
    almost_empty_axis,
    injectsbiterr_axis,
    injectdbiterr_axis,
    sbiterr_axis,
    dbiterr_axis);
  input s_aresetn;
  input s_aclk;
  input m_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tstrb;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tstrb;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [15:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [15:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [127:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [15:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [15:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [127:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [15:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [15:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire xpm_fifo_base_inst_i_1_n_0;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [15:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [15:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[15] = \<const0> ;
  assign rd_data_count_axis[14] = \<const0> ;
  assign rd_data_count_axis[13] = \<const0> ;
  assign rd_data_count_axis[12] = \<const0> ;
  assign rd_data_count_axis[11] = \<const0> ;
  assign rd_data_count_axis[10] = \<const0> ;
  assign rd_data_count_axis[9] = \<const0> ;
  assign rd_data_count_axis[8] = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
  assign wr_data_count_axis[15] = \<const0> ;
  assign wr_data_count_axis[14] = \<const0> ;
  assign wr_data_count_axis[13] = \<const0> ;
  assign wr_data_count_axis[12] = \<const0> ;
  assign wr_data_count_axis[11] = \<const0> ;
  assign wr_data_count_axis[10] = \<const0> ;
  assign wr_data_count_axis[9] = \<const0> ;
  assign wr_data_count_axis[8] = \<const0> ;
  assign wr_data_count_axis[7] = \<const0> ;
  assign wr_data_count_axis[6] = \<const0> ;
  assign wr_data_count_axis[5] = \<const0> ;
  assign wr_data_count_axis[4] = \<const0> ;
  assign wr_data_count_axis[3] = \<const0> ;
  assign wr_data_count_axis[2] = \<const0> ;
  assign wr_data_count_axis[1] = \<const0> ;
  assign wr_data_count_axis[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* DEF_VAL = "1'b0" *) 
  (* DEST_SYNC_FF = "4" *) 
  (* INIT = "0" *) 
  (* INIT_SYNC_FF = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  custom_m_axi_128_mread_master_0_0_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
       (.dest_clk(s_aclk),
        .dest_rst(rst_axis),
        .src_rst(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1 
       (.I0(s_aresetn),
        .O(\gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0001000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b1" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "2" *) 
  (* FIFO_MEM_TYPE = "2" *) 
  (* FIFO_READ_DEPTH = "256" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "41984" *) 
  (* FIFO_WRITE_DEPTH = "256" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "251" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "248" *) 
  (* PF_THRESH_MAX = "251" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "250" *) 
  (* RD_DATA_COUNT_WIDTH = "16" *) 
  (* RD_DC_WIDTH_EXT = "9" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "8" *) 
  (* READ_DATA_WIDTH = "164" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "164" *) 
  (* WR_DATA_COUNT_WIDTH = "16" *) 
  (* WR_DC_WIDTH_EXT = "9" *) 
  (* WR_DEPTH_LOG = "8" *) 
  (* WR_PNTR_WIDTH = "8" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  custom_m_axi_128_mread_master_0_0_xpm_fifo_base__parameterized0 xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(m_axis_tvalid),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din({s_axis_tlast,s_axis_tuser,s_axis_tdest,s_axis_tid,s_axis_tkeep,s_axis_tstrb,s_axis_tdata}),
        .dout({m_axis_tlast,m_axis_tuser,m_axis_tdest,m_axis_tid,m_axis_tkeep,m_axis_tstrb,m_axis_tdata}),
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(s_axis_tready),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[15:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[15:0]),
        .wr_en(s_axis_tvalid),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_fifo_base_inst_i_1
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .O(xpm_fifo_base_inst_i_1_n_0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "512" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "13" *) (* PE_THRESH_MIN = "3" *) (* PF_THRESH_ADJ = "13" *) 
(* PF_THRESH_MAX = "13" *) (* PF_THRESH_MIN = "3" *) (* PROG_EMPTY_THRESH = "3" *) 
(* PROG_FULL_THRESH = "13" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "1" *) (* RD_MODE = "0" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "32" *) (* READ_MODE = "0" *) (* READ_MODE_LL = "0" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0000" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "5" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_base
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
  input [31:0]din;
  output full;
  output full_n;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [3:0]count_value_i;
  wire [31:0]din;
  wire [31:0]dout;
  wire empty_i0;
  wire full;
  wire \gen_pntr_flags_cc.ram_empty_i_reg_n_0 ;
  wire leaving_empty0;
  wire ram_full_i0;
  wire ram_rd_en_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire [3:0]rd_pntr_ext;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [3:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [31:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_i0),
        .Q(\gen_pntr_flags_cc.ram_empty_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "32" *) 
  (* BYTE_WRITE_WIDTH_B = "32" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "512" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "32" *) 
  (* P_MIN_WIDTH_DATA_A = "32" *) 
  (* P_MIN_WIDTH_DATA_B = "32" *) 
  (* P_MIN_WIDTH_DATA_ECC = "32" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "32" *) 
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
  (* P_WIDTH_COL_WRITE_A = "32" *) 
  (* P_WIDTH_COL_WRITE_B = "32" *) 
  (* READ_DATA_WIDTH_A = "32" *) 
  (* READ_DATA_WIDTH_B = "32" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "1" *) 
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
  (* WRITE_DATA_WIDTH_A = "32" *) 
  (* WRITE_DATA_WIDTH_B = "32" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "32" *) 
  (* rstb_loop_iter = "32" *) 
  custom_m_axi_128_mread_master_0_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [31:0]),
        .doutb(dout),
        .ena(ram_wr_en_i),
        .enb(ram_rd_en_i),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(1'b0),
        .web(1'b0));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn rdp_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (rd_pntr_ext),
        .\count_value_i_reg[3]_1 (ram_rd_en_i),
        .full(full),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.ram_empty_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_0 (wr_pntr_ext),
        .leaving_empty0(leaving_empty0),
        .ram_full_i0(ram_full_i0),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized0 rdpp1_inst
       (.E(ram_rd_en_i),
        .Q({rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3]_0 (\gen_pntr_flags_cc.ram_empty_i_reg_n_0 ),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_fifo_reg_bit_3 rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn_4 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .empty_i0(empty_i0),
        .\gen_pntr_flags_cc.ram_empty_i_reg (\gen_pntr_flags_cc.ram_empty_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4}),
        .leaving_empty0(leaving_empty0),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized0_5 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_fifo_rst_6 xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .full(full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "2" *) (* FIFO_MEM_TYPE = "2" *) (* FIFO_READ_DEPTH = "256" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "41984" *) (* FIFO_WRITE_DEPTH = "256" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_fifo_base" *) 
(* PE_THRESH_ADJ = "3" *) (* PE_THRESH_MAX = "251" *) (* PE_THRESH_MIN = "5" *) 
(* PF_THRESH_ADJ = "248" *) (* PF_THRESH_MAX = "251" *) (* PF_THRESH_MIN = "5" *) 
(* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "250" *) (* RD_DATA_COUNT_WIDTH = "16" *) 
(* RD_DC_WIDTH_EXT = "9" *) (* RD_LATENCY = "2" *) (* RD_MODE = "1" *) 
(* RD_PNTR_WIDTH = "8" *) (* READ_DATA_WIDTH = "164" *) (* READ_MODE = "1" *) 
(* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "164" *) 
(* WR_DATA_COUNT_WIDTH = "16" *) (* WR_DC_WIDTH_EXT = "9" *) (* WR_DEPTH_LOG = "8" *) 
(* WR_PNTR_WIDTH = "8" *) (* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "8" *) 
(* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) (* invalid = "0" *) 
(* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_base__parameterized0
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
  input [163:0]din;
  output full;
  output full_n;
  output prog_full;
  output [15:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [163:0]dout;
  output empty;
  output prog_empty;
  output [15:0]rd_data_count;
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
  wire [7:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [163:0]din;
  wire [163:0]dout;
  wire full_n;
  wire \gen_fwft.empty_fwft_i_reg_n_0 ;
  wire \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_i;
  wire rd_en;
  wire [7:0]rd_pntr_ext;
  wire rdp_inst_n_10;
  wire rdp_inst_n_9;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_ext;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [163:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[15] = \<const0> ;
  assign rd_data_count[14] = \<const0> ;
  assign rd_data_count[13] = \<const0> ;
  assign rd_data_count[12] = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[15] = \<const0> ;
  assign wr_data_count[14] = \<const0> ;
  assign wr_data_count[13] = \<const0> ;
  assign wr_data_count[12] = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(data_valid_fwft1),
        .Q(\gen_fwft.empty_fwft_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0 ),
        .Q(data_valid),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_9),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_10),
        .Q(full_n),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "8" *) 
  (* ADDR_WIDTH_B = "8" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "164" *) 
  (* BYTE_WRITE_WIDTH_B = "164" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "163" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "164" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "41984" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "256" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "164" *) 
  (* P_MIN_WIDTH_DATA_A = "164" *) 
  (* P_MIN_WIDTH_DATA_B = "164" *) 
  (* P_MIN_WIDTH_DATA_ECC = "164" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "164" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "no" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "8" *) 
  (* P_WIDTH_ADDR_READ_B = "8" *) 
  (* P_WIDTH_ADDR_WRITE_A = "8" *) 
  (* P_WIDTH_ADDR_WRITE_B = "8" *) 
  (* P_WIDTH_COL_WRITE_A = "164" *) 
  (* P_WIDTH_COL_WRITE_B = "164" *) 
  (* READ_DATA_WIDTH_A = "164" *) 
  (* READ_DATA_WIDTH_B = "164" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "164" *) 
  (* WRITE_DATA_WIDTH_B = "164" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "164" *) 
  (* rstb_loop_iter = "164" *) 
  custom_m_axi_128_mread_master_0_0_xpm_memory_base__parameterized0 \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [163:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_8),
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
        .wea(ram_wr_en_i),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized3 rdp_inst
       (.Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_8),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_9),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_10),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized4 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_8),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized3_1 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\count_value_i_reg[7]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_8),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  custom_m_axi_128_mread_master_0_0_xpm_counter_updn__parameterized4_2 wrpp1_inst
       (.Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  custom_m_axi_128_mread_master_0_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[7] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_i(ram_wr_en_i),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module custom_m_axi_128_mread_master_0_0_xpm_fifo_reg_bit
   (rst_d1,
    clr_full,
    Q,
    wr_clk,
    rst);
  output rst_d1;
  output clr_full;
  input [0:0]Q;
  input wr_clk;
  input rst;

  wire [0:0]Q;
  wire clr_full;
  wire rst;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_2 
       (.I0(rst),
        .I1(rst_d1),
        .I2(Q),
        .O(clr_full));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_reg_bit_3
   (rst_d1,
    Q,
    wr_clk);
  output rst_d1;
  input [0:0]Q;
  input wr_clk;

  wire [0:0]Q;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

module custom_m_axi_128_mread_master_0_0_xpm_fifo_rst
   (ram_wr_en_i,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[7] ,
    rst_d1,
    wr_clk);
  output ram_wr_en_i;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[7] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[7] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_i;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[7] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_i));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_rst_6
   (E,
    Q,
    wr_en,
    full,
    rst_d1,
    rst,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input wr_en;
  input full;
  input rst_d1;
  input rst;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire full;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
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
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000000000000000" *) (* FIFO_MEMORY_TYPE = "distributed" *) (* FIFO_READ_LATENCY = "1" *) 
(* FIFO_WRITE_DEPTH = "16" *) (* FULL_RESET_VALUE = "0" *) (* PROG_EMPTY_THRESH = "3" *) 
(* PROG_FULL_THRESH = "13" *) (* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) 
(* P_FIFO_MEMORY_TYPE = "1" *) (* P_READ_MODE = "0" *) (* P_WAKEUP_TIME = "2" *) 
(* RD_DATA_COUNT_WIDTH = "8" *) (* READ_DATA_WIDTH = "32" *) (* READ_MODE = "std" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0000" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH = "32" *) (* WR_DATA_COUNT_WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) 
module custom_m_axi_128_mread_master_0_0_xpm_fifo_sync
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
  input [31:0]din;
  output full;
  output prog_full;
  output [7:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [31:0]dout;
  output empty;
  output prog_empty;
  output [7:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [31:0]din;
  wire [31:0]dout;
  wire full;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
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
  wire [7:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
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
  (* EN_ADV_FEATURE = "16'b0000000000000000" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b0" *) 
  (* EN_PE = "1'b0" *) 
  (* EN_PF = "1'b0" *) 
  (* EN_RDC = "1'b0" *) 
  (* EN_UF = "1'b0" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b0" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "512" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "13" *) 
  (* PE_THRESH_MIN = "3" *) 
  (* PF_THRESH_ADJ = "13" *) 
  (* PF_THRESH_MAX = "13" *) 
  (* PF_THRESH_MIN = "3" *) 
  (* PROG_EMPTY_THRESH = "3" *) 
  (* PROG_FULL_THRESH = "13" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "1" *) 
  (* RD_MODE = "0" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "32" *) 
  (* READ_MODE = "0" *) 
  (* READ_MODE_LL = "0" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0000" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "32" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "5" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  custom_m_axi_128_mread_master_0_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
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
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "32" *) (* BYTE_WRITE_WIDTH_B = "32" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "512" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) (* P_MIN_WIDTH_DATA = "32" *) 
(* P_MIN_WIDTH_DATA_A = "32" *) (* P_MIN_WIDTH_DATA_B = "32" *) (* P_MIN_WIDTH_DATA_ECC = "32" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "32" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "32" *) 
(* P_WIDTH_COL_WRITE_B = "32" *) (* READ_DATA_WIDTH_A = "32" *) (* READ_DATA_WIDTH_B = "32" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "32" *) (* WRITE_DATA_WIDTH_B = "32" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "32" *) (* rstb_loop_iter = "32" *) 
module custom_m_axi_128_mread_master_0_0_xpm_memory_base
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
  input [31:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [31:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [31:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [31:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [31:0]\gen_rd_b.doutb_reg0 ;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOE_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOF_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOG_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
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
        .Q(doutb[0]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [10]),
        .Q(doutb[10]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [11]),
        .Q(doutb[11]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [12]),
        .Q(doutb[12]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [13]),
        .Q(doutb[13]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[14] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [14]),
        .Q(doutb[14]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[15] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [15]),
        .Q(doutb[15]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[16] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [16]),
        .Q(doutb[16]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[17] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [17]),
        .Q(doutb[17]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[18] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [18]),
        .Q(doutb[18]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[19] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [19]),
        .Q(doutb[19]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(doutb[1]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[20] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [20]),
        .Q(doutb[20]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[21] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [21]),
        .Q(doutb[21]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[22] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [22]),
        .Q(doutb[22]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[23] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [23]),
        .Q(doutb[23]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[24] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [24]),
        .Q(doutb[24]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[25] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [25]),
        .Q(doutb[25]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[26] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [26]),
        .Q(doutb[26]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[27] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [27]),
        .Q(doutb[27]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[28] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [28]),
        .Q(doutb[28]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[29] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [29]),
        .Q(doutb[29]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(doutb[2]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[30] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [30]),
        .Q(doutb[30]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[31] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [31]),
        .Q(doutb[31]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(doutb[3]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(doutb[4]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(doutb[5]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(doutb[6]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(doutb[7]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [8]),
        .Q(doutb[8]),
        .R(rstb));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
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
  (* RTL_RAM_BITS = "512" *) 
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
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31 
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
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [29:28]),
        .DOB(\gen_rd_b.doutb_reg0 [31:30]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOD_UNCONNECTED [1:0]),
        .DOE(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_31_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
endmodule

(* ADDR_WIDTH_A = "8" *) (* ADDR_WIDTH_B = "8" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "164" *) (* BYTE_WRITE_WIDTH_B = "164" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "41984" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "256" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "164" *) (* P_MIN_WIDTH_DATA_A = "164" *) (* P_MIN_WIDTH_DATA_B = "164" *) 
(* P_MIN_WIDTH_DATA_ECC = "164" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "164" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "no" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "8" *) 
(* P_WIDTH_ADDR_READ_B = "8" *) (* P_WIDTH_ADDR_WRITE_A = "8" *) (* P_WIDTH_ADDR_WRITE_B = "8" *) 
(* P_WIDTH_COL_WRITE_A = "164" *) (* P_WIDTH_COL_WRITE_B = "164" *) (* READ_DATA_WIDTH_A = "164" *) 
(* READ_DATA_WIDTH_B = "164" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "164" *) (* WRITE_DATA_WIDTH_B = "164" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "164" *) 
(* rstb_loop_iter = "164" *) 
module custom_m_axi_128_mread_master_0_0_xpm_memory_base__parameterized0
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
  input [7:0]addra;
  input [163:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [163:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [7:0]addrb;
  input [163:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [163:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [163:0]dina;
  wire [163:0]doutb;
  wire enb;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED ;
  wire [15:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED ;
  wire [15:4]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
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
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "41984" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0 
       (.ADDRARDADDR({1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_DBITERR_UNCONNECTED ),
        .DINADIN(dina[31:0]),
        .DINBDIN(dina[63:32]),
        .DINPADINP(dina[67:64]),
        .DINPBDINP(dina[71:68]),
        .DOUTADOUT(doutb[31:0]),
        .DOUTBDOUT(doutb[63:32]),
        .DOUTPADOUTP(doutb[67:64]),
        .DOUTPBDOUTP(doutb[71:68]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p8_d64" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "41984" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(72),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(72)) 
    \gen_wr_a.gen_word_narrow.mem_reg_1 
       (.ADDRARDADDR({1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINA_UNCONNECTED [31:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINB_UNCONNECTED [31:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPA_UNCONNECTED [3:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDINPB_UNCONNECTED [3:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_DBITERR_UNCONNECTED ),
        .DINADIN(dina[103:72]),
        .DINBDIN(dina[135:104]),
        .DINPADINP(dina[139:136]),
        .DINPBDINP(dina[143:140]),
        .DOUTADOUT(doutb[103:72]),
        .DOUTBDOUT(doutb[135:104]),
        .DOUTPADOUTP(doutb[139:136]),
        .DOUTPBDOUTP(doutb[143:140]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea,wea,wea,wea,wea}));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d20" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "163" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d20" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "163" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "41984" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "163" *) 
  RAMB18E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_2 
       (.ADDRARDADDR({1'b0,addrb,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,addra,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINA_UNCONNECTED [15:0]),
        .CASDINB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINB_UNCONNECTED [15:0]),
        .CASDINPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPA_UNCONNECTED [1:0]),
        .CASDINPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDINPB_UNCONNECTED [1:0]),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTA_UNCONNECTED [15:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTB_UNCONNECTED [15:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPA_UNCONNECTED [1:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_CASDOUTPB_UNCONNECTED [1:0]),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DINADIN(dina[159:144]),
        .DINBDIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,dina[163:160]}),
        .DINPADINP({1'b1,1'b1}),
        .DINPBDINP({1'b1,1'b1}),
        .DOUTADOUT(doutb[159:144]),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTBDOUT_UNCONNECTED [15:4],doutb[163:160]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPADOUTP_UNCONNECTED [1:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_2_DOUTPBDOUTP_UNCONNECTED [1:0]),
        .ENARDEN(enb),
        .ENBWREN(1'b1),
        .REGCEAREGCE(regceb),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rstb),
        .RSTREGB(1'b0),
        .SLEEP(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({wea,wea,wea,wea}));
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
