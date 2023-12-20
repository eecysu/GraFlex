// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Nov  8 20:56:54 2021
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/chunyou/Xilinx/GraphHBM/UTIL_IP/IP_BRAM_2W2R/bram_2w2r.sim/sim_1/synth/func/xsim/bram_2w2r_tb_func_synth.v
// Design      : bram_2w_2r
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ADDR_RANGE = "32768" *) (* ADDR_WIDTH = "15" *) (* DATA_WIDTH = "1" *) 
(* NotValidForBitStream *)
module bram_2w_2r
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
  input clk;
  input rst_n;
  input ce0;
  input ce1;
  input we0;
  input we1;
  input [14:0]addr0;
  input [14:0]addr1;
  output [0:0]rdata0;
  output [0:0]rdata1;
  input [0:0]wdata0;
  input [0:0]wdata1;

  wire [14:0]addr0;
  wire [14:0]addr0_IBUF;
  wire [14:0]addr1;
  wire [14:0]addr1_IBUF;
  wire ce0;
  wire ce0_IBUF;
  wire ce1;
  wire ce1_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire i_rdata0;
  wire i_rdata1;
  wire i_we0;
  wire i_we1;
  wire [0:0]rdata0;
  wire [0:0]rdata0_OBUF;
  wire \rdata0_OBUF[0]_inst_i_3_n_0 ;
  wire \rdata0_OBUF[0]_inst_i_4_n_0 ;
  wire \rdata0_OBUF[0]_inst_i_5_n_0 ;
  wire \rdata0_OBUF[0]_inst_i_6_n_0 ;
  wire \rdata0_OBUF[0]_inst_i_7_n_0 ;
  wire [0:0]rdata1;
  wire [0:0]rdata1_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire warn_cflt;
  wire [0:0]wdata0;
  wire [0:0]wdata0_IBUF;
  wire [0:0]wdata1;
  wire [0:0]wdata1_IBUF;
  wire we0;
  wire we0_IBUF;
  wire we1;
  wire we1_IBUF;
  wire xpm_memory_tdpram_inst_i_1_n_0;
  wire NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_tdpram_inst_sbiterrb_UNCONNECTED;

  IBUF \addr0_IBUF[0]_inst 
       (.I(addr0[0]),
        .O(addr0_IBUF[0]));
  IBUF \addr0_IBUF[10]_inst 
       (.I(addr0[10]),
        .O(addr0_IBUF[10]));
  IBUF \addr0_IBUF[11]_inst 
       (.I(addr0[11]),
        .O(addr0_IBUF[11]));
  IBUF \addr0_IBUF[12]_inst 
       (.I(addr0[12]),
        .O(addr0_IBUF[12]));
  IBUF \addr0_IBUF[13]_inst 
       (.I(addr0[13]),
        .O(addr0_IBUF[13]));
  IBUF \addr0_IBUF[14]_inst 
       (.I(addr0[14]),
        .O(addr0_IBUF[14]));
  IBUF \addr0_IBUF[1]_inst 
       (.I(addr0[1]),
        .O(addr0_IBUF[1]));
  IBUF \addr0_IBUF[2]_inst 
       (.I(addr0[2]),
        .O(addr0_IBUF[2]));
  IBUF \addr0_IBUF[3]_inst 
       (.I(addr0[3]),
        .O(addr0_IBUF[3]));
  IBUF \addr0_IBUF[4]_inst 
       (.I(addr0[4]),
        .O(addr0_IBUF[4]));
  IBUF \addr0_IBUF[5]_inst 
       (.I(addr0[5]),
        .O(addr0_IBUF[5]));
  IBUF \addr0_IBUF[6]_inst 
       (.I(addr0[6]),
        .O(addr0_IBUF[6]));
  IBUF \addr0_IBUF[7]_inst 
       (.I(addr0[7]),
        .O(addr0_IBUF[7]));
  IBUF \addr0_IBUF[8]_inst 
       (.I(addr0[8]),
        .O(addr0_IBUF[8]));
  IBUF \addr0_IBUF[9]_inst 
       (.I(addr0[9]),
        .O(addr0_IBUF[9]));
  IBUF \addr1_IBUF[0]_inst 
       (.I(addr1[0]),
        .O(addr1_IBUF[0]));
  IBUF \addr1_IBUF[10]_inst 
       (.I(addr1[10]),
        .O(addr1_IBUF[10]));
  IBUF \addr1_IBUF[11]_inst 
       (.I(addr1[11]),
        .O(addr1_IBUF[11]));
  IBUF \addr1_IBUF[12]_inst 
       (.I(addr1[12]),
        .O(addr1_IBUF[12]));
  IBUF \addr1_IBUF[13]_inst 
       (.I(addr1[13]),
        .O(addr1_IBUF[13]));
  IBUF \addr1_IBUF[14]_inst 
       (.I(addr1[14]),
        .O(addr1_IBUF[14]));
  IBUF \addr1_IBUF[1]_inst 
       (.I(addr1[1]),
        .O(addr1_IBUF[1]));
  IBUF \addr1_IBUF[2]_inst 
       (.I(addr1[2]),
        .O(addr1_IBUF[2]));
  IBUF \addr1_IBUF[3]_inst 
       (.I(addr1[3]),
        .O(addr1_IBUF[3]));
  IBUF \addr1_IBUF[4]_inst 
       (.I(addr1[4]),
        .O(addr1_IBUF[4]));
  IBUF \addr1_IBUF[5]_inst 
       (.I(addr1[5]),
        .O(addr1_IBUF[5]));
  IBUF \addr1_IBUF[6]_inst 
       (.I(addr1[6]),
        .O(addr1_IBUF[6]));
  IBUF \addr1_IBUF[7]_inst 
       (.I(addr1[7]),
        .O(addr1_IBUF[7]));
  IBUF \addr1_IBUF[8]_inst 
       (.I(addr1[8]),
        .O(addr1_IBUF[8]));
  IBUF \addr1_IBUF[9]_inst 
       (.I(addr1[9]),
        .O(addr1_IBUF[9]));
  IBUF ce0_IBUF_inst
       (.I(ce0),
        .O(ce0_IBUF));
  IBUF ce1_IBUF_inst
       (.I(ce1),
        .O(ce1_IBUF));
  (* XILINX_LEGACY_PRIM = "BUFG" *) 
  BUFGCE #(
    .CE_TYPE("ASYNC"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .STARTUP_SYNC("FALSE")) 
    clk_IBUF_BUFG_inst
       (.CE(1'b1),
        .I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \rdata0_OBUF[0]_inst 
       (.I(rdata0_OBUF),
        .O(rdata0));
  LUT6 #(
    .INIT(64'hCCCCCCCCACCCCCCC)) 
    \rdata0_OBUF[0]_inst_i_1 
       (.I0(wdata1_IBUF),
        .I1(i_rdata0),
        .I2(we1_IBUF),
        .I3(warn_cflt),
        .I4(ce0_IBUF),
        .I5(we0_IBUF),
        .O(rdata0_OBUF));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rdata0_OBUF[0]_inst_i_2 
       (.I0(\rdata0_OBUF[0]_inst_i_3_n_0 ),
        .I1(\rdata0_OBUF[0]_inst_i_4_n_0 ),
        .I2(\rdata0_OBUF[0]_inst_i_5_n_0 ),
        .I3(\rdata0_OBUF[0]_inst_i_6_n_0 ),
        .I4(\rdata0_OBUF[0]_inst_i_7_n_0 ),
        .O(warn_cflt));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rdata0_OBUF[0]_inst_i_3 
       (.I0(addr0_IBUF[0]),
        .I1(addr1_IBUF[0]),
        .I2(addr1_IBUF[2]),
        .I3(addr0_IBUF[2]),
        .I4(addr1_IBUF[1]),
        .I5(addr0_IBUF[1]),
        .O(\rdata0_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rdata0_OBUF[0]_inst_i_4 
       (.I0(addr0_IBUF[9]),
        .I1(addr1_IBUF[9]),
        .I2(addr1_IBUF[11]),
        .I3(addr0_IBUF[11]),
        .I4(addr1_IBUF[10]),
        .I5(addr0_IBUF[10]),
        .O(\rdata0_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rdata0_OBUF[0]_inst_i_5 
       (.I0(addr0_IBUF[12]),
        .I1(addr1_IBUF[12]),
        .I2(addr1_IBUF[14]),
        .I3(addr0_IBUF[14]),
        .I4(addr1_IBUF[13]),
        .I5(addr0_IBUF[13]),
        .O(\rdata0_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rdata0_OBUF[0]_inst_i_6 
       (.I0(addr0_IBUF[3]),
        .I1(addr1_IBUF[3]),
        .I2(addr1_IBUF[5]),
        .I3(addr0_IBUF[5]),
        .I4(addr1_IBUF[4]),
        .I5(addr0_IBUF[4]),
        .O(\rdata0_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \rdata0_OBUF[0]_inst_i_7 
       (.I0(addr0_IBUF[6]),
        .I1(addr1_IBUF[6]),
        .I2(addr1_IBUF[8]),
        .I3(addr0_IBUF[8]),
        .I4(addr1_IBUF[7]),
        .I5(addr0_IBUF[7]),
        .O(\rdata0_OBUF[0]_inst_i_7_n_0 ));
  OBUF \rdata1_OBUF[0]_inst 
       (.I(rdata1_OBUF),
        .O(rdata1));
  LUT6 #(
    .INIT(64'hCCCCCCCCACCCCCCC)) 
    \rdata1_OBUF[0]_inst_i_1 
       (.I0(wdata0_IBUF),
        .I1(i_rdata1),
        .I2(we0_IBUF),
        .I3(warn_cflt),
        .I4(ce1_IBUF),
        .I5(we1_IBUF),
        .O(rdata1_OBUF));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF \wdata0_IBUF[0]_inst 
       (.I(wdata0),
        .O(wdata0_IBUF));
  IBUF \wdata1_IBUF[0]_inst 
       (.I(wdata1),
        .O(wdata1_IBUF));
  IBUF we0_IBUF_inst
       (.I(we0),
        .O(we0_IBUF));
  IBUF we1_IBUF_inst
       (.I(we1),
        .O(we1_IBUF));
  (* ADDR_WIDTH_A = "15" *) 
  (* ADDR_WIDTH_B = "15" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "1" *) 
  (* BYTE_WRITE_WIDTH_B = "1" *) 
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
  (* P_WRITE_MODE_A = "1" *) 
  (* P_WRITE_MODE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "1" *) 
  (* READ_DATA_WIDTH_B = "1" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "13" *) 
  (* READ_RESET_VALUE_B = "13" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* WAKEUP_TIME = "disable_sleep" *) 
  (* WRITE_DATA_WIDTH_A = "1" *) 
  (* WRITE_DATA_WIDTH_B = "1" *) 
  (* WRITE_MODE_A = "read_first" *) 
  (* WRITE_MODE_B = "read_first" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  xpm_memory_tdpram xpm_memory_tdpram_inst
       (.addra(addr0_IBUF),
        .addrb(addr1_IBUF),
        .clka(clk_IBUF_BUFG),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_tdpram_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_tdpram_inst_dbiterrb_UNCONNECTED),
        .dina(wdata1_IBUF),
        .dinb(1'b0),
        .douta(i_rdata0),
        .doutb(i_rdata1),
        .ena(ce0_IBUF),
        .enb(ce1_IBUF),
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
        .wea(i_we0),
        .web(i_we1));
  LUT1 #(
    .INIT(2'h1)) 
    xpm_memory_tdpram_inst_i_1
       (.I0(rst_n_IBUF),
        .O(xpm_memory_tdpram_inst_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_tdpram_inst_i_2
       (.I0(ce0_IBUF),
        .I1(we0_IBUF),
        .O(i_we0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h20A0)) 
    xpm_memory_tdpram_inst_i_3
       (.I0(ce1_IBUF),
        .I1(warn_cflt),
        .I2(we1_IBUF),
        .I3(we0_IBUF),
        .O(i_we1));
endmodule

(* ADDR_WIDTH_A = "15" *) (* ADDR_WIDTH_B = "15" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "1" *) (* BYTE_WRITE_WIDTH_B = "1" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "0" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "32768" *) (* MEMORY_TYPE = "2" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "32768" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) (* P_MIN_WIDTH_DATA = "1" *) 
(* P_MIN_WIDTH_DATA_A = "1" *) (* P_MIN_WIDTH_DATA_B = "1" *) (* P_MIN_WIDTH_DATA_ECC = "1" *) 
(* P_MIN_WIDTH_DATA_LDW = "1" *) (* P_MIN_WIDTH_DATA_SHFT = "5" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "15" *) (* P_WIDTH_ADDR_READ_B = "15" *) 
(* P_WIDTH_ADDR_WRITE_A = "15" *) (* P_WIDTH_ADDR_WRITE_B = "15" *) (* P_WIDTH_COL_WRITE_A = "1" *) 
(* P_WIDTH_COL_WRITE_B = "1" *) (* READ_DATA_WIDTH_A = "1" *) (* READ_DATA_WIDTH_B = "1" *) 
(* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "13" *) 
(* READ_RESET_VALUE_B = "13" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "1" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "1" *) (* WRITE_DATA_WIDTH_B = "1" *) (* WRITE_MODE_A = "1" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "4" *) (* rstb_loop_iter = "4" *) 
module xpm_memory_base
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
  input [14:0]addra;
  input [0:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [0:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [0:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [0:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [14:0]addra;
  wire [14:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]doutb;
  wire ena;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 ;
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
  wire [31:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED ;
  wire [31:1]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "32767" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "0" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "32767" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "0" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}" *) 
  (* RDADDR_COLLISION_HWCONFIG = "DELAYED_WRITE" *) 
  (* RTL_RAM_BITS = "32768" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
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
    .INIT_A(36'h000000001),
    .INIT_B(36'h000000001),
    .INIT_FILE("NONE"),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000001),
    .SRVAL_B(36'h000000001),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0 
       (.ADDRARDADDR(addrb),
        .ADDRBWRADDR(addra),
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
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTADOUT_UNCONNECTED [31:1],doutb}),
        .DOUTBDOUT({\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTBDOUT_UNCONNECTED [31:1],douta}),
        .DOUTPADOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPADOUTP_UNCONNECTED [3:0]),
        .DOUTPBDOUTP(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_DOUTPBDOUTP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_word_narrow.mem_reg_bram_0_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b1),
        .ENARDEN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ),
        .ENBWREN(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ),
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
        .WEA({\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 ,\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1 
       (.I0(rsta),
        .I1(enb),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3 
       (.I0(web),
        .I1(enb),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4 
       (.I0(wea),
        .I1(ena),
        .O(\gen_wr_a.gen_word_narrow.mem_reg_bram_0_i_4_n_0 ));
endmodule

(* ADDR_WIDTH_A = "15" *) (* ADDR_WIDTH_B = "15" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "1" *) (* BYTE_WRITE_WIDTH_B = "1" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) (* MEMORY_INIT_FILE = "none" *) 
(* MEMORY_INIT_PARAM = "0" *) (* MEMORY_OPTIMIZATION = "true" *) (* MEMORY_PRIMITIVE = "block" *) 
(* MEMORY_SIZE = "32768" *) (* MESSAGE_CONTROL = "0" *) (* P_CLOCKING_MODE = "0" *) 
(* P_ECC_MODE = "0" *) (* P_MEMORY_OPTIMIZATION = "1" *) (* P_MEMORY_PRIMITIVE = "2" *) 
(* P_WAKEUP_TIME = "0" *) (* P_WRITE_MODE_A = "1" *) (* P_WRITE_MODE_B = "1" *) 
(* READ_DATA_WIDTH_A = "1" *) (* READ_DATA_WIDTH_B = "1" *) (* READ_LATENCY_A = "1" *) 
(* READ_LATENCY_B = "1" *) (* READ_RESET_VALUE_A = "13" *) (* READ_RESET_VALUE_B = "13" *) 
(* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "1" *) 
(* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) 
(* WAKEUP_TIME = "disable_sleep" *) (* WRITE_DATA_WIDTH_A = "1" *) (* WRITE_DATA_WIDTH_B = "1" *) 
(* WRITE_MODE_A = "read_first" *) (* WRITE_MODE_B = "read_first" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) 
module xpm_memory_tdpram
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
  input [14:0]addra;
  input [0:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [0:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [0:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [0:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [14:0]addra;
  wire [14:0]addrb;
  wire clka;
  wire [0:0]dina;
  wire [0:0]douta;
  wire [0:0]doutb;
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
  (* ADDR_WIDTH_A = "15" *) 
  (* ADDR_WIDTH_B = "15" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "1" *) 
  (* BYTE_WRITE_WIDTH_B = "1" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_END  = "32767" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "1" *) 
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
  (* P_MAX_DEPTH_DATA = "32768" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "1" *) 
  (* P_MIN_WIDTH_DATA_A = "1" *) 
  (* P_MIN_WIDTH_DATA_B = "1" *) 
  (* P_MIN_WIDTH_DATA_ECC = "1" *) 
  (* P_MIN_WIDTH_DATA_LDW = "1" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "5" *) 
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
  (* P_WIDTH_ADDR_READ_A = "15" *) 
  (* P_WIDTH_ADDR_READ_B = "15" *) 
  (* P_WIDTH_ADDR_WRITE_A = "15" *) 
  (* P_WIDTH_ADDR_WRITE_B = "15" *) 
  (* P_WIDTH_COL_WRITE_A = "1" *) 
  (* P_WIDTH_COL_WRITE_B = "1" *) 
  (* READ_DATA_WIDTH_A = "1" *) 
  (* READ_DATA_WIDTH_B = "1" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "13" *) 
  (* READ_RESET_VALUE_B = "13" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "1" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "1" *) 
  (* WRITE_DATA_WIDTH_B = "1" *) 
  (* WRITE_MODE_A = "1" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "4" *) 
  (* rstb_loop_iter = "4" *) 
  xpm_memory_base xpm_memory_base_inst
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb(1'b0),
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
