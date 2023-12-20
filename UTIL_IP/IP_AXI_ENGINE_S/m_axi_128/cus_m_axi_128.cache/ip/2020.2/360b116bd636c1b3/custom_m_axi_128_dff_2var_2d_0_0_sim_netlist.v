// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Feb  9 16:14:40 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_2var_2d_0_0_sim_netlist.v
// Design      : custom_m_axi_128_dff_2var_2d_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "custom_m_axi_128_dff_2var_2d_0_0,dff_2var_2d,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dff_2var_2d,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    q1,
    q2,
    d1,
    d2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, INSERT_VIP 0" *) input clk;
  input [63:0]q1;
  input [15:0]q2;
  output [63:0]d1;
  output [15:0]d2;

  wire clk;
  wire [63:0]d1;
  wire [15:0]d2;
  wire [63:0]q1;
  wire [15:0]q2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2var_2d inst
       (.clk(clk),
        .d1(d1),
        .d2(d2),
        .q1(q1),
        .q2(q2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2var_2d
   (d1,
    d2,
    q1,
    clk,
    q2);
  output [63:0]d1;
  output [15:0]d2;
  input [63:0]q1;
  input clk;
  input [15:0]q2;

  wire clk;
  wire [63:0]d1;
  wire [63:0]d1_r0;
  wire [15:0]d2;
  wire [15:0]d2_r0;
  wire [63:0]q1;
  wire [15:0]q2;

  FDRE \d1_r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[0]),
        .Q(d1_r0[0]),
        .R(1'b0));
  FDRE \d1_r0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[10]),
        .Q(d1_r0[10]),
        .R(1'b0));
  FDRE \d1_r0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[11]),
        .Q(d1_r0[11]),
        .R(1'b0));
  FDRE \d1_r0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[12]),
        .Q(d1_r0[12]),
        .R(1'b0));
  FDRE \d1_r0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[13]),
        .Q(d1_r0[13]),
        .R(1'b0));
  FDRE \d1_r0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[14]),
        .Q(d1_r0[14]),
        .R(1'b0));
  FDRE \d1_r0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[15]),
        .Q(d1_r0[15]),
        .R(1'b0));
  FDRE \d1_r0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[16]),
        .Q(d1_r0[16]),
        .R(1'b0));
  FDRE \d1_r0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[17]),
        .Q(d1_r0[17]),
        .R(1'b0));
  FDRE \d1_r0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[18]),
        .Q(d1_r0[18]),
        .R(1'b0));
  FDRE \d1_r0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[19]),
        .Q(d1_r0[19]),
        .R(1'b0));
  FDRE \d1_r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[1]),
        .Q(d1_r0[1]),
        .R(1'b0));
  FDRE \d1_r0_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[20]),
        .Q(d1_r0[20]),
        .R(1'b0));
  FDRE \d1_r0_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[21]),
        .Q(d1_r0[21]),
        .R(1'b0));
  FDRE \d1_r0_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[22]),
        .Q(d1_r0[22]),
        .R(1'b0));
  FDRE \d1_r0_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[23]),
        .Q(d1_r0[23]),
        .R(1'b0));
  FDRE \d1_r0_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[24]),
        .Q(d1_r0[24]),
        .R(1'b0));
  FDRE \d1_r0_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[25]),
        .Q(d1_r0[25]),
        .R(1'b0));
  FDRE \d1_r0_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[26]),
        .Q(d1_r0[26]),
        .R(1'b0));
  FDRE \d1_r0_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[27]),
        .Q(d1_r0[27]),
        .R(1'b0));
  FDRE \d1_r0_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[28]),
        .Q(d1_r0[28]),
        .R(1'b0));
  FDRE \d1_r0_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[29]),
        .Q(d1_r0[29]),
        .R(1'b0));
  FDRE \d1_r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[2]),
        .Q(d1_r0[2]),
        .R(1'b0));
  FDRE \d1_r0_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[30]),
        .Q(d1_r0[30]),
        .R(1'b0));
  FDRE \d1_r0_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[31]),
        .Q(d1_r0[31]),
        .R(1'b0));
  FDRE \d1_r0_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[32]),
        .Q(d1_r0[32]),
        .R(1'b0));
  FDRE \d1_r0_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[33]),
        .Q(d1_r0[33]),
        .R(1'b0));
  FDRE \d1_r0_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[34]),
        .Q(d1_r0[34]),
        .R(1'b0));
  FDRE \d1_r0_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[35]),
        .Q(d1_r0[35]),
        .R(1'b0));
  FDRE \d1_r0_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[36]),
        .Q(d1_r0[36]),
        .R(1'b0));
  FDRE \d1_r0_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[37]),
        .Q(d1_r0[37]),
        .R(1'b0));
  FDRE \d1_r0_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[38]),
        .Q(d1_r0[38]),
        .R(1'b0));
  FDRE \d1_r0_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[39]),
        .Q(d1_r0[39]),
        .R(1'b0));
  FDRE \d1_r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[3]),
        .Q(d1_r0[3]),
        .R(1'b0));
  FDRE \d1_r0_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[40]),
        .Q(d1_r0[40]),
        .R(1'b0));
  FDRE \d1_r0_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[41]),
        .Q(d1_r0[41]),
        .R(1'b0));
  FDRE \d1_r0_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[42]),
        .Q(d1_r0[42]),
        .R(1'b0));
  FDRE \d1_r0_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[43]),
        .Q(d1_r0[43]),
        .R(1'b0));
  FDRE \d1_r0_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[44]),
        .Q(d1_r0[44]),
        .R(1'b0));
  FDRE \d1_r0_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[45]),
        .Q(d1_r0[45]),
        .R(1'b0));
  FDRE \d1_r0_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[46]),
        .Q(d1_r0[46]),
        .R(1'b0));
  FDRE \d1_r0_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[47]),
        .Q(d1_r0[47]),
        .R(1'b0));
  FDRE \d1_r0_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[48]),
        .Q(d1_r0[48]),
        .R(1'b0));
  FDRE \d1_r0_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[49]),
        .Q(d1_r0[49]),
        .R(1'b0));
  FDRE \d1_r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[4]),
        .Q(d1_r0[4]),
        .R(1'b0));
  FDRE \d1_r0_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[50]),
        .Q(d1_r0[50]),
        .R(1'b0));
  FDRE \d1_r0_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[51]),
        .Q(d1_r0[51]),
        .R(1'b0));
  FDRE \d1_r0_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[52]),
        .Q(d1_r0[52]),
        .R(1'b0));
  FDRE \d1_r0_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[53]),
        .Q(d1_r0[53]),
        .R(1'b0));
  FDRE \d1_r0_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[54]),
        .Q(d1_r0[54]),
        .R(1'b0));
  FDRE \d1_r0_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[55]),
        .Q(d1_r0[55]),
        .R(1'b0));
  FDRE \d1_r0_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[56]),
        .Q(d1_r0[56]),
        .R(1'b0));
  FDRE \d1_r0_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[57]),
        .Q(d1_r0[57]),
        .R(1'b0));
  FDRE \d1_r0_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[58]),
        .Q(d1_r0[58]),
        .R(1'b0));
  FDRE \d1_r0_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[59]),
        .Q(d1_r0[59]),
        .R(1'b0));
  FDRE \d1_r0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[5]),
        .Q(d1_r0[5]),
        .R(1'b0));
  FDRE \d1_r0_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[60]),
        .Q(d1_r0[60]),
        .R(1'b0));
  FDRE \d1_r0_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[61]),
        .Q(d1_r0[61]),
        .R(1'b0));
  FDRE \d1_r0_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[62]),
        .Q(d1_r0[62]),
        .R(1'b0));
  FDRE \d1_r0_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[63]),
        .Q(d1_r0[63]),
        .R(1'b0));
  FDRE \d1_r0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[6]),
        .Q(d1_r0[6]),
        .R(1'b0));
  FDRE \d1_r0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[7]),
        .Q(d1_r0[7]),
        .R(1'b0));
  FDRE \d1_r0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[8]),
        .Q(d1_r0[8]),
        .R(1'b0));
  FDRE \d1_r0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(q1[9]),
        .Q(d1_r0[9]),
        .R(1'b0));
  FDRE \d1_r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[0]),
        .Q(d1[0]),
        .R(1'b0));
  FDRE \d1_r1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[10]),
        .Q(d1[10]),
        .R(1'b0));
  FDRE \d1_r1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[11]),
        .Q(d1[11]),
        .R(1'b0));
  FDRE \d1_r1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[12]),
        .Q(d1[12]),
        .R(1'b0));
  FDRE \d1_r1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[13]),
        .Q(d1[13]),
        .R(1'b0));
  FDRE \d1_r1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[14]),
        .Q(d1[14]),
        .R(1'b0));
  FDRE \d1_r1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[15]),
        .Q(d1[15]),
        .R(1'b0));
  FDRE \d1_r1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[16]),
        .Q(d1[16]),
        .R(1'b0));
  FDRE \d1_r1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[17]),
        .Q(d1[17]),
        .R(1'b0));
  FDRE \d1_r1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[18]),
        .Q(d1[18]),
        .R(1'b0));
  FDRE \d1_r1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[19]),
        .Q(d1[19]),
        .R(1'b0));
  FDRE \d1_r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[1]),
        .Q(d1[1]),
        .R(1'b0));
  FDRE \d1_r1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[20]),
        .Q(d1[20]),
        .R(1'b0));
  FDRE \d1_r1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[21]),
        .Q(d1[21]),
        .R(1'b0));
  FDRE \d1_r1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[22]),
        .Q(d1[22]),
        .R(1'b0));
  FDRE \d1_r1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[23]),
        .Q(d1[23]),
        .R(1'b0));
  FDRE \d1_r1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[24]),
        .Q(d1[24]),
        .R(1'b0));
  FDRE \d1_r1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[25]),
        .Q(d1[25]),
        .R(1'b0));
  FDRE \d1_r1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[26]),
        .Q(d1[26]),
        .R(1'b0));
  FDRE \d1_r1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[27]),
        .Q(d1[27]),
        .R(1'b0));
  FDRE \d1_r1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[28]),
        .Q(d1[28]),
        .R(1'b0));
  FDRE \d1_r1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[29]),
        .Q(d1[29]),
        .R(1'b0));
  FDRE \d1_r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[2]),
        .Q(d1[2]),
        .R(1'b0));
  FDRE \d1_r1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[30]),
        .Q(d1[30]),
        .R(1'b0));
  FDRE \d1_r1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[31]),
        .Q(d1[31]),
        .R(1'b0));
  FDRE \d1_r1_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[32]),
        .Q(d1[32]),
        .R(1'b0));
  FDRE \d1_r1_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[33]),
        .Q(d1[33]),
        .R(1'b0));
  FDRE \d1_r1_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[34]),
        .Q(d1[34]),
        .R(1'b0));
  FDRE \d1_r1_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[35]),
        .Q(d1[35]),
        .R(1'b0));
  FDRE \d1_r1_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[36]),
        .Q(d1[36]),
        .R(1'b0));
  FDRE \d1_r1_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[37]),
        .Q(d1[37]),
        .R(1'b0));
  FDRE \d1_r1_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[38]),
        .Q(d1[38]),
        .R(1'b0));
  FDRE \d1_r1_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[39]),
        .Q(d1[39]),
        .R(1'b0));
  FDRE \d1_r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[3]),
        .Q(d1[3]),
        .R(1'b0));
  FDRE \d1_r1_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[40]),
        .Q(d1[40]),
        .R(1'b0));
  FDRE \d1_r1_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[41]),
        .Q(d1[41]),
        .R(1'b0));
  FDRE \d1_r1_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[42]),
        .Q(d1[42]),
        .R(1'b0));
  FDRE \d1_r1_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[43]),
        .Q(d1[43]),
        .R(1'b0));
  FDRE \d1_r1_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[44]),
        .Q(d1[44]),
        .R(1'b0));
  FDRE \d1_r1_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[45]),
        .Q(d1[45]),
        .R(1'b0));
  FDRE \d1_r1_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[46]),
        .Q(d1[46]),
        .R(1'b0));
  FDRE \d1_r1_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[47]),
        .Q(d1[47]),
        .R(1'b0));
  FDRE \d1_r1_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[48]),
        .Q(d1[48]),
        .R(1'b0));
  FDRE \d1_r1_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[49]),
        .Q(d1[49]),
        .R(1'b0));
  FDRE \d1_r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[4]),
        .Q(d1[4]),
        .R(1'b0));
  FDRE \d1_r1_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[50]),
        .Q(d1[50]),
        .R(1'b0));
  FDRE \d1_r1_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[51]),
        .Q(d1[51]),
        .R(1'b0));
  FDRE \d1_r1_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[52]),
        .Q(d1[52]),
        .R(1'b0));
  FDRE \d1_r1_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[53]),
        .Q(d1[53]),
        .R(1'b0));
  FDRE \d1_r1_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[54]),
        .Q(d1[54]),
        .R(1'b0));
  FDRE \d1_r1_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[55]),
        .Q(d1[55]),
        .R(1'b0));
  FDRE \d1_r1_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[56]),
        .Q(d1[56]),
        .R(1'b0));
  FDRE \d1_r1_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[57]),
        .Q(d1[57]),
        .R(1'b0));
  FDRE \d1_r1_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[58]),
        .Q(d1[58]),
        .R(1'b0));
  FDRE \d1_r1_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[59]),
        .Q(d1[59]),
        .R(1'b0));
  FDRE \d1_r1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[5]),
        .Q(d1[5]),
        .R(1'b0));
  FDRE \d1_r1_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[60]),
        .Q(d1[60]),
        .R(1'b0));
  FDRE \d1_r1_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[61]),
        .Q(d1[61]),
        .R(1'b0));
  FDRE \d1_r1_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[62]),
        .Q(d1[62]),
        .R(1'b0));
  FDRE \d1_r1_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[63]),
        .Q(d1[63]),
        .R(1'b0));
  FDRE \d1_r1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[6]),
        .Q(d1[6]),
        .R(1'b0));
  FDRE \d1_r1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[7]),
        .Q(d1[7]),
        .R(1'b0));
  FDRE \d1_r1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[8]),
        .Q(d1[8]),
        .R(1'b0));
  FDRE \d1_r1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(d1_r0[9]),
        .Q(d1[9]),
        .R(1'b0));
  FDRE \d2_r0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[0]),
        .Q(d2_r0[0]),
        .R(1'b0));
  FDRE \d2_r0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[10]),
        .Q(d2_r0[10]),
        .R(1'b0));
  FDRE \d2_r0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[11]),
        .Q(d2_r0[11]),
        .R(1'b0));
  FDRE \d2_r0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[12]),
        .Q(d2_r0[12]),
        .R(1'b0));
  FDRE \d2_r0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[13]),
        .Q(d2_r0[13]),
        .R(1'b0));
  FDRE \d2_r0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[14]),
        .Q(d2_r0[14]),
        .R(1'b0));
  FDRE \d2_r0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[15]),
        .Q(d2_r0[15]),
        .R(1'b0));
  FDRE \d2_r0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[1]),
        .Q(d2_r0[1]),
        .R(1'b0));
  FDRE \d2_r0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[2]),
        .Q(d2_r0[2]),
        .R(1'b0));
  FDRE \d2_r0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[3]),
        .Q(d2_r0[3]),
        .R(1'b0));
  FDRE \d2_r0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[4]),
        .Q(d2_r0[4]),
        .R(1'b0));
  FDRE \d2_r0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[5]),
        .Q(d2_r0[5]),
        .R(1'b0));
  FDRE \d2_r0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[6]),
        .Q(d2_r0[6]),
        .R(1'b0));
  FDRE \d2_r0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[7]),
        .Q(d2_r0[7]),
        .R(1'b0));
  FDRE \d2_r0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[8]),
        .Q(d2_r0[8]),
        .R(1'b0));
  FDRE \d2_r0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(q2[9]),
        .Q(d2_r0[9]),
        .R(1'b0));
  FDRE \d2_r1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[0]),
        .Q(d2[0]),
        .R(1'b0));
  FDRE \d2_r1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[10]),
        .Q(d2[10]),
        .R(1'b0));
  FDRE \d2_r1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[11]),
        .Q(d2[11]),
        .R(1'b0));
  FDRE \d2_r1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[12]),
        .Q(d2[12]),
        .R(1'b0));
  FDRE \d2_r1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[13]),
        .Q(d2[13]),
        .R(1'b0));
  FDRE \d2_r1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[14]),
        .Q(d2[14]),
        .R(1'b0));
  FDRE \d2_r1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[15]),
        .Q(d2[15]),
        .R(1'b0));
  FDRE \d2_r1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[1]),
        .Q(d2[1]),
        .R(1'b0));
  FDRE \d2_r1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[2]),
        .Q(d2[2]),
        .R(1'b0));
  FDRE \d2_r1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[3]),
        .Q(d2[3]),
        .R(1'b0));
  FDRE \d2_r1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[4]),
        .Q(d2[4]),
        .R(1'b0));
  FDRE \d2_r1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[5]),
        .Q(d2[5]),
        .R(1'b0));
  FDRE \d2_r1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[6]),
        .Q(d2[6]),
        .R(1'b0));
  FDRE \d2_r1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[7]),
        .Q(d2[7]),
        .R(1'b0));
  FDRE \d2_r1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[8]),
        .Q(d2[8]),
        .R(1'b0));
  FDRE \d2_r1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(d2_r0[9]),
        .Q(d2[9]),
        .R(1'b0));
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
