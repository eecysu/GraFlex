// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Feb  9 16:42:06 2023
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_dff_2d_0_1_sim_netlist.v
// Design      : custom_m_axi_128_dff_2d_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "custom_m_axi_128_dff_2d_0_1,dff_2d,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dff_2d,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    q,
    d);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_128_clk, INSERT_VIP 0" *) input clk;
  input [63:0]q;
  output [63:0]d;

  wire clk;
  wire [63:0]d;
  wire [63:0]q;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d inst
       (.clk(clk),
        .d(d),
        .q(q));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dff_2d
   (d,
    q,
    clk);
  output [63:0]d;
  input [63:0]q;
  input clk;

  wire clk;
  wire [63:0]d;
  wire [63:0]d0;
  wire [63:0]q;

  FDRE \d0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(q[0]),
        .Q(d0[0]),
        .R(1'b0));
  FDRE \d0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(q[10]),
        .Q(d0[10]),
        .R(1'b0));
  FDRE \d0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(q[11]),
        .Q(d0[11]),
        .R(1'b0));
  FDRE \d0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(q[12]),
        .Q(d0[12]),
        .R(1'b0));
  FDRE \d0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(q[13]),
        .Q(d0[13]),
        .R(1'b0));
  FDRE \d0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(q[14]),
        .Q(d0[14]),
        .R(1'b0));
  FDRE \d0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(q[15]),
        .Q(d0[15]),
        .R(1'b0));
  FDRE \d0_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(q[16]),
        .Q(d0[16]),
        .R(1'b0));
  FDRE \d0_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(q[17]),
        .Q(d0[17]),
        .R(1'b0));
  FDRE \d0_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(q[18]),
        .Q(d0[18]),
        .R(1'b0));
  FDRE \d0_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(q[19]),
        .Q(d0[19]),
        .R(1'b0));
  FDRE \d0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(q[1]),
        .Q(d0[1]),
        .R(1'b0));
  FDRE \d0_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(q[20]),
        .Q(d0[20]),
        .R(1'b0));
  FDRE \d0_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(q[21]),
        .Q(d0[21]),
        .R(1'b0));
  FDRE \d0_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(q[22]),
        .Q(d0[22]),
        .R(1'b0));
  FDRE \d0_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(q[23]),
        .Q(d0[23]),
        .R(1'b0));
  FDRE \d0_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(q[24]),
        .Q(d0[24]),
        .R(1'b0));
  FDRE \d0_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(q[25]),
        .Q(d0[25]),
        .R(1'b0));
  FDRE \d0_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(q[26]),
        .Q(d0[26]),
        .R(1'b0));
  FDRE \d0_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(q[27]),
        .Q(d0[27]),
        .R(1'b0));
  FDRE \d0_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(q[28]),
        .Q(d0[28]),
        .R(1'b0));
  FDRE \d0_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(q[29]),
        .Q(d0[29]),
        .R(1'b0));
  FDRE \d0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(q[2]),
        .Q(d0[2]),
        .R(1'b0));
  FDRE \d0_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(q[30]),
        .Q(d0[30]),
        .R(1'b0));
  FDRE \d0_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(q[31]),
        .Q(d0[31]),
        .R(1'b0));
  FDRE \d0_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(q[32]),
        .Q(d0[32]),
        .R(1'b0));
  FDRE \d0_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(q[33]),
        .Q(d0[33]),
        .R(1'b0));
  FDRE \d0_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(q[34]),
        .Q(d0[34]),
        .R(1'b0));
  FDRE \d0_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(q[35]),
        .Q(d0[35]),
        .R(1'b0));
  FDRE \d0_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(q[36]),
        .Q(d0[36]),
        .R(1'b0));
  FDRE \d0_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(q[37]),
        .Q(d0[37]),
        .R(1'b0));
  FDRE \d0_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(q[38]),
        .Q(d0[38]),
        .R(1'b0));
  FDRE \d0_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(q[39]),
        .Q(d0[39]),
        .R(1'b0));
  FDRE \d0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(q[3]),
        .Q(d0[3]),
        .R(1'b0));
  FDRE \d0_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(q[40]),
        .Q(d0[40]),
        .R(1'b0));
  FDRE \d0_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(q[41]),
        .Q(d0[41]),
        .R(1'b0));
  FDRE \d0_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(q[42]),
        .Q(d0[42]),
        .R(1'b0));
  FDRE \d0_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(q[43]),
        .Q(d0[43]),
        .R(1'b0));
  FDRE \d0_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(q[44]),
        .Q(d0[44]),
        .R(1'b0));
  FDRE \d0_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(q[45]),
        .Q(d0[45]),
        .R(1'b0));
  FDRE \d0_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(q[46]),
        .Q(d0[46]),
        .R(1'b0));
  FDRE \d0_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(q[47]),
        .Q(d0[47]),
        .R(1'b0));
  FDRE \d0_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(q[48]),
        .Q(d0[48]),
        .R(1'b0));
  FDRE \d0_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(q[49]),
        .Q(d0[49]),
        .R(1'b0));
  FDRE \d0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(q[4]),
        .Q(d0[4]),
        .R(1'b0));
  FDRE \d0_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(q[50]),
        .Q(d0[50]),
        .R(1'b0));
  FDRE \d0_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(q[51]),
        .Q(d0[51]),
        .R(1'b0));
  FDRE \d0_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(q[52]),
        .Q(d0[52]),
        .R(1'b0));
  FDRE \d0_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(q[53]),
        .Q(d0[53]),
        .R(1'b0));
  FDRE \d0_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(q[54]),
        .Q(d0[54]),
        .R(1'b0));
  FDRE \d0_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(q[55]),
        .Q(d0[55]),
        .R(1'b0));
  FDRE \d0_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(q[56]),
        .Q(d0[56]),
        .R(1'b0));
  FDRE \d0_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(q[57]),
        .Q(d0[57]),
        .R(1'b0));
  FDRE \d0_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(q[58]),
        .Q(d0[58]),
        .R(1'b0));
  FDRE \d0_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(q[59]),
        .Q(d0[59]),
        .R(1'b0));
  FDRE \d0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(q[5]),
        .Q(d0[5]),
        .R(1'b0));
  FDRE \d0_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(q[60]),
        .Q(d0[60]),
        .R(1'b0));
  FDRE \d0_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(q[61]),
        .Q(d0[61]),
        .R(1'b0));
  FDRE \d0_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(q[62]),
        .Q(d0[62]),
        .R(1'b0));
  FDRE \d0_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(q[63]),
        .Q(d0[63]),
        .R(1'b0));
  FDRE \d0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(q[6]),
        .Q(d0[6]),
        .R(1'b0));
  FDRE \d0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(q[7]),
        .Q(d0[7]),
        .R(1'b0));
  FDRE \d0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(q[8]),
        .Q(d0[8]),
        .R(1'b0));
  FDRE \d0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(q[9]),
        .Q(d0[9]),
        .R(1'b0));
  FDRE \d1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[0]),
        .Q(d[0]),
        .R(1'b0));
  FDRE \d1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[10]),
        .Q(d[10]),
        .R(1'b0));
  FDRE \d1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[11]),
        .Q(d[11]),
        .R(1'b0));
  FDRE \d1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[12]),
        .Q(d[12]),
        .R(1'b0));
  FDRE \d1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[13]),
        .Q(d[13]),
        .R(1'b0));
  FDRE \d1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[14]),
        .Q(d[14]),
        .R(1'b0));
  FDRE \d1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[15]),
        .Q(d[15]),
        .R(1'b0));
  FDRE \d1_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[16]),
        .Q(d[16]),
        .R(1'b0));
  FDRE \d1_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[17]),
        .Q(d[17]),
        .R(1'b0));
  FDRE \d1_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[18]),
        .Q(d[18]),
        .R(1'b0));
  FDRE \d1_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[19]),
        .Q(d[19]),
        .R(1'b0));
  FDRE \d1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[1]),
        .Q(d[1]),
        .R(1'b0));
  FDRE \d1_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[20]),
        .Q(d[20]),
        .R(1'b0));
  FDRE \d1_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[21]),
        .Q(d[21]),
        .R(1'b0));
  FDRE \d1_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[22]),
        .Q(d[22]),
        .R(1'b0));
  FDRE \d1_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[23]),
        .Q(d[23]),
        .R(1'b0));
  FDRE \d1_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[24]),
        .Q(d[24]),
        .R(1'b0));
  FDRE \d1_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[25]),
        .Q(d[25]),
        .R(1'b0));
  FDRE \d1_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[26]),
        .Q(d[26]),
        .R(1'b0));
  FDRE \d1_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[27]),
        .Q(d[27]),
        .R(1'b0));
  FDRE \d1_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[28]),
        .Q(d[28]),
        .R(1'b0));
  FDRE \d1_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[29]),
        .Q(d[29]),
        .R(1'b0));
  FDRE \d1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[2]),
        .Q(d[2]),
        .R(1'b0));
  FDRE \d1_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[30]),
        .Q(d[30]),
        .R(1'b0));
  FDRE \d1_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[31]),
        .Q(d[31]),
        .R(1'b0));
  FDRE \d1_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[32]),
        .Q(d[32]),
        .R(1'b0));
  FDRE \d1_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[33]),
        .Q(d[33]),
        .R(1'b0));
  FDRE \d1_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[34]),
        .Q(d[34]),
        .R(1'b0));
  FDRE \d1_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[35]),
        .Q(d[35]),
        .R(1'b0));
  FDRE \d1_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[36]),
        .Q(d[36]),
        .R(1'b0));
  FDRE \d1_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[37]),
        .Q(d[37]),
        .R(1'b0));
  FDRE \d1_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[38]),
        .Q(d[38]),
        .R(1'b0));
  FDRE \d1_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[39]),
        .Q(d[39]),
        .R(1'b0));
  FDRE \d1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[3]),
        .Q(d[3]),
        .R(1'b0));
  FDRE \d1_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[40]),
        .Q(d[40]),
        .R(1'b0));
  FDRE \d1_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[41]),
        .Q(d[41]),
        .R(1'b0));
  FDRE \d1_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[42]),
        .Q(d[42]),
        .R(1'b0));
  FDRE \d1_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[43]),
        .Q(d[43]),
        .R(1'b0));
  FDRE \d1_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[44]),
        .Q(d[44]),
        .R(1'b0));
  FDRE \d1_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[45]),
        .Q(d[45]),
        .R(1'b0));
  FDRE \d1_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[46]),
        .Q(d[46]),
        .R(1'b0));
  FDRE \d1_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[47]),
        .Q(d[47]),
        .R(1'b0));
  FDRE \d1_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[48]),
        .Q(d[48]),
        .R(1'b0));
  FDRE \d1_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[49]),
        .Q(d[49]),
        .R(1'b0));
  FDRE \d1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[4]),
        .Q(d[4]),
        .R(1'b0));
  FDRE \d1_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[50]),
        .Q(d[50]),
        .R(1'b0));
  FDRE \d1_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[51]),
        .Q(d[51]),
        .R(1'b0));
  FDRE \d1_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[52]),
        .Q(d[52]),
        .R(1'b0));
  FDRE \d1_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[53]),
        .Q(d[53]),
        .R(1'b0));
  FDRE \d1_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[54]),
        .Q(d[54]),
        .R(1'b0));
  FDRE \d1_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[55]),
        .Q(d[55]),
        .R(1'b0));
  FDRE \d1_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[56]),
        .Q(d[56]),
        .R(1'b0));
  FDRE \d1_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[57]),
        .Q(d[57]),
        .R(1'b0));
  FDRE \d1_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[58]),
        .Q(d[58]),
        .R(1'b0));
  FDRE \d1_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[59]),
        .Q(d[59]),
        .R(1'b0));
  FDRE \d1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[5]),
        .Q(d[5]),
        .R(1'b0));
  FDRE \d1_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[60]),
        .Q(d[60]),
        .R(1'b0));
  FDRE \d1_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[61]),
        .Q(d[61]),
        .R(1'b0));
  FDRE \d1_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[62]),
        .Q(d[62]),
        .R(1'b0));
  FDRE \d1_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[63]),
        .Q(d[63]),
        .R(1'b0));
  FDRE \d1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[6]),
        .Q(d[6]),
        .R(1'b0));
  FDRE \d1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[7]),
        .Q(d[7]),
        .R(1'b0));
  FDRE \d1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[8]),
        .Q(d[8]),
        .R(1'b0));
  FDRE \d1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(d0[9]),
        .Q(d[9]),
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
