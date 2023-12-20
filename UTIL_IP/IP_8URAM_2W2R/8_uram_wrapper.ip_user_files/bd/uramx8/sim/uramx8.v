//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun May  7 10:35:06 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uramx8.bd
//Design      : uramx8
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uramx8,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uramx8,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=8,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "uramx8.hwdef" *) 
module uramx8
   (addr0_0,
    addr0_1,
    addr0_2,
    addr0_3,
    addr0_4,
    addr0_5,
    addr0_6,
    addr0_7,
    addr1_0,
    addr1_1,
    addr1_2,
    addr1_3,
    addr1_4,
    addr1_5,
    addr1_6,
    addr1_7,
    ce0_0,
    ce0_1,
    ce0_2,
    ce0_3,
    ce0_4,
    ce0_5,
    ce0_6,
    ce0_7,
    ce1_0,
    ce1_1,
    ce1_2,
    ce1_3,
    ce1_4,
    ce1_5,
    ce1_6,
    ce1_7,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata0_2,
    rdata0_3,
    rdata0_4,
    rdata0_5,
    rdata0_6,
    rdata0_7,
    rdata1_0,
    rdata1_1,
    rdata1_2,
    rdata1_3,
    rdata1_4,
    rdata1_5,
    rdata1_6,
    rdata1_7,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata0_2,
    wdata0_3,
    wdata0_4,
    wdata0_5,
    wdata0_6,
    wdata0_7,
    wdata1_0,
    wdata1_1,
    wdata1_2,
    wdata1_3,
    wdata1_4,
    wdata1_5,
    wdata1_6,
    wdata1_7,
    we0_0,
    we0_1,
    we0_2,
    we0_3,
    we0_4,
    we0_5,
    we0_6,
    we0_7,
    we1_0,
    we1_1,
    we1_2,
    we1_3,
    we1_4,
    we1_5,
    we1_6,
    we1_7);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr0_2;
  input [11:0]addr0_3;
  input [11:0]addr0_4;
  input [11:0]addr0_5;
  input [11:0]addr0_6;
  input [11:0]addr0_7;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input [11:0]addr1_2;
  input [11:0]addr1_3;
  input [11:0]addr1_4;
  input [11:0]addr1_5;
  input [11:0]addr1_6;
  input [11:0]addr1_7;
  input ce0_0;
  input ce0_1;
  input ce0_2;
  input ce0_3;
  input ce0_4;
  input ce0_5;
  input ce0_6;
  input ce0_7;
  input ce1_0;
  input ce1_1;
  input ce1_2;
  input ce1_3;
  input ce1_4;
  input ce1_5;
  input ce1_6;
  input ce1_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN uramx8_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata0_2;
  output [63:0]rdata0_3;
  output [63:0]rdata0_4;
  output [63:0]rdata0_5;
  output [63:0]rdata0_6;
  output [63:0]rdata0_7;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  output [63:0]rdata1_2;
  output [63:0]rdata1_3;
  output [63:0]rdata1_4;
  output [63:0]rdata1_5;
  output [63:0]rdata1_6;
  output [63:0]rdata1_7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata0_2;
  input [63:0]wdata0_3;
  input [63:0]wdata0_4;
  input [63:0]wdata0_5;
  input [63:0]wdata0_6;
  input [63:0]wdata0_7;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [63:0]wdata1_2;
  input [63:0]wdata1_3;
  input [63:0]wdata1_4;
  input [63:0]wdata1_5;
  input [63:0]wdata1_6;
  input [63:0]wdata1_7;
  input we0_0;
  input we0_1;
  input we0_2;
  input we0_3;
  input we0_4;
  input we0_5;
  input we0_6;
  input we0_7;
  input we1_0;
  input we1_1;
  input we1_2;
  input we1_3;
  input we1_4;
  input we1_5;
  input we1_6;
  input we1_7;

  wire [11:0]addr0_0_1;
  wire [11:0]addr0_1_1;
  wire [11:0]addr0_2_1;
  wire [11:0]addr0_3_1;
  wire [11:0]addr0_4_1;
  wire [11:0]addr0_5_1;
  wire [11:0]addr0_6_1;
  wire [11:0]addr0_7_1;
  wire [11:0]addr1_0_1;
  wire [11:0]addr1_1_1;
  wire [11:0]addr1_2_1;
  wire [11:0]addr1_3_1;
  wire [11:0]addr1_4_1;
  wire [11:0]addr1_5_1;
  wire [11:0]addr1_6_1;
  wire [11:0]addr1_7_1;
  wire ce0_0_1;
  wire ce0_1_1;
  wire ce0_2_1;
  wire ce0_3_1;
  wire ce0_4_1;
  wire ce0_5_1;
  wire ce0_6_1;
  wire ce0_7_1;
  wire ce1_0_1;
  wire ce1_1_1;
  wire ce1_2_1;
  wire ce1_3_1;
  wire ce1_4_1;
  wire ce1_5_1;
  wire ce1_6_1;
  wire ce1_7_1;
  wire clk_0_1;
  wire rst_n_0_1;
  wire [63:0]uram_2w_2r_0_rdata0;
  wire [63:0]uram_2w_2r_0_rdata1;
  wire [63:0]uram_2w_2r_1_rdata0;
  wire [63:0]uram_2w_2r_1_rdata1;
  wire [63:0]uram_2w_2r_2_rdata0;
  wire [63:0]uram_2w_2r_2_rdata1;
  wire [63:0]uram_2w_2r_3_rdata0;
  wire [63:0]uram_2w_2r_3_rdata1;
  wire [63:0]uram_2w_2r_4_rdata0;
  wire [63:0]uram_2w_2r_4_rdata1;
  wire [63:0]uram_2w_2r_5_rdata0;
  wire [63:0]uram_2w_2r_5_rdata1;
  wire [63:0]uram_2w_2r_6_rdata0;
  wire [63:0]uram_2w_2r_6_rdata1;
  wire [63:0]uram_2w_2r_7_rdata0;
  wire [63:0]uram_2w_2r_7_rdata1;
  wire [63:0]wdata0_0_1;
  wire [63:0]wdata0_1_1;
  wire [63:0]wdata0_2_1;
  wire [63:0]wdata0_3_1;
  wire [63:0]wdata0_4_1;
  wire [63:0]wdata0_5_1;
  wire [63:0]wdata0_6_1;
  wire [63:0]wdata0_7_1;
  wire [63:0]wdata1_0_1;
  wire [63:0]wdata1_1_1;
  wire [63:0]wdata1_2_1;
  wire [63:0]wdata1_3_1;
  wire [63:0]wdata1_4_1;
  wire [63:0]wdata1_5_1;
  wire [63:0]wdata1_6_1;
  wire [63:0]wdata1_7_1;
  wire we0_0_1;
  wire we0_1_1;
  wire we0_2_1;
  wire we0_3_1;
  wire we0_4_1;
  wire we0_5_1;
  wire we0_6_1;
  wire we0_7_1;
  wire we1_0_1;
  wire we1_1_1;
  wire we1_2_1;
  wire we1_3_1;
  wire we1_4_1;
  wire we1_5_1;
  wire we1_6_1;
  wire we1_7_1;

  assign addr0_0_1 = addr0_0[11:0];
  assign addr0_1_1 = addr0_1[11:0];
  assign addr0_2_1 = addr0_2[11:0];
  assign addr0_3_1 = addr0_3[11:0];
  assign addr0_4_1 = addr0_4[11:0];
  assign addr0_5_1 = addr0_5[11:0];
  assign addr0_6_1 = addr0_6[11:0];
  assign addr0_7_1 = addr0_7[11:0];
  assign addr1_0_1 = addr1_0[11:0];
  assign addr1_1_1 = addr1_1[11:0];
  assign addr1_2_1 = addr1_2[11:0];
  assign addr1_3_1 = addr1_3[11:0];
  assign addr1_4_1 = addr1_4[11:0];
  assign addr1_5_1 = addr1_5[11:0];
  assign addr1_6_1 = addr1_6[11:0];
  assign addr1_7_1 = addr1_7[11:0];
  assign ce0_0_1 = ce0_0;
  assign ce0_1_1 = ce0_1;
  assign ce0_2_1 = ce0_2;
  assign ce0_3_1 = ce0_3;
  assign ce0_4_1 = ce0_4;
  assign ce0_5_1 = ce0_5;
  assign ce0_6_1 = ce0_6;
  assign ce0_7_1 = ce0_7;
  assign ce1_0_1 = ce1_0;
  assign ce1_1_1 = ce1_1;
  assign ce1_2_1 = ce1_2;
  assign ce1_3_1 = ce1_3;
  assign ce1_4_1 = ce1_4;
  assign ce1_5_1 = ce1_5;
  assign ce1_6_1 = ce1_6;
  assign ce1_7_1 = ce1_7;
  assign clk_0_1 = clk_0;
  assign rdata0_0[63:0] = uram_2w_2r_0_rdata0;
  assign rdata0_1[63:0] = uram_2w_2r_1_rdata0;
  assign rdata0_2[63:0] = uram_2w_2r_2_rdata0;
  assign rdata0_3[63:0] = uram_2w_2r_3_rdata0;
  assign rdata0_4[63:0] = uram_2w_2r_4_rdata0;
  assign rdata0_5[63:0] = uram_2w_2r_5_rdata0;
  assign rdata0_6[63:0] = uram_2w_2r_6_rdata0;
  assign rdata0_7[63:0] = uram_2w_2r_7_rdata0;
  assign rdata1_0[63:0] = uram_2w_2r_0_rdata1;
  assign rdata1_1[63:0] = uram_2w_2r_1_rdata1;
  assign rdata1_2[63:0] = uram_2w_2r_2_rdata1;
  assign rdata1_3[63:0] = uram_2w_2r_3_rdata1;
  assign rdata1_4[63:0] = uram_2w_2r_4_rdata1;
  assign rdata1_5[63:0] = uram_2w_2r_5_rdata1;
  assign rdata1_6[63:0] = uram_2w_2r_6_rdata1;
  assign rdata1_7[63:0] = uram_2w_2r_7_rdata1;
  assign rst_n_0_1 = rst_n_0;
  assign wdata0_0_1 = wdata0_0[63:0];
  assign wdata0_1_1 = wdata0_1[63:0];
  assign wdata0_2_1 = wdata0_2[63:0];
  assign wdata0_3_1 = wdata0_3[63:0];
  assign wdata0_4_1 = wdata0_4[63:0];
  assign wdata0_5_1 = wdata0_5[63:0];
  assign wdata0_6_1 = wdata0_6[63:0];
  assign wdata0_7_1 = wdata0_7[63:0];
  assign wdata1_0_1 = wdata1_0[63:0];
  assign wdata1_1_1 = wdata1_1[63:0];
  assign wdata1_2_1 = wdata1_2[63:0];
  assign wdata1_3_1 = wdata1_3[63:0];
  assign wdata1_4_1 = wdata1_4[63:0];
  assign wdata1_5_1 = wdata1_5[63:0];
  assign wdata1_6_1 = wdata1_6[63:0];
  assign wdata1_7_1 = wdata1_7[63:0];
  assign we0_0_1 = we0_0;
  assign we0_1_1 = we0_1;
  assign we0_2_1 = we0_2;
  assign we0_3_1 = we0_3;
  assign we0_4_1 = we0_4;
  assign we0_5_1 = we0_5;
  assign we0_6_1 = we0_6;
  assign we0_7_1 = we0_7;
  assign we1_0_1 = we1_0;
  assign we1_1_1 = we1_1;
  assign we1_2_1 = we1_2;
  assign we1_3_1 = we1_3;
  assign we1_4_1 = we1_4;
  assign we1_5_1 = we1_5;
  assign we1_6_1 = we1_6;
  assign we1_7_1 = we1_7;
  uramx8_uram_2w_2r_0_0 uram_2w_2r_0
       (.addr0(addr0_0_1),
        .addr1(addr1_0_1),
        .ce0(ce0_0_1),
        .ce1(ce1_0_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_0_rdata0),
        .rdata1(uram_2w_2r_0_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_0_1),
        .wdata1(wdata1_0_1),
        .we0(we0_0_1),
        .we1(we1_0_1));
  uramx8_uram_2w_2r_0_1 uram_2w_2r_1
       (.addr0(addr0_1_1),
        .addr1(addr1_1_1),
        .ce0(ce0_1_1),
        .ce1(ce1_1_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_1_rdata0),
        .rdata1(uram_2w_2r_1_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_1_1),
        .wdata1(wdata1_1_1),
        .we0(we0_1_1),
        .we1(we1_1_1));
  uramx8_uram_2w_2r_0_2 uram_2w_2r_2
       (.addr0(addr0_2_1),
        .addr1(addr1_2_1),
        .ce0(ce0_2_1),
        .ce1(ce1_2_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_2_rdata0),
        .rdata1(uram_2w_2r_2_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_2_1),
        .wdata1(wdata1_2_1),
        .we0(we0_2_1),
        .we1(we1_2_1));
  uramx8_uram_2w_2r_1_0 uram_2w_2r_3
       (.addr0(addr0_3_1),
        .addr1(addr1_3_1),
        .ce0(ce0_3_1),
        .ce1(ce1_3_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_3_rdata0),
        .rdata1(uram_2w_2r_3_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_3_1),
        .wdata1(wdata1_3_1),
        .we0(we0_3_1),
        .we1(we1_3_1));
  uramx8_uram_2w_2r_0_3 uram_2w_2r_4
       (.addr0(addr0_4_1),
        .addr1(addr1_4_1),
        .ce0(ce0_4_1),
        .ce1(ce1_4_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_4_rdata0),
        .rdata1(uram_2w_2r_4_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_4_1),
        .wdata1(wdata1_4_1),
        .we0(we0_4_1),
        .we1(we1_4_1));
  uramx8_uram_2w_2r_1_1 uram_2w_2r_5
       (.addr0(addr0_5_1),
        .addr1(addr1_5_1),
        .ce0(ce0_5_1),
        .ce1(ce1_5_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_5_rdata0),
        .rdata1(uram_2w_2r_5_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_5_1),
        .wdata1(wdata1_5_1),
        .we0(we0_5_1),
        .we1(we1_5_1));
  uramx8_uram_2w_2r_2_0 uram_2w_2r_6
       (.addr0(addr0_6_1),
        .addr1(addr1_6_1),
        .ce0(ce0_6_1),
        .ce1(ce1_6_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_6_rdata0),
        .rdata1(uram_2w_2r_6_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_6_1),
        .wdata1(wdata1_6_1),
        .we0(we0_6_1),
        .we1(we1_6_1));
  uramx8_uram_2w_2r_3_0 uram_2w_2r_7
       (.addr0(addr0_7_1),
        .addr1(addr1_7_1),
        .ce0(ce0_7_1),
        .ce1(ce1_7_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_7_rdata0),
        .rdata1(uram_2w_2r_7_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_7_1),
        .wdata1(wdata1_7_1),
        .we0(we0_7_1),
        .we1(we1_7_1));
endmodule
