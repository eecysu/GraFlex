// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr 25 20:01:28 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uramx2_uram_2w_2r_0_0_sim_netlist.v
// Design      : uramx2_uram_2w_2r_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r
   (rdata0,
    rdata1,
    clk,
    ce0,
    we0,
    addr0,
    wdata0,
    ce1,
    we1,
    addr1,
    wdata1,
    rst_n);
  output [63:0]rdata0;
  output [63:0]rdata1;
  input clk;
  input ce0;
  input we0;
  input [11:0]addr0;
  input [63:0]wdata0;
  input ce1;
  input we1;
  input [11:0]addr1;
  input [63:0]wdata1;
  input rst_n;

  wire [11:0]addr0;
  wire [11:0]addr1;
  wire ce0;
  wire ce1;
  wire clk;
  wire fwd_01;
  wire fwd_01_1d;
  wire fwd_01_1d_i_2_n_0;
  wire fwd_10;
  wire fwd_10_1d;
  wire fwd_10_1d_i_2_n_0;
  wire fwd_10_1d_i_3_n_0;
  wire fwd_10_1d_i_4_n_0;
  wire fwd_10_1d_i_5_n_0;
  wire fwd_10_1d_i_6_n_0;
  wire fwd_10_1d_i_7_n_0;
  wire [63:0]i_rdata0;
  wire [63:0]i_rdata1;
  wire [63:0]rdata0;
  wire [63:0]rdata1;
  wire rst_n;
  wire [63:0]wdata0;
  wire [63:0]wdata0_r;
  wire wdata0_r0;
  wire [63:0]wdata1;
  wire [63:0]wdata1_r;
  wire wdata1_r0;
  wire we0;
  wire we1;
  wire xpm_memory_tdpram_inst_i_1_n_0;
  wire NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fwd_01_1d_i_1
       (.I0(fwd_10_1d_i_2_n_0),
        .I1(fwd_10_1d_i_3_n_0),
        .I2(fwd_10_1d_i_4_n_0),
        .I3(fwd_10_1d_i_5_n_0),
        .I4(fwd_10_1d_i_6_n_0),
        .I5(fwd_01_1d_i_2_n_0),
        .O(fwd_01));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fwd_01_1d_i_2
       (.I0(we0),
        .I1(we1),
        .O(fwd_01_1d_i_2_n_0));
  FDRE fwd_01_1d_reg
       (.C(clk),
        .CE(1'b1),
        .D(fwd_01),
        .Q(fwd_01_1d),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    fwd_10_1d_i_1
       (.I0(fwd_10_1d_i_2_n_0),
        .I1(fwd_10_1d_i_3_n_0),
        .I2(fwd_10_1d_i_4_n_0),
        .I3(fwd_10_1d_i_5_n_0),
        .I4(fwd_10_1d_i_6_n_0),
        .I5(fwd_10_1d_i_7_n_0),
        .O(fwd_10));
  LUT2 #(
    .INIT(4'h8)) 
    fwd_10_1d_i_2
       (.I0(ce1),
        .I1(ce0),
        .O(fwd_10_1d_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_3
       (.I0(addr0[3]),
        .I1(addr1[3]),
        .I2(addr1[5]),
        .I3(addr0[5]),
        .I4(addr1[4]),
        .I5(addr0[4]),
        .O(fwd_10_1d_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_4
       (.I0(addr0[0]),
        .I1(addr1[0]),
        .I2(addr1[2]),
        .I3(addr0[2]),
        .I4(addr1[1]),
        .I5(addr0[1]),
        .O(fwd_10_1d_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_5
       (.I0(addr0[9]),
        .I1(addr1[9]),
        .I2(addr1[11]),
        .I3(addr0[11]),
        .I4(addr1[10]),
        .I5(addr0[10]),
        .O(fwd_10_1d_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    fwd_10_1d_i_6
       (.I0(addr0[6]),
        .I1(addr1[6]),
        .I2(addr1[8]),
        .I3(addr0[8]),
        .I4(addr1[7]),
        .I5(addr0[7]),
        .O(fwd_10_1d_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    fwd_10_1d_i_7
       (.I0(we1),
        .I1(we0),
        .O(fwd_10_1d_i_7_n_0));
  FDRE fwd_10_1d_reg
       (.C(clk),
        .CE(1'b1),
        .D(fwd_10),
        .Q(fwd_10_1d),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[0]_INST_0 
       (.I0(wdata1_r[0]),
        .I1(i_rdata0[0]),
        .I2(fwd_10_1d),
        .O(rdata0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[10]_INST_0 
       (.I0(wdata1_r[10]),
        .I1(i_rdata0[10]),
        .I2(fwd_10_1d),
        .O(rdata0[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[11]_INST_0 
       (.I0(wdata1_r[11]),
        .I1(i_rdata0[11]),
        .I2(fwd_10_1d),
        .O(rdata0[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[12]_INST_0 
       (.I0(wdata1_r[12]),
        .I1(i_rdata0[12]),
        .I2(fwd_10_1d),
        .O(rdata0[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[13]_INST_0 
       (.I0(wdata1_r[13]),
        .I1(i_rdata0[13]),
        .I2(fwd_10_1d),
        .O(rdata0[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[14]_INST_0 
       (.I0(wdata1_r[14]),
        .I1(i_rdata0[14]),
        .I2(fwd_10_1d),
        .O(rdata0[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[15]_INST_0 
       (.I0(wdata1_r[15]),
        .I1(i_rdata0[15]),
        .I2(fwd_10_1d),
        .O(rdata0[15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[16]_INST_0 
       (.I0(wdata1_r[16]),
        .I1(i_rdata0[16]),
        .I2(fwd_10_1d),
        .O(rdata0[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[17]_INST_0 
       (.I0(wdata1_r[17]),
        .I1(i_rdata0[17]),
        .I2(fwd_10_1d),
        .O(rdata0[17]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[18]_INST_0 
       (.I0(wdata1_r[18]),
        .I1(i_rdata0[18]),
        .I2(fwd_10_1d),
        .O(rdata0[18]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[19]_INST_0 
       (.I0(wdata1_r[19]),
        .I1(i_rdata0[19]),
        .I2(fwd_10_1d),
        .O(rdata0[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[1]_INST_0 
       (.I0(wdata1_r[1]),
        .I1(i_rdata0[1]),
        .I2(fwd_10_1d),
        .O(rdata0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[20]_INST_0 
       (.I0(wdata1_r[20]),
        .I1(i_rdata0[20]),
        .I2(fwd_10_1d),
        .O(rdata0[20]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[21]_INST_0 
       (.I0(wdata1_r[21]),
        .I1(i_rdata0[21]),
        .I2(fwd_10_1d),
        .O(rdata0[21]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[22]_INST_0 
       (.I0(wdata1_r[22]),
        .I1(i_rdata0[22]),
        .I2(fwd_10_1d),
        .O(rdata0[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[23]_INST_0 
       (.I0(wdata1_r[23]),
        .I1(i_rdata0[23]),
        .I2(fwd_10_1d),
        .O(rdata0[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[24]_INST_0 
       (.I0(wdata1_r[24]),
        .I1(i_rdata0[24]),
        .I2(fwd_10_1d),
        .O(rdata0[24]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[25]_INST_0 
       (.I0(wdata1_r[25]),
        .I1(i_rdata0[25]),
        .I2(fwd_10_1d),
        .O(rdata0[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[26]_INST_0 
       (.I0(wdata1_r[26]),
        .I1(i_rdata0[26]),
        .I2(fwd_10_1d),
        .O(rdata0[26]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[27]_INST_0 
       (.I0(wdata1_r[27]),
        .I1(i_rdata0[27]),
        .I2(fwd_10_1d),
        .O(rdata0[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[28]_INST_0 
       (.I0(wdata1_r[28]),
        .I1(i_rdata0[28]),
        .I2(fwd_10_1d),
        .O(rdata0[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[29]_INST_0 
       (.I0(wdata1_r[29]),
        .I1(i_rdata0[29]),
        .I2(fwd_10_1d),
        .O(rdata0[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[2]_INST_0 
       (.I0(wdata1_r[2]),
        .I1(i_rdata0[2]),
        .I2(fwd_10_1d),
        .O(rdata0[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[30]_INST_0 
       (.I0(wdata1_r[30]),
        .I1(i_rdata0[30]),
        .I2(fwd_10_1d),
        .O(rdata0[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[31]_INST_0 
       (.I0(wdata1_r[31]),
        .I1(i_rdata0[31]),
        .I2(fwd_10_1d),
        .O(rdata0[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[32]_INST_0 
       (.I0(wdata1_r[32]),
        .I1(i_rdata0[32]),
        .I2(fwd_10_1d),
        .O(rdata0[32]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[33]_INST_0 
       (.I0(wdata1_r[33]),
        .I1(i_rdata0[33]),
        .I2(fwd_10_1d),
        .O(rdata0[33]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[34]_INST_0 
       (.I0(wdata1_r[34]),
        .I1(i_rdata0[34]),
        .I2(fwd_10_1d),
        .O(rdata0[34]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[35]_INST_0 
       (.I0(wdata1_r[35]),
        .I1(i_rdata0[35]),
        .I2(fwd_10_1d),
        .O(rdata0[35]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[36]_INST_0 
       (.I0(wdata1_r[36]),
        .I1(i_rdata0[36]),
        .I2(fwd_10_1d),
        .O(rdata0[36]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[37]_INST_0 
       (.I0(wdata1_r[37]),
        .I1(i_rdata0[37]),
        .I2(fwd_10_1d),
        .O(rdata0[37]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[38]_INST_0 
       (.I0(wdata1_r[38]),
        .I1(i_rdata0[38]),
        .I2(fwd_10_1d),
        .O(rdata0[38]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[39]_INST_0 
       (.I0(wdata1_r[39]),
        .I1(i_rdata0[39]),
        .I2(fwd_10_1d),
        .O(rdata0[39]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[3]_INST_0 
       (.I0(wdata1_r[3]),
        .I1(i_rdata0[3]),
        .I2(fwd_10_1d),
        .O(rdata0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[40]_INST_0 
       (.I0(wdata1_r[40]),
        .I1(i_rdata0[40]),
        .I2(fwd_10_1d),
        .O(rdata0[40]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[41]_INST_0 
       (.I0(wdata1_r[41]),
        .I1(i_rdata0[41]),
        .I2(fwd_10_1d),
        .O(rdata0[41]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[42]_INST_0 
       (.I0(wdata1_r[42]),
        .I1(i_rdata0[42]),
        .I2(fwd_10_1d),
        .O(rdata0[42]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[43]_INST_0 
       (.I0(wdata1_r[43]),
        .I1(i_rdata0[43]),
        .I2(fwd_10_1d),
        .O(rdata0[43]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[44]_INST_0 
       (.I0(wdata1_r[44]),
        .I1(i_rdata0[44]),
        .I2(fwd_10_1d),
        .O(rdata0[44]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[45]_INST_0 
       (.I0(wdata1_r[45]),
        .I1(i_rdata0[45]),
        .I2(fwd_10_1d),
        .O(rdata0[45]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[46]_INST_0 
       (.I0(wdata1_r[46]),
        .I1(i_rdata0[46]),
        .I2(fwd_10_1d),
        .O(rdata0[46]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[47]_INST_0 
       (.I0(wdata1_r[47]),
        .I1(i_rdata0[47]),
        .I2(fwd_10_1d),
        .O(rdata0[47]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[48]_INST_0 
       (.I0(wdata1_r[48]),
        .I1(i_rdata0[48]),
        .I2(fwd_10_1d),
        .O(rdata0[48]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[49]_INST_0 
       (.I0(wdata1_r[49]),
        .I1(i_rdata0[49]),
        .I2(fwd_10_1d),
        .O(rdata0[49]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[4]_INST_0 
       (.I0(wdata1_r[4]),
        .I1(i_rdata0[4]),
        .I2(fwd_10_1d),
        .O(rdata0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[50]_INST_0 
       (.I0(wdata1_r[50]),
        .I1(i_rdata0[50]),
        .I2(fwd_10_1d),
        .O(rdata0[50]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[51]_INST_0 
       (.I0(wdata1_r[51]),
        .I1(i_rdata0[51]),
        .I2(fwd_10_1d),
        .O(rdata0[51]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[52]_INST_0 
       (.I0(wdata1_r[52]),
        .I1(i_rdata0[52]),
        .I2(fwd_10_1d),
        .O(rdata0[52]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[53]_INST_0 
       (.I0(wdata1_r[53]),
        .I1(i_rdata0[53]),
        .I2(fwd_10_1d),
        .O(rdata0[53]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[54]_INST_0 
       (.I0(wdata1_r[54]),
        .I1(i_rdata0[54]),
        .I2(fwd_10_1d),
        .O(rdata0[54]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[55]_INST_0 
       (.I0(wdata1_r[55]),
        .I1(i_rdata0[55]),
        .I2(fwd_10_1d),
        .O(rdata0[55]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[56]_INST_0 
       (.I0(wdata1_r[56]),
        .I1(i_rdata0[56]),
        .I2(fwd_10_1d),
        .O(rdata0[56]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[57]_INST_0 
       (.I0(wdata1_r[57]),
        .I1(i_rdata0[57]),
        .I2(fwd_10_1d),
        .O(rdata0[57]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[58]_INST_0 
       (.I0(wdata1_r[58]),
        .I1(i_rdata0[58]),
        .I2(fwd_10_1d),
        .O(rdata0[58]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[59]_INST_0 
       (.I0(wdata1_r[59]),
        .I1(i_rdata0[59]),
        .I2(fwd_10_1d),
        .O(rdata0[59]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[5]_INST_0 
       (.I0(wdata1_r[5]),
        .I1(i_rdata0[5]),
        .I2(fwd_10_1d),
        .O(rdata0[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[60]_INST_0 
       (.I0(wdata1_r[60]),
        .I1(i_rdata0[60]),
        .I2(fwd_10_1d),
        .O(rdata0[60]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[61]_INST_0 
       (.I0(wdata1_r[61]),
        .I1(i_rdata0[61]),
        .I2(fwd_10_1d),
        .O(rdata0[61]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[62]_INST_0 
       (.I0(wdata1_r[62]),
        .I1(i_rdata0[62]),
        .I2(fwd_10_1d),
        .O(rdata0[62]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[63]_INST_0 
       (.I0(wdata1_r[63]),
        .I1(i_rdata0[63]),
        .I2(fwd_10_1d),
        .O(rdata0[63]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[6]_INST_0 
       (.I0(wdata1_r[6]),
        .I1(i_rdata0[6]),
        .I2(fwd_10_1d),
        .O(rdata0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[7]_INST_0 
       (.I0(wdata1_r[7]),
        .I1(i_rdata0[7]),
        .I2(fwd_10_1d),
        .O(rdata0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[8]_INST_0 
       (.I0(wdata1_r[8]),
        .I1(i_rdata0[8]),
        .I2(fwd_10_1d),
        .O(rdata0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata0[9]_INST_0 
       (.I0(wdata1_r[9]),
        .I1(i_rdata0[9]),
        .I2(fwd_10_1d),
        .O(rdata0[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[0]_INST_0 
       (.I0(wdata0_r[0]),
        .I1(i_rdata1[0]),
        .I2(fwd_01_1d),
        .O(rdata1[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[10]_INST_0 
       (.I0(wdata0_r[10]),
        .I1(i_rdata1[10]),
        .I2(fwd_01_1d),
        .O(rdata1[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[11]_INST_0 
       (.I0(wdata0_r[11]),
        .I1(i_rdata1[11]),
        .I2(fwd_01_1d),
        .O(rdata1[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[12]_INST_0 
       (.I0(wdata0_r[12]),
        .I1(i_rdata1[12]),
        .I2(fwd_01_1d),
        .O(rdata1[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[13]_INST_0 
       (.I0(wdata0_r[13]),
        .I1(i_rdata1[13]),
        .I2(fwd_01_1d),
        .O(rdata1[13]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[14]_INST_0 
       (.I0(wdata0_r[14]),
        .I1(i_rdata1[14]),
        .I2(fwd_01_1d),
        .O(rdata1[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[15]_INST_0 
       (.I0(wdata0_r[15]),
        .I1(i_rdata1[15]),
        .I2(fwd_01_1d),
        .O(rdata1[15]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[16]_INST_0 
       (.I0(wdata0_r[16]),
        .I1(i_rdata1[16]),
        .I2(fwd_01_1d),
        .O(rdata1[16]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[17]_INST_0 
       (.I0(wdata0_r[17]),
        .I1(i_rdata1[17]),
        .I2(fwd_01_1d),
        .O(rdata1[17]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[18]_INST_0 
       (.I0(wdata0_r[18]),
        .I1(i_rdata1[18]),
        .I2(fwd_01_1d),
        .O(rdata1[18]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[19]_INST_0 
       (.I0(wdata0_r[19]),
        .I1(i_rdata1[19]),
        .I2(fwd_01_1d),
        .O(rdata1[19]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[1]_INST_0 
       (.I0(wdata0_r[1]),
        .I1(i_rdata1[1]),
        .I2(fwd_01_1d),
        .O(rdata1[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[20]_INST_0 
       (.I0(wdata0_r[20]),
        .I1(i_rdata1[20]),
        .I2(fwd_01_1d),
        .O(rdata1[20]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[21]_INST_0 
       (.I0(wdata0_r[21]),
        .I1(i_rdata1[21]),
        .I2(fwd_01_1d),
        .O(rdata1[21]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[22]_INST_0 
       (.I0(wdata0_r[22]),
        .I1(i_rdata1[22]),
        .I2(fwd_01_1d),
        .O(rdata1[22]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[23]_INST_0 
       (.I0(wdata0_r[23]),
        .I1(i_rdata1[23]),
        .I2(fwd_01_1d),
        .O(rdata1[23]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[24]_INST_0 
       (.I0(wdata0_r[24]),
        .I1(i_rdata1[24]),
        .I2(fwd_01_1d),
        .O(rdata1[24]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[25]_INST_0 
       (.I0(wdata0_r[25]),
        .I1(i_rdata1[25]),
        .I2(fwd_01_1d),
        .O(rdata1[25]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[26]_INST_0 
       (.I0(wdata0_r[26]),
        .I1(i_rdata1[26]),
        .I2(fwd_01_1d),
        .O(rdata1[26]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[27]_INST_0 
       (.I0(wdata0_r[27]),
        .I1(i_rdata1[27]),
        .I2(fwd_01_1d),
        .O(rdata1[27]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[28]_INST_0 
       (.I0(wdata0_r[28]),
        .I1(i_rdata1[28]),
        .I2(fwd_01_1d),
        .O(rdata1[28]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[29]_INST_0 
       (.I0(wdata0_r[29]),
        .I1(i_rdata1[29]),
        .I2(fwd_01_1d),
        .O(rdata1[29]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[2]_INST_0 
       (.I0(wdata0_r[2]),
        .I1(i_rdata1[2]),
        .I2(fwd_01_1d),
        .O(rdata1[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[30]_INST_0 
       (.I0(wdata0_r[30]),
        .I1(i_rdata1[30]),
        .I2(fwd_01_1d),
        .O(rdata1[30]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[31]_INST_0 
       (.I0(wdata0_r[31]),
        .I1(i_rdata1[31]),
        .I2(fwd_01_1d),
        .O(rdata1[31]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[32]_INST_0 
       (.I0(wdata0_r[32]),
        .I1(i_rdata1[32]),
        .I2(fwd_01_1d),
        .O(rdata1[32]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[33]_INST_0 
       (.I0(wdata0_r[33]),
        .I1(i_rdata1[33]),
        .I2(fwd_01_1d),
        .O(rdata1[33]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[34]_INST_0 
       (.I0(wdata0_r[34]),
        .I1(i_rdata1[34]),
        .I2(fwd_01_1d),
        .O(rdata1[34]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[35]_INST_0 
       (.I0(wdata0_r[35]),
        .I1(i_rdata1[35]),
        .I2(fwd_01_1d),
        .O(rdata1[35]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[36]_INST_0 
       (.I0(wdata0_r[36]),
        .I1(i_rdata1[36]),
        .I2(fwd_01_1d),
        .O(rdata1[36]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[37]_INST_0 
       (.I0(wdata0_r[37]),
        .I1(i_rdata1[37]),
        .I2(fwd_01_1d),
        .O(rdata1[37]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[38]_INST_0 
       (.I0(wdata0_r[38]),
        .I1(i_rdata1[38]),
        .I2(fwd_01_1d),
        .O(rdata1[38]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[39]_INST_0 
       (.I0(wdata0_r[39]),
        .I1(i_rdata1[39]),
        .I2(fwd_01_1d),
        .O(rdata1[39]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[3]_INST_0 
       (.I0(wdata0_r[3]),
        .I1(i_rdata1[3]),
        .I2(fwd_01_1d),
        .O(rdata1[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[40]_INST_0 
       (.I0(wdata0_r[40]),
        .I1(i_rdata1[40]),
        .I2(fwd_01_1d),
        .O(rdata1[40]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[41]_INST_0 
       (.I0(wdata0_r[41]),
        .I1(i_rdata1[41]),
        .I2(fwd_01_1d),
        .O(rdata1[41]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[42]_INST_0 
       (.I0(wdata0_r[42]),
        .I1(i_rdata1[42]),
        .I2(fwd_01_1d),
        .O(rdata1[42]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[43]_INST_0 
       (.I0(wdata0_r[43]),
        .I1(i_rdata1[43]),
        .I2(fwd_01_1d),
        .O(rdata1[43]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[44]_INST_0 
       (.I0(wdata0_r[44]),
        .I1(i_rdata1[44]),
        .I2(fwd_01_1d),
        .O(rdata1[44]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[45]_INST_0 
       (.I0(wdata0_r[45]),
        .I1(i_rdata1[45]),
        .I2(fwd_01_1d),
        .O(rdata1[45]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[46]_INST_0 
       (.I0(wdata0_r[46]),
        .I1(i_rdata1[46]),
        .I2(fwd_01_1d),
        .O(rdata1[46]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[47]_INST_0 
       (.I0(wdata0_r[47]),
        .I1(i_rdata1[47]),
        .I2(fwd_01_1d),
        .O(rdata1[47]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[48]_INST_0 
       (.I0(wdata0_r[48]),
        .I1(i_rdata1[48]),
        .I2(fwd_01_1d),
        .O(rdata1[48]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[49]_INST_0 
       (.I0(wdata0_r[49]),
        .I1(i_rdata1[49]),
        .I2(fwd_01_1d),
        .O(rdata1[49]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[4]_INST_0 
       (.I0(wdata0_r[4]),
        .I1(i_rdata1[4]),
        .I2(fwd_01_1d),
        .O(rdata1[4]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[50]_INST_0 
       (.I0(wdata0_r[50]),
        .I1(i_rdata1[50]),
        .I2(fwd_01_1d),
        .O(rdata1[50]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[51]_INST_0 
       (.I0(wdata0_r[51]),
        .I1(i_rdata1[51]),
        .I2(fwd_01_1d),
        .O(rdata1[51]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[52]_INST_0 
       (.I0(wdata0_r[52]),
        .I1(i_rdata1[52]),
        .I2(fwd_01_1d),
        .O(rdata1[52]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[53]_INST_0 
       (.I0(wdata0_r[53]),
        .I1(i_rdata1[53]),
        .I2(fwd_01_1d),
        .O(rdata1[53]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[54]_INST_0 
       (.I0(wdata0_r[54]),
        .I1(i_rdata1[54]),
        .I2(fwd_01_1d),
        .O(rdata1[54]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[55]_INST_0 
       (.I0(wdata0_r[55]),
        .I1(i_rdata1[55]),
        .I2(fwd_01_1d),
        .O(rdata1[55]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[56]_INST_0 
       (.I0(wdata0_r[56]),
        .I1(i_rdata1[56]),
        .I2(fwd_01_1d),
        .O(rdata1[56]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[57]_INST_0 
       (.I0(wdata0_r[57]),
        .I1(i_rdata1[57]),
        .I2(fwd_01_1d),
        .O(rdata1[57]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[58]_INST_0 
       (.I0(wdata0_r[58]),
        .I1(i_rdata1[58]),
        .I2(fwd_01_1d),
        .O(rdata1[58]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[59]_INST_0 
       (.I0(wdata0_r[59]),
        .I1(i_rdata1[59]),
        .I2(fwd_01_1d),
        .O(rdata1[59]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[5]_INST_0 
       (.I0(wdata0_r[5]),
        .I1(i_rdata1[5]),
        .I2(fwd_01_1d),
        .O(rdata1[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[60]_INST_0 
       (.I0(wdata0_r[60]),
        .I1(i_rdata1[60]),
        .I2(fwd_01_1d),
        .O(rdata1[60]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[61]_INST_0 
       (.I0(wdata0_r[61]),
        .I1(i_rdata1[61]),
        .I2(fwd_01_1d),
        .O(rdata1[61]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[62]_INST_0 
       (.I0(wdata0_r[62]),
        .I1(i_rdata1[62]),
        .I2(fwd_01_1d),
        .O(rdata1[62]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[63]_INST_0 
       (.I0(wdata0_r[63]),
        .I1(i_rdata1[63]),
        .I2(fwd_01_1d),
        .O(rdata1[63]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[6]_INST_0 
       (.I0(wdata0_r[6]),
        .I1(i_rdata1[6]),
        .I2(fwd_01_1d),
        .O(rdata1[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[7]_INST_0 
       (.I0(wdata0_r[7]),
        .I1(i_rdata1[7]),
        .I2(fwd_01_1d),
        .O(rdata1[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[8]_INST_0 
       (.I0(wdata0_r[8]),
        .I1(i_rdata1[8]),
        .I2(fwd_01_1d),
        .O(rdata1[8]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rdata1[9]_INST_0 
       (.I0(wdata0_r[9]),
        .I1(i_rdata1[9]),
        .I2(fwd_01_1d),
        .O(rdata1[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \wdata0_r[63]_i_1 
       (.I0(ce0),
        .I1(we0),
        .O(wdata0_r0));
  FDRE \wdata0_r_reg[0] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[0]),
        .Q(wdata0_r[0]),
        .R(1'b0));
  FDRE \wdata0_r_reg[10] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[10]),
        .Q(wdata0_r[10]),
        .R(1'b0));
  FDRE \wdata0_r_reg[11] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[11]),
        .Q(wdata0_r[11]),
        .R(1'b0));
  FDRE \wdata0_r_reg[12] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[12]),
        .Q(wdata0_r[12]),
        .R(1'b0));
  FDRE \wdata0_r_reg[13] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[13]),
        .Q(wdata0_r[13]),
        .R(1'b0));
  FDRE \wdata0_r_reg[14] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[14]),
        .Q(wdata0_r[14]),
        .R(1'b0));
  FDRE \wdata0_r_reg[15] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[15]),
        .Q(wdata0_r[15]),
        .R(1'b0));
  FDRE \wdata0_r_reg[16] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[16]),
        .Q(wdata0_r[16]),
        .R(1'b0));
  FDRE \wdata0_r_reg[17] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[17]),
        .Q(wdata0_r[17]),
        .R(1'b0));
  FDRE \wdata0_r_reg[18] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[18]),
        .Q(wdata0_r[18]),
        .R(1'b0));
  FDRE \wdata0_r_reg[19] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[19]),
        .Q(wdata0_r[19]),
        .R(1'b0));
  FDRE \wdata0_r_reg[1] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[1]),
        .Q(wdata0_r[1]),
        .R(1'b0));
  FDRE \wdata0_r_reg[20] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[20]),
        .Q(wdata0_r[20]),
        .R(1'b0));
  FDRE \wdata0_r_reg[21] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[21]),
        .Q(wdata0_r[21]),
        .R(1'b0));
  FDRE \wdata0_r_reg[22] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[22]),
        .Q(wdata0_r[22]),
        .R(1'b0));
  FDRE \wdata0_r_reg[23] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[23]),
        .Q(wdata0_r[23]),
        .R(1'b0));
  FDRE \wdata0_r_reg[24] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[24]),
        .Q(wdata0_r[24]),
        .R(1'b0));
  FDRE \wdata0_r_reg[25] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[25]),
        .Q(wdata0_r[25]),
        .R(1'b0));
  FDRE \wdata0_r_reg[26] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[26]),
        .Q(wdata0_r[26]),
        .R(1'b0));
  FDRE \wdata0_r_reg[27] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[27]),
        .Q(wdata0_r[27]),
        .R(1'b0));
  FDRE \wdata0_r_reg[28] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[28]),
        .Q(wdata0_r[28]),
        .R(1'b0));
  FDRE \wdata0_r_reg[29] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[29]),
        .Q(wdata0_r[29]),
        .R(1'b0));
  FDRE \wdata0_r_reg[2] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[2]),
        .Q(wdata0_r[2]),
        .R(1'b0));
  FDRE \wdata0_r_reg[30] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[30]),
        .Q(wdata0_r[30]),
        .R(1'b0));
  FDRE \wdata0_r_reg[31] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[31]),
        .Q(wdata0_r[31]),
        .R(1'b0));
  FDRE \wdata0_r_reg[32] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[32]),
        .Q(wdata0_r[32]),
        .R(1'b0));
  FDRE \wdata0_r_reg[33] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[33]),
        .Q(wdata0_r[33]),
        .R(1'b0));
  FDRE \wdata0_r_reg[34] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[34]),
        .Q(wdata0_r[34]),
        .R(1'b0));
  FDRE \wdata0_r_reg[35] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[35]),
        .Q(wdata0_r[35]),
        .R(1'b0));
  FDRE \wdata0_r_reg[36] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[36]),
        .Q(wdata0_r[36]),
        .R(1'b0));
  FDRE \wdata0_r_reg[37] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[37]),
        .Q(wdata0_r[37]),
        .R(1'b0));
  FDRE \wdata0_r_reg[38] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[38]),
        .Q(wdata0_r[38]),
        .R(1'b0));
  FDRE \wdata0_r_reg[39] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[39]),
        .Q(wdata0_r[39]),
        .R(1'b0));
  FDRE \wdata0_r_reg[3] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[3]),
        .Q(wdata0_r[3]),
        .R(1'b0));
  FDRE \wdata0_r_reg[40] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[40]),
        .Q(wdata0_r[40]),
        .R(1'b0));
  FDRE \wdata0_r_reg[41] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[41]),
        .Q(wdata0_r[41]),
        .R(1'b0));
  FDRE \wdata0_r_reg[42] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[42]),
        .Q(wdata0_r[42]),
        .R(1'b0));
  FDRE \wdata0_r_reg[43] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[43]),
        .Q(wdata0_r[43]),
        .R(1'b0));
  FDRE \wdata0_r_reg[44] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[44]),
        .Q(wdata0_r[44]),
        .R(1'b0));
  FDRE \wdata0_r_reg[45] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[45]),
        .Q(wdata0_r[45]),
        .R(1'b0));
  FDRE \wdata0_r_reg[46] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[46]),
        .Q(wdata0_r[46]),
        .R(1'b0));
  FDRE \wdata0_r_reg[47] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[47]),
        .Q(wdata0_r[47]),
        .R(1'b0));
  FDRE \wdata0_r_reg[48] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[48]),
        .Q(wdata0_r[48]),
        .R(1'b0));
  FDRE \wdata0_r_reg[49] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[49]),
        .Q(wdata0_r[49]),
        .R(1'b0));
  FDRE \wdata0_r_reg[4] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[4]),
        .Q(wdata0_r[4]),
        .R(1'b0));
  FDRE \wdata0_r_reg[50] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[50]),
        .Q(wdata0_r[50]),
        .R(1'b0));
  FDRE \wdata0_r_reg[51] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[51]),
        .Q(wdata0_r[51]),
        .R(1'b0));
  FDRE \wdata0_r_reg[52] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[52]),
        .Q(wdata0_r[52]),
        .R(1'b0));
  FDRE \wdata0_r_reg[53] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[53]),
        .Q(wdata0_r[53]),
        .R(1'b0));
  FDRE \wdata0_r_reg[54] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[54]),
        .Q(wdata0_r[54]),
        .R(1'b0));
  FDRE \wdata0_r_reg[55] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[55]),
        .Q(wdata0_r[55]),
        .R(1'b0));
  FDRE \wdata0_r_reg[56] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[56]),
        .Q(wdata0_r[56]),
        .R(1'b0));
  FDRE \wdata0_r_reg[57] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[57]),
        .Q(wdata0_r[57]),
        .R(1'b0));
  FDRE \wdata0_r_reg[58] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[58]),
        .Q(wdata0_r[58]),
        .R(1'b0));
  FDRE \wdata0_r_reg[59] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[59]),
        .Q(wdata0_r[59]),
        .R(1'b0));
  FDRE \wdata0_r_reg[5] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[5]),
        .Q(wdata0_r[5]),
        .R(1'b0));
  FDRE \wdata0_r_reg[60] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[60]),
        .Q(wdata0_r[60]),
        .R(1'b0));
  FDRE \wdata0_r_reg[61] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[61]),
        .Q(wdata0_r[61]),
        .R(1'b0));
  FDRE \wdata0_r_reg[62] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[62]),
        .Q(wdata0_r[62]),
        .R(1'b0));
  FDRE \wdata0_r_reg[63] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[63]),
        .Q(wdata0_r[63]),
        .R(1'b0));
  FDRE \wdata0_r_reg[6] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[6]),
        .Q(wdata0_r[6]),
        .R(1'b0));
  FDRE \wdata0_r_reg[7] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[7]),
        .Q(wdata0_r[7]),
        .R(1'b0));
  FDRE \wdata0_r_reg[8] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[8]),
        .Q(wdata0_r[8]),
        .R(1'b0));
  FDRE \wdata0_r_reg[9] 
       (.C(clk),
        .CE(wdata0_r0),
        .D(wdata0[9]),
        .Q(wdata0_r[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \wdata1_r[63]_i_1 
       (.I0(ce1),
        .I1(we1),
        .O(wdata1_r0));
  FDRE \wdata1_r_reg[0] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[0]),
        .Q(wdata1_r[0]),
        .R(1'b0));
  FDRE \wdata1_r_reg[10] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[10]),
        .Q(wdata1_r[10]),
        .R(1'b0));
  FDRE \wdata1_r_reg[11] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[11]),
        .Q(wdata1_r[11]),
        .R(1'b0));
  FDRE \wdata1_r_reg[12] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[12]),
        .Q(wdata1_r[12]),
        .R(1'b0));
  FDRE \wdata1_r_reg[13] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[13]),
        .Q(wdata1_r[13]),
        .R(1'b0));
  FDRE \wdata1_r_reg[14] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[14]),
        .Q(wdata1_r[14]),
        .R(1'b0));
  FDRE \wdata1_r_reg[15] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[15]),
        .Q(wdata1_r[15]),
        .R(1'b0));
  FDRE \wdata1_r_reg[16] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[16]),
        .Q(wdata1_r[16]),
        .R(1'b0));
  FDRE \wdata1_r_reg[17] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[17]),
        .Q(wdata1_r[17]),
        .R(1'b0));
  FDRE \wdata1_r_reg[18] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[18]),
        .Q(wdata1_r[18]),
        .R(1'b0));
  FDRE \wdata1_r_reg[19] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[19]),
        .Q(wdata1_r[19]),
        .R(1'b0));
  FDRE \wdata1_r_reg[1] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[1]),
        .Q(wdata1_r[1]),
        .R(1'b0));
  FDRE \wdata1_r_reg[20] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[20]),
        .Q(wdata1_r[20]),
        .R(1'b0));
  FDRE \wdata1_r_reg[21] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[21]),
        .Q(wdata1_r[21]),
        .R(1'b0));
  FDRE \wdata1_r_reg[22] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[22]),
        .Q(wdata1_r[22]),
        .R(1'b0));
  FDRE \wdata1_r_reg[23] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[23]),
        .Q(wdata1_r[23]),
        .R(1'b0));
  FDRE \wdata1_r_reg[24] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[24]),
        .Q(wdata1_r[24]),
        .R(1'b0));
  FDRE \wdata1_r_reg[25] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[25]),
        .Q(wdata1_r[25]),
        .R(1'b0));
  FDRE \wdata1_r_reg[26] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[26]),
        .Q(wdata1_r[26]),
        .R(1'b0));
  FDRE \wdata1_r_reg[27] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[27]),
        .Q(wdata1_r[27]),
        .R(1'b0));
  FDRE \wdata1_r_reg[28] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[28]),
        .Q(wdata1_r[28]),
        .R(1'b0));
  FDRE \wdata1_r_reg[29] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[29]),
        .Q(wdata1_r[29]),
        .R(1'b0));
  FDRE \wdata1_r_reg[2] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[2]),
        .Q(wdata1_r[2]),
        .R(1'b0));
  FDRE \wdata1_r_reg[30] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[30]),
        .Q(wdata1_r[30]),
        .R(1'b0));
  FDRE \wdata1_r_reg[31] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[31]),
        .Q(wdata1_r[31]),
        .R(1'b0));
  FDRE \wdata1_r_reg[32] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[32]),
        .Q(wdata1_r[32]),
        .R(1'b0));
  FDRE \wdata1_r_reg[33] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[33]),
        .Q(wdata1_r[33]),
        .R(1'b0));
  FDRE \wdata1_r_reg[34] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[34]),
        .Q(wdata1_r[34]),
        .R(1'b0));
  FDRE \wdata1_r_reg[35] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[35]),
        .Q(wdata1_r[35]),
        .R(1'b0));
  FDRE \wdata1_r_reg[36] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[36]),
        .Q(wdata1_r[36]),
        .R(1'b0));
  FDRE \wdata1_r_reg[37] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[37]),
        .Q(wdata1_r[37]),
        .R(1'b0));
  FDRE \wdata1_r_reg[38] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[38]),
        .Q(wdata1_r[38]),
        .R(1'b0));
  FDRE \wdata1_r_reg[39] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[39]),
        .Q(wdata1_r[39]),
        .R(1'b0));
  FDRE \wdata1_r_reg[3] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[3]),
        .Q(wdata1_r[3]),
        .R(1'b0));
  FDRE \wdata1_r_reg[40] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[40]),
        .Q(wdata1_r[40]),
        .R(1'b0));
  FDRE \wdata1_r_reg[41] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[41]),
        .Q(wdata1_r[41]),
        .R(1'b0));
  FDRE \wdata1_r_reg[42] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[42]),
        .Q(wdata1_r[42]),
        .R(1'b0));
  FDRE \wdata1_r_reg[43] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[43]),
        .Q(wdata1_r[43]),
        .R(1'b0));
  FDRE \wdata1_r_reg[44] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[44]),
        .Q(wdata1_r[44]),
        .R(1'b0));
  FDRE \wdata1_r_reg[45] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[45]),
        .Q(wdata1_r[45]),
        .R(1'b0));
  FDRE \wdata1_r_reg[46] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[46]),
        .Q(wdata1_r[46]),
        .R(1'b0));
  FDRE \wdata1_r_reg[47] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[47]),
        .Q(wdata1_r[47]),
        .R(1'b0));
  FDRE \wdata1_r_reg[48] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[48]),
        .Q(wdata1_r[48]),
        .R(1'b0));
  FDRE \wdata1_r_reg[49] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[49]),
        .Q(wdata1_r[49]),
        .R(1'b0));
  FDRE \wdata1_r_reg[4] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[4]),
        .Q(wdata1_r[4]),
        .R(1'b0));
  FDRE \wdata1_r_reg[50] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[50]),
        .Q(wdata1_r[50]),
        .R(1'b0));
  FDRE \wdata1_r_reg[51] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[51]),
        .Q(wdata1_r[51]),
        .R(1'b0));
  FDRE \wdata1_r_reg[52] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[52]),
        .Q(wdata1_r[52]),
        .R(1'b0));
  FDRE \wdata1_r_reg[53] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[53]),
        .Q(wdata1_r[53]),
        .R(1'b0));
  FDRE \wdata1_r_reg[54] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[54]),
        .Q(wdata1_r[54]),
        .R(1'b0));
  FDRE \wdata1_r_reg[55] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[55]),
        .Q(wdata1_r[55]),
        .R(1'b0));
  FDRE \wdata1_r_reg[56] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[56]),
        .Q(wdata1_r[56]),
        .R(1'b0));
  FDRE \wdata1_r_reg[57] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[57]),
        .Q(wdata1_r[57]),
        .R(1'b0));
  FDRE \wdata1_r_reg[58] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[58]),
        .Q(wdata1_r[58]),
        .R(1'b0));
  FDRE \wdata1_r_reg[59] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[59]),
        .Q(wdata1_r[59]),
        .R(1'b0));
  FDRE \wdata1_r_reg[5] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[5]),
        .Q(wdata1_r[5]),
        .R(1'b0));
  FDRE \wdata1_r_reg[60] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[60]),
        .Q(wdata1_r[60]),
        .R(1'b0));
  FDRE \wdata1_r_reg[61] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[61]),
        .Q(wdata1_r[61]),
        .R(1'b0));
  FDRE \wdata1_r_reg[62] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[62]),
        .Q(wdata1_r[62]),
        .R(1'b0));
  FDRE \wdata1_r_reg[63] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[63]),
        .Q(wdata1_r[63]),
        .R(1'b0));
  FDRE \wdata1_r_reg[6] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[6]),
        .Q(wdata1_r[6]),
        .R(1'b0));
  FDRE \wdata1_r_reg[7] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[7]),
        .Q(wdata1_r[7]),
        .R(1'b0));
  FDRE \wdata1_r_reg[8] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[8]),
        .Q(wdata1_r[8]),
        .R(1'b0));
  FDRE \wdata1_r_reg[9] 
       (.C(clk),
        .CE(wdata1_r0),
        .D(wdata1[9]),
        .Q(wdata1_r[9]),
        .R(1'b0));
  (* ADDR_WIDTH_A = "12" *) 
  (* ADDR_WIDTH_B = "12" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "64" *) 
  (* BYTE_WRITE_WIDTH_B = "64" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "0" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "block" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* P_CLOCKING_MODE = "0" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_MEMORY_OPTIMIZATION = "1" *) 
  (* P_MEMORY_PRIMITIVE = "2" *) 
  (* P_WAKEUP_TIME = "0" *) 
  (* P_WRITE_MODE_A = "2" *) 
  (* P_WRITE_MODE_B = "2" *) 
  (* READ_DATA_WIDTH_A = "64" *) 
  (* READ_DATA_WIDTH_B = "64" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "64" *) 
  (* WRITE_DATA_WIDTH_B = "64" *) 
  (* WRITE_MODE_A = "no_change" *) 
  (* WRITE_MODE_B = "no_change" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram xpm_memory_tdpram_inst
       (.addra({1'b0,1'b0,1'b0,addr0[8:0]}),
        .addrb({1'b0,1'b0,1'b0,addr1[8:0]}),
        .clka(clk),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED),
        .dina(wdata0),
        .dinb(wdata1),
        .douta(i_rdata0),
        .doutb(i_rdata1),
        .ena(ce0),
        .enb(ce1),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(xpm_memory_tdpram_inst_i_1_n_0),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED),
        .sleep(1'b0),
        .wea(we0),
        .web(we1));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_memory_tdpram_inst_i_1
       (.I0(rst_n),
        .O(xpm_memory_tdpram_inst_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "uramx2_uram_2w_2r_0_0,uram_2w_2r,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "uram_2w_2r,Vivado 2020.2" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uramx2_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input ce0;
  input ce1;
  input we0;
  input we1;
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
  wire we0;
  wire we1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uram_2w_2r inst
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

(* ADDR_WIDTH_A = "12" *) (* ADDR_WIDTH_B = "12" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "64" *) (* BYTE_WRITE_WIDTH_B = "64" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "0" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "512" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "64" *) 
(* P_MIN_WIDTH_DATA_A = "64" *) (* P_MIN_WIDTH_DATA_B = "64" *) (* P_MIN_WIDTH_DATA_ECC = "64" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "64" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "9" *) (* P_WIDTH_ADDR_READ_B = "9" *) 
(* P_WIDTH_ADDR_WRITE_A = "9" *) (* P_WIDTH_ADDR_WRITE_B = "9" *) (* P_WIDTH_COL_WRITE_A = "64" *) 
(* P_WIDTH_COL_WRITE_B = "64" *) (* READ_DATA_WIDTH_A = "64" *) (* READ_DATA_WIDTH_B = "64" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "1" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "64" *) (* WRITE_DATA_WIDTH_B = "64" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "2" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "64" *) (* rstb_loop_iter = "64" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
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
  input [11:0]addra;
  input [63:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [63:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [63:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [63:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ;
  wire rsta;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED ;
  wire [31:28]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED ;
  wire [31:28]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "35" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p4_d32" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "35" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
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
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR({1'b0,addrb[8:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra[8:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DBITERR_UNCONNECTED ),
        .DINADIN(dinb[31:0]),
        .DINBDIN(dina[31:0]),
        .DINPADINP(dinb[35:32]),
        .DINPBDINP(dina[35:32]),
        .DOUTADOUT(doutb[31:0]),
        .DOUTBDOUT(douta[31:0]),
        .DOUTPADOUTP(doutb[35:32]),
        .DOUTPBDOUTP(douta[35:32]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rsta),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 }));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "511" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d28" *) 
  (* \MEM.PORTA.DATA_LSB  = "36" *) 
  (* \MEM.PORTA.DATA_MSB  = "63" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "511" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d28" *) 
  (* \MEM.PORTB.DATA_LSB  = "36" *) 
  (* \MEM.PORTB.DATA_MSB  = "63" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "36" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(0),
    .DOB_REG(0),
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
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(36)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1 
       (.ADDRARDADDR({1'b0,addrb[8:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,addra[8:0],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b1),
        .CASDOMUXEN_B(1'b1),
        .CASDOUTA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b1),
        .CASOREGIMUXEN_B(1'b1),
        .CASOUTDBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,dinb[63:36]}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,dina[63:36]}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTADOUT_UNCONNECTED [31:28],doutb[63:36]}),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTBDOUT_UNCONNECTED [31:28],douta[63:36]}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(rsta),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_1_SBITERR_UNCONNECTED ),
        .SLEEP(1'b0),
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1 
       (.I0(rsta),
        .I1(enb),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_1_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "12" *) (* ADDR_WIDTH_B = "12" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "64" *) (* BYTE_WRITE_WIDTH_B = "64" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "0" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "block" *) 
(* MEMORY_SIZE = "32768" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "2" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "2" *) (* P_WRITE_MODE_B = "2" *) 
(* READ_DATA_WIDTH_A = "64" *) (* READ_DATA_WIDTH_B = "64" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "1" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "64" *) (* WRITE_DATA_WIDTH_B = "64" *) 
(* WRITE_MODE_A = "no_change" *) (* WRITE_MODE_B = "no_change" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_tdpram
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
  input [11:0]addra;
  input [63:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [63:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [63:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [63:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire [63:0]dina;
  wire [63:0]dinb;
  wire [63:0]douta;
  wire [63:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* ADDR_WIDTH_A = "12" *) 
  (* ADDR_WIDTH_B = "12" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "64" *) 
  (* BYTE_WRITE_WIDTH_B = "64" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "63" *) 
  (* \MEM.ADDRESS_SPACE_END  = "511" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "64" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "0" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "32768" *) 
  (* MEMORY_TYPE = "2" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "512" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "64" *) 
  (* P_MIN_WIDTH_DATA_A = "64" *) 
  (* P_MIN_WIDTH_DATA_B = "64" *) 
  (* P_MIN_WIDTH_DATA_ECC = "64" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "64" *) 
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
  (* P_WIDTH_ADDR_READ_A = "9" *) 
  (* P_WIDTH_ADDR_READ_B = "9" *) 
  (* P_WIDTH_ADDR_WRITE_A = "9" *) 
  (* P_WIDTH_ADDR_WRITE_B = "9" *) 
  (* P_WIDTH_COL_WRITE_A = "64" *) 
  (* P_WIDTH_COL_WRITE_B = "64" *) 
  (* READ_DATA_WIDTH_A = "64" *) 
  (* READ_DATA_WIDTH_B = "64" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "64" *) 
  (* WRITE_DATA_WIDTH_B = "64" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "2" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "64" *) 
  (* rstb_loop_iter = "64" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base xpm_memory_base_inst
       (.addra({1'b0,1'b0,1'b0,addra[8:0]}),
        .addrb({1'b0,1'b0,1'b0,addrb[8:0]}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(ena),
        .enb(enb),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(sleep),
        .wea(wea),
        .web(web));
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
