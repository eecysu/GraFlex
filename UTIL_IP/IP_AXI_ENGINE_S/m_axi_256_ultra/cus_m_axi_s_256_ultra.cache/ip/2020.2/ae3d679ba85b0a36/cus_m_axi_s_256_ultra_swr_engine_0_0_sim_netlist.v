// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Dec 11 16:33:30 2022
// Host        : noah running 64-bit Ubuntu 20.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cus_m_axi_s_256_ultra_swr_engine_0_0_sim_netlist.v
// Design      : cus_m_axi_s_256_ultra_swr_engine_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter
   (is_zero_r_reg_0,
    start_reg,
    \count_r_reg[0]_0 ,
    is_zero_r_reg_1,
    \count_r_reg[3]_0 ,
    is_zero_r_reg_2,
    is_zero_r_reg_3,
    clear,
    E,
    is_zero_r_reg_4,
    clk,
    start,
    m_axi_WREADY,
    s_axis_tvalid,
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
  input clear;
  input [0:0]E;
  input is_zero_r_reg_4;
  input clk;
  input start;
  input m_axi_WREADY;
  input s_axis_tvalid;
  input w_running;
  input [2:0]Q;
  input \count_r_reg[1]_0 ;
  input w_running_reg;
  input wfirst;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire clear;
  wire clk;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r[2]_i_1_n_0 ;
  wire \count_r[3]_i_1_n_0 ;
  wire [0:0]\count_r_reg[0]_0 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg[3]_0 ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire is_zero_r_reg_0;
  wire is_zero_r_reg_1;
  wire is_zero_r_reg_2;
  wire is_zero_r_reg_3;
  wire is_zero_r_reg_4;
  wire m_axi_WREADY;
  wire p_6_in;
  wire s_axis_tvalid;
  wire start;
  wire start_reg;
  wire w_running;
  wire w_running_reg;
  wire wfirst;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \count_r[0]_i_1__3 
       (.I0(start),
        .I1(m_axi_WREADY),
        .I2(s_axis_tvalid),
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
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(E),
        .D(\count_r[1]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(E),
        .D(\count_r[2]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(E),
        .D(\count_r[3]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    is_zero_r_i_10
       (.I0(m_axi_WREADY),
        .I1(s_axis_tvalid),
        .I2(w_running),
        .O(p_6_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    is_zero_r_i_21
       (.I0(is_zero_r_reg_0),
        .I1(w_running),
        .I2(s_axis_tvalid),
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
        .R(clear));
  LUT6 #(
    .INIT(64'hFFFFFFFF4CCCCCCC)) 
    w_running_i_1
       (.I0(is_zero_r_reg_0),
        .I1(w_running),
        .I2(s_axis_tvalid),
        .I3(m_axi_WREADY),
        .I4(w_running_reg),
        .I5(start),
        .O(is_zero_r_reg_2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    wfirst_i_1
       (.I0(is_zero_r_reg_0),
        .I1(m_axi_WREADY),
        .I2(s_axis_tvalid),
        .I3(w_running),
        .I4(wfirst),
        .O(is_zero_r_reg_3));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0
   (clear,
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
  output clear;
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
  wire clear;
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
        .O(clear));
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
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_12 ),
        .Q(count_r_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_11 ),
        .Q(count_r_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_10 ),
        .Q(count_r_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_9 ),
        .Q(count_r_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_8 ),
        .Q(count_r_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_15 ),
        .Q(count_r_reg[16]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_13 ),
        .Q(count_r_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_12 ),
        .Q(count_r_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_14 ),
        .Q(count_r_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_11 ),
        .Q(count_r_reg[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_10 ),
        .Q(count_r_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_9 ),
        .Q(count_r_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[16]_i_1__0_n_8 ),
        .Q(count_r_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_15 ),
        .Q(count_r_reg[24]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_13 ),
        .Q(count_r_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_12 ),
        .Q(count_r_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_11 ),
        .Q(count_r_reg[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_10 ),
        .Q(count_r_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_13 ),
        .Q(count_r_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_9 ),
        .Q(count_r_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[24]_i_1__0_n_8 ),
        .Q(count_r_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_15 ),
        .Q(count_r_reg[32]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_13 ),
        .Q(count_r_reg[34]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_12 ),
        .Q(count_r_reg[35]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_11 ),
        .Q(count_r_reg[36]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_10 ),
        .Q(count_r_reg[37]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_9 ),
        .Q(count_r_reg[38]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[32]_i_1__0_n_8 ),
        .Q(count_r_reg[39]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_12 ),
        .Q(count_r_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_15 ),
        .Q(count_r_reg[40]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_13 ),
        .Q(count_r_reg[42]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_12 ),
        .Q(count_r_reg[43]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_11 ),
        .Q(count_r_reg[44]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_10 ),
        .Q(count_r_reg[45]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_9 ),
        .Q(count_r_reg[46]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[40]_i_1__0_n_8 ),
        .Q(count_r_reg[47]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_15 ),
        .Q(count_r_reg[48]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_11 ),
        .Q(count_r_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_13 ),
        .Q(count_r_reg[50]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_12 ),
        .Q(count_r_reg[51]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_11 ),
        .Q(count_r_reg[52]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_10 ),
        .Q(count_r_reg[53]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_9 ),
        .Q(count_r_reg[54]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[48]_i_1__0_n_8 ),
        .Q(count_r_reg[55]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_10 ),
        .Q(count_r_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_9 ),
        .Q(count_r_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[0]_i_1_n_8 ),
        .Q(count_r_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(start_reg_rep),
        .D(\count_r_reg[8]_i_1__0_n_15 ),
        .Q(count_r_reg[8]),
        .R(clear));
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
        .R(clear));
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
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[0]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[0]),
        .O(m_axi_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[1]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[1]),
        .O(m_axi_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[2]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[2]),
        .O(m_axi_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    \m_axi_AWLEN[3]_INST_0 
       (.I0(is_zero_r_reg_n_0),
        .I1(is_zero_r_reg_0),
        .I2(Q[3]),
        .O(m_axi_AWLEN[3]));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0
   (\total_len_r_reg[8] ,
    done0,
    clear,
    clk,
    data,
    is_zero_r_reg_0,
    start,
    m_axi_BVALID);
  output \total_len_r_reg[8] ;
  output done0;
  input clear;
  input clk;
  input [13:0]data;
  input is_zero_r_reg_0;
  input start;
  input m_axi_BVALID;

  wire clear;
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
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_12 ),
        .Q(count_r_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_11 ),
        .Q(count_r_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_10 ),
        .Q(count_r_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_9 ),
        .Q(count_r_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_8 ),
        .Q(count_r_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_15 ),
        .Q(count_r_reg[16]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_13 ),
        .Q(count_r_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_12 ),
        .Q(count_r_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_14 ),
        .Q(count_r_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_11 ),
        .Q(count_r_reg[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_10 ),
        .Q(count_r_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_9 ),
        .Q(count_r_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[16]_i_1_n_8 ),
        .Q(count_r_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_15 ),
        .Q(count_r_reg[24]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_13 ),
        .Q(count_r_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_12 ),
        .Q(count_r_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_11 ),
        .Q(count_r_reg[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_10 ),
        .Q(count_r_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_13 ),
        .Q(count_r_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_9 ),
        .Q(count_r_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[24]_i_1_n_8 ),
        .Q(count_r_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_15 ),
        .Q(count_r_reg[32]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_13 ),
        .Q(count_r_reg[34]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_12 ),
        .Q(count_r_reg[35]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_11 ),
        .Q(count_r_reg[36]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_10 ),
        .Q(count_r_reg[37]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_9 ),
        .Q(count_r_reg[38]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[32]_i_1_n_8 ),
        .Q(count_r_reg[39]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_12 ),
        .Q(count_r_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_15 ),
        .Q(count_r_reg[40]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_13 ),
        .Q(count_r_reg[42]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_12 ),
        .Q(count_r_reg[43]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_11 ),
        .Q(count_r_reg[44]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_10 ),
        .Q(count_r_reg[45]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_9 ),
        .Q(count_r_reg[46]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[40]_i_1_n_8 ),
        .Q(count_r_reg[47]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_15 ),
        .Q(count_r_reg[48]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_11 ),
        .Q(count_r_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_13 ),
        .Q(count_r_reg[50]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_12 ),
        .Q(count_r_reg[51]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_11 ),
        .Q(count_r_reg[52]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_10 ),
        .Q(count_r_reg[53]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_9 ),
        .Q(count_r_reg[54]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[48]_i_1_n_8 ),
        .Q(count_r_reg[55]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_10 ),
        .Q(count_r_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_9 ),
        .Q(count_r_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[0]_i_2_n_8 ),
        .Q(count_r_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\count_r[0]_i_1__0_n_0 ),
        .D(\count_r_reg[8]_i_1_n_15 ),
        .Q(count_r_reg[8]),
        .R(clear));
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
        .R(clear));
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
        .S(clear));
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1
   (is_zero_r_reg_0,
    D,
    \total_len_r_reg[8] ,
    \final_burst_len_reg[2] ,
    E,
    clear,
    \count_r_reg[0]_0 ,
    clk,
    data,
    start,
    Q,
    \count_r_reg[0]_1 ,
    is_zero_r_reg_1,
    w_running,
    s_axis_tvalid,
    m_axi_WREADY,
    is_zero_r_reg_2,
    is_zero_r_i_3_0);
  output is_zero_r_reg_0;
  output [0:0]D;
  output \total_len_r_reg[8] ;
  output \final_burst_len_reg[2] ;
  output [0:0]E;
  input clear;
  input \count_r_reg[0]_0 ;
  input clk;
  input [13:0]data;
  input start;
  input [3:0]Q;
  input [0:0]\count_r_reg[0]_1 ;
  input is_zero_r_reg_1;
  input w_running;
  input s_axis_tvalid;
  input m_axi_WREADY;
  input is_zero_r_reg_2;
  input is_zero_r_i_3_0;

  wire [0:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire clear;
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
  wire s_axis_tvalid;
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
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[11] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_12 ),
        .Q(count_r_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[12] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_11 ),
        .Q(count_r_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[13] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_10 ),
        .Q(count_r_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[14] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_9 ),
        .Q(count_r_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[15] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_8 ),
        .Q(count_r_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[16] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_15 ),
        .Q(count_r_reg[16]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[18] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_13 ),
        .Q(count_r_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[19] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_12 ),
        .Q(count_r_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_14 ),
        .Q(count_r_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[20] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_11 ),
        .Q(count_r_reg[20]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[21] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_10 ),
        .Q(count_r_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[22] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_9 ),
        .Q(count_r_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[23] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[16]_i_1__1_n_8 ),
        .Q(count_r_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[24] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_15 ),
        .Q(count_r_reg[24]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[26] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_13 ),
        .Q(count_r_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[27] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_12 ),
        .Q(count_r_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[28] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_11 ),
        .Q(count_r_reg[28]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[29] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_10 ),
        .Q(count_r_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_13 ),
        .Q(count_r_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[30] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_9 ),
        .Q(count_r_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[31] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[24]_i_1__1_n_8 ),
        .Q(count_r_reg[31]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[32] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_15 ),
        .Q(count_r_reg[32]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[34] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_13 ),
        .Q(count_r_reg[34]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[35] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_12 ),
        .Q(count_r_reg[35]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[36] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_11 ),
        .Q(count_r_reg[36]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[37] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_10 ),
        .Q(count_r_reg[37]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[38] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_9 ),
        .Q(count_r_reg[38]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[39] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[32]_i_1__1_n_8 ),
        .Q(count_r_reg[39]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_12 ),
        .Q(count_r_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[40] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_15 ),
        .Q(count_r_reg[40]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[42] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_13 ),
        .Q(count_r_reg[42]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[43] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_12 ),
        .Q(count_r_reg[43]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[44] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_11 ),
        .Q(count_r_reg[44]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[45] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_10 ),
        .Q(count_r_reg[45]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[46] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_9 ),
        .Q(count_r_reg[46]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[47] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[40]_i_1__1_n_8 ),
        .Q(count_r_reg[47]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[48] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_15 ),
        .Q(count_r_reg[48]),
        .R(clear));
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_11 ),
        .Q(count_r_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[50] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_13 ),
        .Q(count_r_reg[50]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[51] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_12 ),
        .Q(count_r_reg[51]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[52] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_11 ),
        .Q(count_r_reg[52]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[53] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_10 ),
        .Q(count_r_reg[53]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[54] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_9 ),
        .Q(count_r_reg[54]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[55] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[48]_i_1__1_n_8 ),
        .Q(count_r_reg[55]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[5] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_10 ),
        .Q(count_r_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[6] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_9 ),
        .Q(count_r_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[7] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[0]_i_2__0_n_8 ),
        .Q(count_r_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[8] 
       (.C(clk),
        .CE(\count_r_reg[0]_0 ),
        .D(\count_r_reg[8]_i_1__1_n_15 ),
        .Q(count_r_reg[8]),
        .R(clear));
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
        .R(clear));
  LUT4 #(
    .INIT(16'hFF80)) 
    is_zero_r_i_1
       (.I0(w_running),
        .I1(s_axis_tvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    is_zero_r_i_3__0
       (.I0(count_r_reg[24]),
        .I1(count_r_reg[50]),
        .I2(count_r_reg[3]),
        .I3(count_r_reg[5]),
        .I4(is_zero_r_i_11_n_0),
        .O(is_zero_r_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .S(clear));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1
   (m_axi_AWREADY_0,
    m_axi_AWREADY_1,
    clear,
    clk,
    wfirst_pulse,
    is_zero_r_reg_0,
    m_axi_AWREADY,
    stall_aw);
  output m_axi_AWREADY_0;
  output m_axi_AWREADY_1;
  input clear;
  input clk;
  input wfirst_pulse;
  input is_zero_r_reg_0;
  input m_axi_AWREADY;
  input stall_aw;

  wire clear;
  wire clk;
  wire \count_r[0]_i_1__1_n_0 ;
  wire \count_r[1]_i_1__1_n_0 ;
  wire \count_r[2]_i_1__1_n_0 ;
  wire \count_r[3]_i_1__1_n_0 ;
  wire \count_r[3]_i_2_n_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[1]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[2]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[3]_i_1__1_n_0 ),
        .D(\count_r[3]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(clear));
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
        .S(clear));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2
   (stall_aw,
    clear,
    clk,
    is_zero_r_reg_0,
    m_axi_AWREADY,
    m_axi_BVALID,
    \count_r_reg[3]_0 );
  output stall_aw;
  input clear;
  input clk;
  input is_zero_r_reg_0;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input \count_r_reg[3]_0 ;

  wire clear;
  wire clk;
  wire \count_r[0]_i_1__2_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__0_n_0 ;
  wire \count_r[3]_i_1__0_n_0 ;
  wire \count_r[4]_i_1_n_0 ;
  wire \count_r[4]_i_2_n_0 ;
  wire \count_r[4]_i_3_n_0 ;
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

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__2 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[1]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[2]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[3]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[4] 
       (.C(clk),
        .CE(\count_r[4]_i_1_n_0 ),
        .D(\count_r[4]_i_2_n_0 ),
        .Q(\count_r_reg_n_0_[4] ),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "cus_m_axi_s_256_ultra_swr_engine_0_0,swr_engine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "swr_engine,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, INSERT_VIP 0" *) input clk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_256_ultra_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s_axis_tdata;

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
  assign m_axi_WDATA[127:0] = s_axis_tdata;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine inst
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
        .m_axi_WREADY(m_axi_WREADY),
        .m_axi_WVALID(m_axi_WVALID),
        .req_len(req_len),
        .rst_n(rst_n),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine
   (is_zero_r_reg,
    awvalid_r_reg_0,
    m_axi_AWADDR,
    m_axi_AWLEN,
    ctrl_done,
    m_axi_WVALID,
    s_axis_tready,
    m_axi_WREADY,
    s_axis_tvalid,
    m_axi_AWREADY,
    m_axi_BVALID,
    clk,
    req_len,
    ctrl_start,
    baseAddr,
    rst_n);
  output is_zero_r_reg;
  output awvalid_r_reg_0;
  output [56:0]m_axi_AWADDR;
  output [3:0]m_axi_AWLEN;
  output ctrl_done;
  output m_axi_WVALID;
  output s_axis_tready;
  input m_axi_WREADY;
  input s_axis_tvalid;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input clk;
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
  wire clear;
  wire clk;
  wire ctrl_done;
  wire ctrl_start;
  wire ctrl_start_d1;
  wire [55:0]data;
  wire done0;
  wire [3:0]final_burst_len;
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
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire [15:0]req_len;
  wire rst_n;
  wire s_axis_tready;
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
        .R(clear));
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2 inst_aw_to_b_transaction_cntr
       (.clear(clear),
        .clk(clk),
        .\count_r_reg[3]_0 (inst_w_to_aw_cntr_n_0),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_BVALID(m_axi_BVALID),
        .stall_aw(stall_aw));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0 inst_aw_transaction_cntr
       (.Q(final_burst_len),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[0]_0 (start_reg_rep_n_0),
        .\count_r_reg[0]_1 (awvalid_r_reg_0),
        .data({data[55],data[16],data[11:0]}),
        .is_zero_r_i_4__1_0(inst_w_to_aw_cntr_n_0),
        .is_zero_r_reg_0(inst_b_transaction_cntr_n_0),
        .m_axi_AWLEN(m_axi_AWLEN),
        .m_axi_AWREADY(m_axi_AWREADY),
        .rst_n(rst_n),
        .start(start),
        .start_reg_rep(inst_aw_transaction_cntr_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0 inst_b_transaction_cntr
       (.clear(clear),
        .clk(clk),
        .data({data[55],data[16],data[11:0]}),
        .done0(done0),
        .is_zero_r_reg_0(start_reg_rep__0_n_0),
        .m_axi_BVALID(m_axi_BVALID),
        .start(start),
        .\total_len_r_reg[8] (inst_b_transaction_cntr_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter inst_burst_cntr
       (.D(inst_w_transaction_cntr_n_1),
        .E(is_zero_r),
        .Q(final_burst_len[3:1]),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[0]_0 (inst_burst_cntr_n_2),
        .\count_r_reg[1]_0 (inst_w_transaction_cntr_n_2),
        .\count_r_reg[3]_0 (inst_burst_cntr_n_4),
        .is_zero_r_reg_0(is_zero_r_reg),
        .is_zero_r_reg_1(inst_burst_cntr_n_3),
        .is_zero_r_reg_2(inst_burst_cntr_n_5),
        .is_zero_r_reg_3(inst_burst_cntr_n_6),
        .is_zero_r_reg_4(inst_w_transaction_cntr_n_3),
        .m_axi_WREADY(m_axi_WREADY),
        .s_axis_tvalid(s_axis_tvalid),
        .start(start),
        .start_reg(inst_burst_cntr_n_1),
        .w_running(w_running),
        .w_running_reg(inst_w_transaction_cntr_n_0),
        .wfirst(wfirst));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1 inst_w_to_aw_cntr
       (.clear(clear),
        .clk(clk),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_AWREADY_0(inst_w_to_aw_cntr_n_0),
        .m_axi_AWREADY_1(inst_w_to_aw_cntr_n_1),
        .stall_aw(stall_aw),
        .wfirst_pulse(wfirst_pulse));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1 inst_w_transaction_cntr
       (.D(inst_w_transaction_cntr_n_1),
        .E(is_zero_r),
        .Q(final_burst_len),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[0]_0 (inst_burst_cntr_n_1),
        .\count_r_reg[0]_1 (inst_burst_cntr_n_2),
        .data({data[55],data[16],data[11:0]}),
        .\final_burst_len_reg[2] (inst_w_transaction_cntr_n_3),
        .is_zero_r_i_3_0(inst_burst_cntr_n_3),
        .is_zero_r_reg_0(inst_w_transaction_cntr_n_0),
        .is_zero_r_reg_1(inst_burst_cntr_n_4),
        .is_zero_r_reg_2(inst_b_transaction_cntr_n_0),
        .m_axi_WREADY(m_axi_WREADY),
        .s_axis_tvalid(s_axis_tvalid),
        .start(start),
        .\total_len_r_reg[8] (inst_w_transaction_cntr_n_2),
        .w_running(w_running));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_WVALID_INST_0
       (.I0(s_axis_tvalid),
        .I1(w_running),
        .O(m_axi_WVALID));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tready_INST_0
       (.I0(w_running),
        .I1(m_axi_WREADY),
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
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    wfirst_d1_i_1
       (.I0(wfirst),
        .I1(s_axis_tvalid),
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    wfirst_pulse_i_1
       (.I0(w_running),
        .I1(s_axis_tvalid),
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
        .S(clear));
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
