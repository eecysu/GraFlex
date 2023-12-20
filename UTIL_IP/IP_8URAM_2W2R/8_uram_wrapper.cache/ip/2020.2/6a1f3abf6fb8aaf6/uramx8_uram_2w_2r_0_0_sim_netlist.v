// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Nov 23 17:18:49 2022
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uramx8_uram_2w_2r_0_0_sim_netlist.v
// Design      : uramx8_uram_2w_2r_0_0
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
    ce1,
    we0,
    we1,
    addr0,
    addr1,
    wdata0,
    wdata1,
    rst_n);
  output [63:0]rdata0;
  output [63:0]rdata1;
  input clk;
  input ce0;
  input ce1;
  input we0;
  input we1;
  input [11:0]addr0;
  input [11:0]addr1;
  input [63:0]wdata0;
  input [63:0]wdata1;
  input rst_n;

  wire RST_A0;
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
        .BWE_A({1'b0,we0,we0,we0,we0,we0,we0,we0,we0}),
        .BWE_B({1'b0,we1,we1,we1,we1,we1,we1,we1,we1}),
        .CLK(clk),
        .DBITERR_A(NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED),
        .DBITERR_B(NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata0}),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata1}),
        .DOUT_A({NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED[71:64],rdata0}),
        .DOUT_B({NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED[71:64],rdata1}),
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
        .RDB_WR_A(we0),
        .RDB_WR_B(we1),
        .RST_A(RST_A0),
        .RST_B(RST_A0),
        .SBITERR_A(NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED),
        .SBITERR_B(NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED),
        .SLEEP(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    URAM288_BASE_inst_i_1
       (.I0(rst_n),
        .O(RST_A0));
endmodule

(* CHECK_LICENSE_TYPE = "uramx8_uram_2w_2r_0_0,uram_2w_2r,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uramx8_clk_0, INSERT_VIP 0" *) input clk;
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
