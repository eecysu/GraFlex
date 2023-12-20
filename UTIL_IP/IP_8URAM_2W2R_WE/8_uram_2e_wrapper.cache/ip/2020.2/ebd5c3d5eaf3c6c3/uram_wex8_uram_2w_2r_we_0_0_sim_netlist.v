// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Mar  2 16:20:11 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uram_wex8_uram_2w_2r_we_0_0_sim_netlist.v
// Design      : uram_wex8_uram_2w_2r_we_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we
   (rdata0,
    rdata1,
    clk,
    ce0,
    ce1,
    addr0,
    addr1,
    wdata0,
    wdata1,
    we0,
    we1,
    rst_n);
  output [63:0]rdata0;
  output [63:0]rdata1;
  input clk;
  input ce0;
  input ce1;
  input [11:0]addr0;
  input [11:0]addr1;
  input [63:0]wdata0;
  input [63:0]wdata1;
  input [7:0]we0;
  input [7:0]we1;
  input rst_n;

  wire RST_A0;
  wire URAM288_BASE_inst_i_4_n_0;
  wire URAM288_BASE_inst_i_5_n_0;
  wire [11:0]addr0;
  wire [11:0]addr1;
  wire ce0;
  wire ce1;
  wire clk;
  wire fwd_01;
  wire fwd_01_1d;
  wire fwd_10;
  wire fwd_10_1d;
  wire fwd_10_1d_i_3_n_0;
  wire fwd_10_1d_i_4_n_0;
  wire fwd_10_1d_i_5_n_0;
  wire fwd_10_1d_i_6_n_0;
  wire [63:0]i_rdata0;
  wire [63:0]i_rdata1;
  wire p_1_in;
  wire [63:0]rdata0;
  wire [63:0]rdata1;
  wire rst_n;
  wire rw_bit0;
  wire rw_bit1;
  wire [63:0]wdata0;
  wire [63:0]wdata1;
  wire [7:0]we0;
  wire [7:0]we1;
  wire NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED;
  wire NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED;
  wire NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED;
  wire NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED;
  wire [71:64]NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED;
  wire [71:64]NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  URAM288_BASE #(
    .AUTO_SLEEP_LATENCY(8),
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .EN_AUTO_SLEEP_MODE("FALSE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    URAM288_BASE_inst
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr0}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addr1}),
        .BWE_A({1'b0,we0}),
        .BWE_B({1'b0,we1}),
        .CLK(clk),
        .DBITERR_A(NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED),
        .DBITERR_B(NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata0}),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata1}),
        .DOUT_A({NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED[71:64],i_rdata0}),
        .DOUT_B({NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED[71:64],i_rdata1}),
        .EN_A(ce0),
        .EN_B(ce1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b0),
        .OREG_CE_B(1'b0),
        .OREG_ECC_CE_A(1'b0),
        .OREG_ECC_CE_B(1'b0),
        .RDB_WR_A(rw_bit0),
        .RDB_WR_B(rw_bit1),
        .RST_A(RST_A0),
        .RST_B(RST_A0),
        .SBITERR_A(NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED),
        .SBITERR_B(NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED),
        .SLEEP(1'b0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    URAM288_BASE_inst_i_1
       (.I0(we0[0]),
        .I1(we0[1]),
        .I2(we0[2]),
        .I3(we0[3]),
        .I4(URAM288_BASE_inst_i_4_n_0),
        .O(rw_bit0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    URAM288_BASE_inst_i_2
       (.I0(we1[0]),
        .I1(we1[1]),
        .I2(we1[2]),
        .I3(we1[3]),
        .I4(URAM288_BASE_inst_i_5_n_0),
        .O(rw_bit1));
  LUT1 #(
    .INIT(2'h1)) 
    URAM288_BASE_inst_i_3
       (.I0(rst_n),
        .O(RST_A0));
  LUT4 #(
    .INIT(16'h0001)) 
    URAM288_BASE_inst_i_4
       (.I0(we0[6]),
        .I1(we0[7]),
        .I2(we0[5]),
        .I3(we0[4]),
        .O(URAM288_BASE_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    URAM288_BASE_inst_i_5
       (.I0(we1[6]),
        .I1(we1[7]),
        .I2(we1[5]),
        .I3(we1[4]),
        .O(URAM288_BASE_inst_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    fwd_01_1d_i_1
       (.I0(p_1_in),
        .I1(rw_bit1),
        .I2(rw_bit0),
        .O(fwd_01));
  FDRE fwd_01_1d_reg
       (.C(clk),
        .CE(1'b1),
        .D(fwd_01),
        .Q(fwd_01_1d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h20)) 
    fwd_10_1d_i_1
       (.I0(p_1_in),
        .I1(rw_bit0),
        .I2(rw_bit1),
        .O(fwd_10));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fwd_10_1d_i_2
       (.I0(fwd_10_1d_i_3_n_0),
        .I1(fwd_10_1d_i_4_n_0),
        .I2(fwd_10_1d_i_5_n_0),
        .I3(fwd_10_1d_i_6_n_0),
        .I4(ce0),
        .I5(ce1),
        .O(p_1_in));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_3
       (.I0(addr0[6]),
        .I1(addr1[6]),
        .I2(addr1[8]),
        .I3(addr0[8]),
        .I4(addr1[7]),
        .I5(addr0[7]),
        .O(fwd_10_1d_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_4
       (.I0(addr0[9]),
        .I1(addr1[9]),
        .I2(addr1[11]),
        .I3(addr0[11]),
        .I4(addr1[10]),
        .I5(addr0[10]),
        .O(fwd_10_1d_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_5
       (.I0(addr0[0]),
        .I1(addr1[0]),
        .I2(addr1[2]),
        .I3(addr0[2]),
        .I4(addr1[1]),
        .I5(addr0[1]),
        .O(fwd_10_1d_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_6
       (.I0(addr0[3]),
        .I1(addr1[3]),
        .I2(addr1[5]),
        .I3(addr0[5]),
        .I4(addr1[4]),
        .I5(addr0[4]),
        .O(fwd_10_1d_i_6_n_0));
  FDRE fwd_10_1d_reg
       (.C(clk),
        .CE(1'b1),
        .D(fwd_10),
        .Q(fwd_10_1d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[0]_INST_0 
       (.I0(i_rdata0[0]),
        .I1(fwd_10_1d),
        .O(rdata0[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[10]_INST_0 
       (.I0(i_rdata0[10]),
        .I1(fwd_10_1d),
        .O(rdata0[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[11]_INST_0 
       (.I0(i_rdata0[11]),
        .I1(fwd_10_1d),
        .O(rdata0[11]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[12]_INST_0 
       (.I0(i_rdata0[12]),
        .I1(fwd_10_1d),
        .O(rdata0[12]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[13]_INST_0 
       (.I0(i_rdata0[13]),
        .I1(fwd_10_1d),
        .O(rdata0[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[14]_INST_0 
       (.I0(i_rdata0[14]),
        .I1(fwd_10_1d),
        .O(rdata0[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[15]_INST_0 
       (.I0(i_rdata0[15]),
        .I1(fwd_10_1d),
        .O(rdata0[15]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[16]_INST_0 
       (.I0(i_rdata0[16]),
        .I1(fwd_10_1d),
        .O(rdata0[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[17]_INST_0 
       (.I0(i_rdata0[17]),
        .I1(fwd_10_1d),
        .O(rdata0[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[18]_INST_0 
       (.I0(i_rdata0[18]),
        .I1(fwd_10_1d),
        .O(rdata0[18]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[19]_INST_0 
       (.I0(i_rdata0[19]),
        .I1(fwd_10_1d),
        .O(rdata0[19]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[1]_INST_0 
       (.I0(i_rdata0[1]),
        .I1(fwd_10_1d),
        .O(rdata0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[20]_INST_0 
       (.I0(i_rdata0[20]),
        .I1(fwd_10_1d),
        .O(rdata0[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[21]_INST_0 
       (.I0(i_rdata0[21]),
        .I1(fwd_10_1d),
        .O(rdata0[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[22]_INST_0 
       (.I0(i_rdata0[22]),
        .I1(fwd_10_1d),
        .O(rdata0[22]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[23]_INST_0 
       (.I0(i_rdata0[23]),
        .I1(fwd_10_1d),
        .O(rdata0[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[24]_INST_0 
       (.I0(i_rdata0[24]),
        .I1(fwd_10_1d),
        .O(rdata0[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[25]_INST_0 
       (.I0(i_rdata0[25]),
        .I1(fwd_10_1d),
        .O(rdata0[25]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[26]_INST_0 
       (.I0(i_rdata0[26]),
        .I1(fwd_10_1d),
        .O(rdata0[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[27]_INST_0 
       (.I0(i_rdata0[27]),
        .I1(fwd_10_1d),
        .O(rdata0[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[28]_INST_0 
       (.I0(i_rdata0[28]),
        .I1(fwd_10_1d),
        .O(rdata0[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[29]_INST_0 
       (.I0(i_rdata0[29]),
        .I1(fwd_10_1d),
        .O(rdata0[29]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[2]_INST_0 
       (.I0(i_rdata0[2]),
        .I1(fwd_10_1d),
        .O(rdata0[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[30]_INST_0 
       (.I0(i_rdata0[30]),
        .I1(fwd_10_1d),
        .O(rdata0[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[31]_INST_0 
       (.I0(i_rdata0[31]),
        .I1(fwd_10_1d),
        .O(rdata0[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[32]_INST_0 
       (.I0(i_rdata0[32]),
        .I1(fwd_10_1d),
        .O(rdata0[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[33]_INST_0 
       (.I0(i_rdata0[33]),
        .I1(fwd_10_1d),
        .O(rdata0[33]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[34]_INST_0 
       (.I0(i_rdata0[34]),
        .I1(fwd_10_1d),
        .O(rdata0[34]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[35]_INST_0 
       (.I0(i_rdata0[35]),
        .I1(fwd_10_1d),
        .O(rdata0[35]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[36]_INST_0 
       (.I0(i_rdata0[36]),
        .I1(fwd_10_1d),
        .O(rdata0[36]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[37]_INST_0 
       (.I0(i_rdata0[37]),
        .I1(fwd_10_1d),
        .O(rdata0[37]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[38]_INST_0 
       (.I0(i_rdata0[38]),
        .I1(fwd_10_1d),
        .O(rdata0[38]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[39]_INST_0 
       (.I0(i_rdata0[39]),
        .I1(fwd_10_1d),
        .O(rdata0[39]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[3]_INST_0 
       (.I0(i_rdata0[3]),
        .I1(fwd_10_1d),
        .O(rdata0[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[40]_INST_0 
       (.I0(i_rdata0[40]),
        .I1(fwd_10_1d),
        .O(rdata0[40]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[41]_INST_0 
       (.I0(i_rdata0[41]),
        .I1(fwd_10_1d),
        .O(rdata0[41]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[42]_INST_0 
       (.I0(i_rdata0[42]),
        .I1(fwd_10_1d),
        .O(rdata0[42]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[43]_INST_0 
       (.I0(i_rdata0[43]),
        .I1(fwd_10_1d),
        .O(rdata0[43]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[44]_INST_0 
       (.I0(i_rdata0[44]),
        .I1(fwd_10_1d),
        .O(rdata0[44]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[45]_INST_0 
       (.I0(i_rdata0[45]),
        .I1(fwd_10_1d),
        .O(rdata0[45]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[46]_INST_0 
       (.I0(i_rdata0[46]),
        .I1(fwd_10_1d),
        .O(rdata0[46]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[47]_INST_0 
       (.I0(i_rdata0[47]),
        .I1(fwd_10_1d),
        .O(rdata0[47]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[48]_INST_0 
       (.I0(i_rdata0[48]),
        .I1(fwd_10_1d),
        .O(rdata0[48]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[49]_INST_0 
       (.I0(i_rdata0[49]),
        .I1(fwd_10_1d),
        .O(rdata0[49]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[4]_INST_0 
       (.I0(i_rdata0[4]),
        .I1(fwd_10_1d),
        .O(rdata0[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[50]_INST_0 
       (.I0(i_rdata0[50]),
        .I1(fwd_10_1d),
        .O(rdata0[50]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[51]_INST_0 
       (.I0(i_rdata0[51]),
        .I1(fwd_10_1d),
        .O(rdata0[51]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[52]_INST_0 
       (.I0(i_rdata0[52]),
        .I1(fwd_10_1d),
        .O(rdata0[52]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[53]_INST_0 
       (.I0(i_rdata0[53]),
        .I1(fwd_10_1d),
        .O(rdata0[53]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[54]_INST_0 
       (.I0(i_rdata0[54]),
        .I1(fwd_10_1d),
        .O(rdata0[54]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[55]_INST_0 
       (.I0(i_rdata0[55]),
        .I1(fwd_10_1d),
        .O(rdata0[55]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[56]_INST_0 
       (.I0(i_rdata0[56]),
        .I1(fwd_10_1d),
        .O(rdata0[56]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[57]_INST_0 
       (.I0(i_rdata0[57]),
        .I1(fwd_10_1d),
        .O(rdata0[57]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[58]_INST_0 
       (.I0(i_rdata0[58]),
        .I1(fwd_10_1d),
        .O(rdata0[58]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[59]_INST_0 
       (.I0(i_rdata0[59]),
        .I1(fwd_10_1d),
        .O(rdata0[59]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[5]_INST_0 
       (.I0(i_rdata0[5]),
        .I1(fwd_10_1d),
        .O(rdata0[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[60]_INST_0 
       (.I0(i_rdata0[60]),
        .I1(fwd_10_1d),
        .O(rdata0[60]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[61]_INST_0 
       (.I0(i_rdata0[61]),
        .I1(fwd_10_1d),
        .O(rdata0[61]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[62]_INST_0 
       (.I0(i_rdata0[62]),
        .I1(fwd_10_1d),
        .O(rdata0[62]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[63]_INST_0 
       (.I0(i_rdata0[63]),
        .I1(fwd_10_1d),
        .O(rdata0[63]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[6]_INST_0 
       (.I0(i_rdata0[6]),
        .I1(fwd_10_1d),
        .O(rdata0[6]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[7]_INST_0 
       (.I0(i_rdata0[7]),
        .I1(fwd_10_1d),
        .O(rdata0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[8]_INST_0 
       (.I0(i_rdata0[8]),
        .I1(fwd_10_1d),
        .O(rdata0[8]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata0[9]_INST_0 
       (.I0(i_rdata0[9]),
        .I1(fwd_10_1d),
        .O(rdata0[9]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[0]_INST_0 
       (.I0(i_rdata1[0]),
        .I1(fwd_01_1d),
        .O(rdata1[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[10]_INST_0 
       (.I0(i_rdata1[10]),
        .I1(fwd_01_1d),
        .O(rdata1[10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[11]_INST_0 
       (.I0(i_rdata1[11]),
        .I1(fwd_01_1d),
        .O(rdata1[11]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[12]_INST_0 
       (.I0(i_rdata1[12]),
        .I1(fwd_01_1d),
        .O(rdata1[12]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[13]_INST_0 
       (.I0(i_rdata1[13]),
        .I1(fwd_01_1d),
        .O(rdata1[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[14]_INST_0 
       (.I0(i_rdata1[14]),
        .I1(fwd_01_1d),
        .O(rdata1[14]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[15]_INST_0 
       (.I0(i_rdata1[15]),
        .I1(fwd_01_1d),
        .O(rdata1[15]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[16]_INST_0 
       (.I0(i_rdata1[16]),
        .I1(fwd_01_1d),
        .O(rdata1[16]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[17]_INST_0 
       (.I0(i_rdata1[17]),
        .I1(fwd_01_1d),
        .O(rdata1[17]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[18]_INST_0 
       (.I0(i_rdata1[18]),
        .I1(fwd_01_1d),
        .O(rdata1[18]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[19]_INST_0 
       (.I0(i_rdata1[19]),
        .I1(fwd_01_1d),
        .O(rdata1[19]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[1]_INST_0 
       (.I0(i_rdata1[1]),
        .I1(fwd_01_1d),
        .O(rdata1[1]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[20]_INST_0 
       (.I0(i_rdata1[20]),
        .I1(fwd_01_1d),
        .O(rdata1[20]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[21]_INST_0 
       (.I0(i_rdata1[21]),
        .I1(fwd_01_1d),
        .O(rdata1[21]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[22]_INST_0 
       (.I0(i_rdata1[22]),
        .I1(fwd_01_1d),
        .O(rdata1[22]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[23]_INST_0 
       (.I0(i_rdata1[23]),
        .I1(fwd_01_1d),
        .O(rdata1[23]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[24]_INST_0 
       (.I0(i_rdata1[24]),
        .I1(fwd_01_1d),
        .O(rdata1[24]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[25]_INST_0 
       (.I0(i_rdata1[25]),
        .I1(fwd_01_1d),
        .O(rdata1[25]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[26]_INST_0 
       (.I0(i_rdata1[26]),
        .I1(fwd_01_1d),
        .O(rdata1[26]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[27]_INST_0 
       (.I0(i_rdata1[27]),
        .I1(fwd_01_1d),
        .O(rdata1[27]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[28]_INST_0 
       (.I0(i_rdata1[28]),
        .I1(fwd_01_1d),
        .O(rdata1[28]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[29]_INST_0 
       (.I0(i_rdata1[29]),
        .I1(fwd_01_1d),
        .O(rdata1[29]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[2]_INST_0 
       (.I0(i_rdata1[2]),
        .I1(fwd_01_1d),
        .O(rdata1[2]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[30]_INST_0 
       (.I0(i_rdata1[30]),
        .I1(fwd_01_1d),
        .O(rdata1[30]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[31]_INST_0 
       (.I0(i_rdata1[31]),
        .I1(fwd_01_1d),
        .O(rdata1[31]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[32]_INST_0 
       (.I0(i_rdata1[32]),
        .I1(fwd_01_1d),
        .O(rdata1[32]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[33]_INST_0 
       (.I0(i_rdata1[33]),
        .I1(fwd_01_1d),
        .O(rdata1[33]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[34]_INST_0 
       (.I0(i_rdata1[34]),
        .I1(fwd_01_1d),
        .O(rdata1[34]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[35]_INST_0 
       (.I0(i_rdata1[35]),
        .I1(fwd_01_1d),
        .O(rdata1[35]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[36]_INST_0 
       (.I0(i_rdata1[36]),
        .I1(fwd_01_1d),
        .O(rdata1[36]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[37]_INST_0 
       (.I0(i_rdata1[37]),
        .I1(fwd_01_1d),
        .O(rdata1[37]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[38]_INST_0 
       (.I0(i_rdata1[38]),
        .I1(fwd_01_1d),
        .O(rdata1[38]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[39]_INST_0 
       (.I0(i_rdata1[39]),
        .I1(fwd_01_1d),
        .O(rdata1[39]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[3]_INST_0 
       (.I0(i_rdata1[3]),
        .I1(fwd_01_1d),
        .O(rdata1[3]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[40]_INST_0 
       (.I0(i_rdata1[40]),
        .I1(fwd_01_1d),
        .O(rdata1[40]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[41]_INST_0 
       (.I0(i_rdata1[41]),
        .I1(fwd_01_1d),
        .O(rdata1[41]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[42]_INST_0 
       (.I0(i_rdata1[42]),
        .I1(fwd_01_1d),
        .O(rdata1[42]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[43]_INST_0 
       (.I0(i_rdata1[43]),
        .I1(fwd_01_1d),
        .O(rdata1[43]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[44]_INST_0 
       (.I0(i_rdata1[44]),
        .I1(fwd_01_1d),
        .O(rdata1[44]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[45]_INST_0 
       (.I0(i_rdata1[45]),
        .I1(fwd_01_1d),
        .O(rdata1[45]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[46]_INST_0 
       (.I0(i_rdata1[46]),
        .I1(fwd_01_1d),
        .O(rdata1[46]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[47]_INST_0 
       (.I0(i_rdata1[47]),
        .I1(fwd_01_1d),
        .O(rdata1[47]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[48]_INST_0 
       (.I0(i_rdata1[48]),
        .I1(fwd_01_1d),
        .O(rdata1[48]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[49]_INST_0 
       (.I0(i_rdata1[49]),
        .I1(fwd_01_1d),
        .O(rdata1[49]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[4]_INST_0 
       (.I0(i_rdata1[4]),
        .I1(fwd_01_1d),
        .O(rdata1[4]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[50]_INST_0 
       (.I0(i_rdata1[50]),
        .I1(fwd_01_1d),
        .O(rdata1[50]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[51]_INST_0 
       (.I0(i_rdata1[51]),
        .I1(fwd_01_1d),
        .O(rdata1[51]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[52]_INST_0 
       (.I0(i_rdata1[52]),
        .I1(fwd_01_1d),
        .O(rdata1[52]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[53]_INST_0 
       (.I0(i_rdata1[53]),
        .I1(fwd_01_1d),
        .O(rdata1[53]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[54]_INST_0 
       (.I0(i_rdata1[54]),
        .I1(fwd_01_1d),
        .O(rdata1[54]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[55]_INST_0 
       (.I0(i_rdata1[55]),
        .I1(fwd_01_1d),
        .O(rdata1[55]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[56]_INST_0 
       (.I0(i_rdata1[56]),
        .I1(fwd_01_1d),
        .O(rdata1[56]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[57]_INST_0 
       (.I0(i_rdata1[57]),
        .I1(fwd_01_1d),
        .O(rdata1[57]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[58]_INST_0 
       (.I0(i_rdata1[58]),
        .I1(fwd_01_1d),
        .O(rdata1[58]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[59]_INST_0 
       (.I0(i_rdata1[59]),
        .I1(fwd_01_1d),
        .O(rdata1[59]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[5]_INST_0 
       (.I0(i_rdata1[5]),
        .I1(fwd_01_1d),
        .O(rdata1[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[60]_INST_0 
       (.I0(i_rdata1[60]),
        .I1(fwd_01_1d),
        .O(rdata1[60]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[61]_INST_0 
       (.I0(i_rdata1[61]),
        .I1(fwd_01_1d),
        .O(rdata1[61]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[62]_INST_0 
       (.I0(i_rdata1[62]),
        .I1(fwd_01_1d),
        .O(rdata1[62]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[63]_INST_0 
       (.I0(i_rdata1[63]),
        .I1(fwd_01_1d),
        .O(rdata1[63]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[6]_INST_0 
       (.I0(i_rdata1[6]),
        .I1(fwd_01_1d),
        .O(rdata1[6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[7]_INST_0 
       (.I0(i_rdata1[7]),
        .I1(fwd_01_1d),
        .O(rdata1[7]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[8]_INST_0 
       (.I0(i_rdata1[8]),
        .I1(fwd_01_1d),
        .O(rdata1[8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rdata1[9]_INST_0 
       (.I0(i_rdata1[9]),
        .I1(fwd_01_1d),
        .O(rdata1[9]));
endmodule

(* CHECK_LICENSE_TYPE = "uram_wex8_uram_2w_2r_we_0_0,uram_2w_2r_we,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uram_2w_2r_we,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    ce0,
    ce1,
    we0,
    we1,
    addr0,
    addr1,
    rdata0,
    rdata1,
    wdata0,
    wdata1);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uram_wex8_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input ce0;
  input ce1;
  input [7:0]we0;
  input [7:0]we1;
  input [11:0]addr0;
  input [11:0]addr1;
  output [63:0]rdata0;
  output [63:0]rdata1;
  input [63:0]wdata0;
  input [63:0]wdata1;

  wire [11:0]addr0;
  wire [11:0]addr1;
  wire ce0;
  wire ce1;
  wire clk;
  wire [63:0]rdata0;
  wire [63:0]rdata1;
  wire rst_n;
  wire [63:0]wdata0;
  wire [63:0]wdata1;
  wire [7:0]we0;
  wire [7:0]we1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r_we inst
       (.addr0(addr0),
        .addr1(addr1),
        .ce0(ce0),
        .ce1(ce1),
        .clk(clk),
        .rdata0(rdata0),
        .rdata1(rdata1),
        .rst_n(rst_n),
        .wdata0(wdata0),
        .wdata1(wdata1),
        .we0(we0),
        .we1(we1));
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
