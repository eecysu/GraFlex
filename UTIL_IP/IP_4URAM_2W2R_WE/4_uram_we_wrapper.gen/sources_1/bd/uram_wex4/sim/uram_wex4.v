//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sun May  7 10:22:17 2023
//Host        : noah running 64-bit Ubuntu 20.04.5 LTS
//Command     : generate_target uram_wex4.bd
//Design      : uram_wex4
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "uram_wex4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uram_wex4,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "uram_wex4.hwdef" *) 
module uram_wex4
   (addr0_0,
    addr0_1,
    addr0_2,
    addr0_3,
    addr1_0,
    addr1_1,
    addr1_2,
    addr1_3,
    ce0_0,
    ce0_1,
    ce0_2,
    ce0_3,
    ce1_0,
    ce1_1,
    ce1_2,
    ce1_3,
    clk_0,
    rdata0_0,
    rdata0_1,
    rdata0_2,
    rdata0_3,
    rdata1_0,
    rdata1_1,
    rdata1_2,
    rdata1_3,
    rst_n_0,
    wdata0_0,
    wdata0_1,
    wdata0_2,
    wdata0_3,
    wdata1_0,
    wdata1_1,
    wdata1_2,
    wdata1_3,
    we0_0,
    we0_1,
    we0_2,
    we0_3,
    we1_0,
    we1_1,
    we1_2,
    we1_3);
  input [11:0]addr0_0;
  input [11:0]addr0_1;
  input [11:0]addr0_2;
  input [11:0]addr0_3;
  input [11:0]addr1_0;
  input [11:0]addr1_1;
  input [11:0]addr1_2;
  input [11:0]addr1_3;
  input ce0_0;
  input ce0_1;
  input ce0_2;
  input ce0_3;
  input ce1_0;
  input ce1_1;
  input ce1_2;
  input ce1_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN uram_wex4_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  output [63:0]rdata0_0;
  output [63:0]rdata0_1;
  output [63:0]rdata0_2;
  output [63:0]rdata0_3;
  output [63:0]rdata1_0;
  output [63:0]rdata1_1;
  output [63:0]rdata1_2;
  output [63:0]rdata1_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n_0;
  input [63:0]wdata0_0;
  input [63:0]wdata0_1;
  input [63:0]wdata0_2;
  input [63:0]wdata0_3;
  input [63:0]wdata1_0;
  input [63:0]wdata1_1;
  input [63:0]wdata1_2;
  input [63:0]wdata1_3;
  input [7:0]we0_0;
  input [7:0]we0_1;
  input [7:0]we0_2;
  input [7:0]we0_3;
  input [7:0]we1_0;
  input [7:0]we1_1;
  input [7:0]we1_2;
  input [7:0]we1_3;

  wire [11:0]addr0_0_1;
  wire [11:0]addr0_1_1;
  wire [11:0]addr0_2_1;
  wire [11:0]addr0_3_1;
  wire [11:0]addr1_0_1;
  wire [11:0]addr1_1_1;
  wire [11:0]addr1_2_1;
  wire [11:0]addr1_3_1;
  wire ce0_0_1;
  wire ce0_1_1;
  wire ce0_2_1;
  wire ce0_3_1;
  wire ce1_0_1;
  wire ce1_1_1;
  wire ce1_2_1;
  wire ce1_3_1;
  wire clk_0_1;
  wire rst_n_0_1;
  wire [63:0]uram_2w_2r_we_0_rdata0;
  wire [63:0]uram_2w_2r_we_0_rdata1;
  wire [63:0]uram_2w_2r_we_1_rdata0;
  wire [63:0]uram_2w_2r_we_1_rdata1;
  wire [63:0]uram_2w_2r_we_2_rdata0;
  wire [63:0]uram_2w_2r_we_2_rdata1;
  wire [63:0]uram_2w_2r_we_3_rdata0;
  wire [63:0]uram_2w_2r_we_3_rdata1;
  wire [63:0]wdata0_0_1;
  wire [63:0]wdata0_1_1;
  wire [63:0]wdata0_2_1;
  wire [63:0]wdata0_3_1;
  wire [63:0]wdata1_0_1;
  wire [63:0]wdata1_1_1;
  wire [63:0]wdata1_2_1;
  wire [63:0]wdata1_3_1;
  wire [7:0]we0_0_1;
  wire [7:0]we0_1_1;
  wire [7:0]we0_2_1;
  wire [7:0]we0_3_1;
  wire [7:0]we1_0_1;
  wire [7:0]we1_1_1;
  wire [7:0]we1_2_1;
  wire [7:0]we1_3_1;

  assign addr0_0_1 = addr0_0[11:0];
  assign addr0_1_1 = addr0_1[11:0];
  assign addr0_2_1 = addr0_2[11:0];
  assign addr0_3_1 = addr0_3[11:0];
  assign addr1_0_1 = addr1_0[11:0];
  assign addr1_1_1 = addr1_1[11:0];
  assign addr1_2_1 = addr1_2[11:0];
  assign addr1_3_1 = addr1_3[11:0];
  assign ce0_0_1 = ce0_0;
  assign ce0_1_1 = ce0_1;
  assign ce0_2_1 = ce0_2;
  assign ce0_3_1 = ce0_3;
  assign ce1_0_1 = ce1_0;
  assign ce1_1_1 = ce1_1;
  assign ce1_2_1 = ce1_2;
  assign ce1_3_1 = ce1_3;
  assign clk_0_1 = clk_0;
  assign rdata0_0[63:0] = uram_2w_2r_we_0_rdata0;
  assign rdata0_1[63:0] = uram_2w_2r_we_1_rdata0;
  assign rdata0_2[63:0] = uram_2w_2r_we_2_rdata0;
  assign rdata0_3[63:0] = uram_2w_2r_we_3_rdata0;
  assign rdata1_0[63:0] = uram_2w_2r_we_0_rdata1;
  assign rdata1_1[63:0] = uram_2w_2r_we_1_rdata1;
  assign rdata1_2[63:0] = uram_2w_2r_we_2_rdata1;
  assign rdata1_3[63:0] = uram_2w_2r_we_3_rdata1;
  assign rst_n_0_1 = rst_n_0;
  assign wdata0_0_1 = wdata0_0[63:0];
  assign wdata0_1_1 = wdata0_1[63:0];
  assign wdata0_2_1 = wdata0_2[63:0];
  assign wdata0_3_1 = wdata0_3[63:0];
  assign wdata1_0_1 = wdata1_0[63:0];
  assign wdata1_1_1 = wdata1_1[63:0];
  assign wdata1_2_1 = wdata1_2[63:0];
  assign wdata1_3_1 = wdata1_3[63:0];
  assign we0_0_1 = we0_0[7:0];
  assign we0_1_1 = we0_1[7:0];
  assign we0_2_1 = we0_2[7:0];
  assign we0_3_1 = we0_3[7:0];
  assign we1_0_1 = we1_0[7:0];
  assign we1_1_1 = we1_1[7:0];
  assign we1_2_1 = we1_2[7:0];
  assign we1_3_1 = we1_3[7:0];
  uram_wex4_uram_2w_2r_we_0_0 uram_2w_2r_we_0
       (.addr0(addr0_0_1),
        .addr1(addr1_0_1),
        .ce0(ce0_0_1),
        .ce1(ce1_0_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_we_0_rdata0),
        .rdata1(uram_2w_2r_we_0_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_0_1),
        .wdata1(wdata1_0_1),
        .we0(we0_0_1),
        .we1(we1_0_1));
  uram_wex4_uram_2w_2r_we_0_1 uram_2w_2r_we_1
       (.addr0(addr0_1_1),
        .addr1(addr1_1_1),
        .ce0(ce0_1_1),
        .ce1(ce1_1_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_we_1_rdata0),
        .rdata1(uram_2w_2r_we_1_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_1_1),
        .wdata1(wdata1_1_1),
        .we0(we0_1_1),
        .we1(we1_1_1));
  uram_wex4_uram_2w_2r_we_1_0 uram_2w_2r_we_2
       (.addr0(addr0_2_1),
        .addr1(addr1_2_1),
        .ce0(ce0_2_1),
        .ce1(ce1_2_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_we_2_rdata0),
        .rdata1(uram_2w_2r_we_2_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_2_1),
        .wdata1(wdata1_2_1),
        .we0(we0_2_1),
        .we1(we1_2_1));
  uram_wex4_uram_2w_2r_we_0_2 uram_2w_2r_we_3
       (.addr0(addr0_3_1),
        .addr1(addr1_3_1),
        .ce0(ce0_3_1),
        .ce1(ce1_3_1),
        .clk(clk_0_1),
        .rdata0(uram_2w_2r_we_3_rdata0),
        .rdata1(uram_2w_2r_we_3_rdata1),
        .rst_n(rst_n_0_1),
        .wdata0(wdata0_3_1),
        .wdata1(wdata1_3_1),
        .we0(we0_3_1),
        .we1(we1_3_1));
endmodule
