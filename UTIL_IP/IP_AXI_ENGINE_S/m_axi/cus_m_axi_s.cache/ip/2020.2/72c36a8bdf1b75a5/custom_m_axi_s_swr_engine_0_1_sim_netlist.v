// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 21 17:47:56 2022
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_s_swr_engine_0_1_sim_netlist.v
// Design      : custom_m_axi_s_swr_engine_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu280-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter
   (is_zero_r_reg_0,
    E,
    \num_transactions_reg[0] ,
    wfirst_reg,
    clear,
    clk,
    m_axi_WVALID,
    m_axi_WREADY,
    start,
    w_almost_final_transaction,
    Q,
    is_zero_r_reg_1,
    wfirst);
  output is_zero_r_reg_0;
  output [0:0]E;
  output \num_transactions_reg[0] ;
  output wfirst_reg;
  input clear;
  input clk;
  input m_axi_WVALID;
  input m_axi_WREADY;
  input start;
  input w_almost_final_transaction;
  input [3:0]Q;
  input [3:0]is_zero_r_reg_1;
  input wfirst;

  wire [0:0]E;
  wire [3:0]Q;
  wire clear;
  wire clk;
  wire \count_r[0]_i_1_n_0 ;
  wire \count_r[1]_i_1_n_0 ;
  wire \count_r[2]_i_1_n_0 ;
  wire \count_r[2]_i_2_n_0 ;
  wire \count_r[3]_i_1__0_n_0 ;
  wire \count_r[3]_i_2_n_0 ;
  wire \count_r[3]_i_3__0_n_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire is_zero_r;
  wire is_zero_r_i_2_n_0;
  wire is_zero_r_i_3_n_0;
  wire is_zero_r_i_4_n_0;
  wire is_zero_r_i_5_n_0;
  wire is_zero_r_reg_0;
  wire [3:0]is_zero_r_reg_1;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire \num_transactions_reg[0] ;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_reg;

  LUT6 #(
    .INIT(64'h5C5C5C5CCC5C5C5C)) 
    \count_r[0]_i_1 
       (.I0(\count_r_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(\num_transactions_reg[0] ),
        .I3(w_almost_final_transaction),
        .I4(is_zero_r_reg_0),
        .I5(is_zero_r_i_4_n_0),
        .O(\count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEA222A222AEEEA)) 
    \count_r[1]_i_1 
       (.I0(Q[1]),
        .I1(\num_transactions_reg[0] ),
        .I2(\count_r[3]_i_2_n_0 ),
        .I3(is_zero_r_i_4_n_0),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[1] ),
        .O(\count_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEA2A2A2A2AEA)) 
    \count_r[2]_i_1 
       (.I0(Q[2]),
        .I1(\num_transactions_reg[0] ),
        .I2(\count_r[2]_i_2_n_0 ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count_r[2]_i_2 
       (.I0(m_axi_WREADY),
        .I1(m_axi_WVALID),
        .I2(is_zero_r_reg_0),
        .I3(w_almost_final_transaction),
        .O(\count_r[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \count_r[3]_i_1 
       (.I0(m_axi_WVALID),
        .I1(m_axi_WREADY),
        .I2(is_zero_r_reg_0),
        .I3(start),
        .O(E));
  LUT6 #(
    .INIT(64'hEEEA222A222AEEEA)) 
    \count_r[3]_i_1__0 
       (.I0(Q[3]),
        .I1(\num_transactions_reg[0] ),
        .I2(\count_r[3]_i_2_n_0 ),
        .I3(is_zero_r_i_4_n_0),
        .I4(\count_r[3]_i_3__0_n_0 ),
        .I5(\count_r_reg_n_0_[3] ),
        .O(\count_r[3]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \count_r[3]_i_2 
       (.I0(w_almost_final_transaction),
        .I1(is_zero_r_reg_0),
        .O(\count_r[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \count_r[3]_i_3__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_3__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(is_zero_r),
        .D(\count_r[0]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(is_zero_r),
        .D(\count_r[1]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(is_zero_r),
        .D(\count_r[2]_i_1_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .S(clear));
  FDSE #(
    .INIT(1'b1)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(is_zero_r),
        .D(\count_r[3]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .S(clear));
  LUT3 #(
    .INIT(8'hD5)) 
    is_zero_r_i_1
       (.I0(\num_transactions_reg[0] ),
        .I1(m_axi_WREADY),
        .I2(m_axi_WVALID),
        .O(is_zero_r));
  LUT6 #(
    .INIT(64'h3333FBBB00000888)) 
    is_zero_r_i_2
       (.I0(is_zero_r_i_3_n_0),
        .I1(\num_transactions_reg[0] ),
        .I2(w_almost_final_transaction),
        .I3(is_zero_r_reg_0),
        .I4(is_zero_r_i_4_n_0),
        .I5(is_zero_r_i_5_n_0),
        .O(is_zero_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    is_zero_r_i_3
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[2] ),
        .O(is_zero_r_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    is_zero_r_i_4
       (.I0(m_axi_WVALID),
        .I1(m_axi_WREADY),
        .O(is_zero_r_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    is_zero_r_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(is_zero_r_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_zero_r_reg
       (.C(clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_2_n_0),
        .Q(is_zero_r_reg_0),
        .R(clear));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \m_axi_AWLEN[3]_INST_0_i_1 
       (.I0(is_zero_r_reg_1[0]),
        .I1(is_zero_r_reg_1[3]),
        .I2(start),
        .I3(is_zero_r_reg_1[2]),
        .I4(is_zero_r_reg_1[1]),
        .O(\num_transactions_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEA2A)) 
    wfirst_i_1
       (.I0(wfirst),
        .I1(m_axi_WVALID),
        .I2(m_axi_WREADY),
        .I3(is_zero_r_reg_0),
        .O(wfirst_reg));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0
   (m_axi_AWLEN,
    clear,
    clk,
    m_axi_AWLEN_0_sp_1,
    Q,
    start,
    is_zero_r_reg_0,
    m_axi_AWREADY,
    \count_r_reg[3]_0 );
  output [3:0]m_axi_AWLEN;
  input clear;
  input clk;
  input m_axi_AWLEN_0_sp_1;
  input [3:0]Q;
  input start;
  input is_zero_r_reg_0;
  input m_axi_AWREADY;
  input [3:0]\count_r_reg[3]_0 ;

  wire [3:0]Q;
  wire aw_final_transaction;
  wire clear;
  wire clk;
  wire [3:0]\count_r_reg[3]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire is_zero_r;
  wire is_zero_r_i_1__1_n_0;
  wire is_zero_r_i_2__0_n_0;
  wire is_zero_r_reg_0;
  wire [3:0]m_axi_AWLEN;
  wire m_axi_AWLEN_0_sn_1;
  wire m_axi_AWREADY;
  wire [3:0]p_0_in__0;
  wire start;

  assign m_axi_AWLEN_0_sn_1 = m_axi_AWLEN_0_sp_1;
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \count_r[0]_i_1__2 
       (.I0(\count_r_reg[3]_0 [0]),
        .I1(start),
        .I2(\count_r_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \count_r[1]_i_1__2 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(start),
        .I3(\count_r_reg[3]_0 [1]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \count_r[2]_i_1__2 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(start),
        .I4(\count_r_reg[3]_0 [2]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \count_r[3]_i_1__1 
       (.I0(start),
        .I1(is_zero_r_reg_0),
        .I2(m_axi_AWREADY),
        .O(is_zero_r));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \count_r[3]_i_2__2 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(start),
        .I5(\count_r_reg[3]_0 [3]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__0[0]),
        .Q(\count_r_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__0[1]),
        .Q(\count_r_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__0[2]),
        .Q(\count_r_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__0[3]),
        .Q(\count_r_reg_n_0_[3] ),
        .R(clear));
  LUT5 #(
    .INIT(32'h1000FFFF)) 
    is_zero_r_i_1__1
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[1] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(is_zero_r_i_2__0_n_0),
        .I4(m_axi_AWLEN_0_sn_1),
        .O(is_zero_r_i_1__1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    is_zero_r_i_2__0
       (.I0(start),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(is_zero_r_reg_0),
        .I3(m_axi_AWREADY),
        .O(is_zero_r_i_2__0_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_1__1_n_0),
        .Q(aw_final_transaction),
        .S(clear));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_AWLEN[0]_INST_0 
       (.I0(aw_final_transaction),
        .I1(m_axi_AWLEN_0_sn_1),
        .I2(Q[0]),
        .O(m_axi_AWLEN[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_AWLEN[1]_INST_0 
       (.I0(aw_final_transaction),
        .I1(m_axi_AWLEN_0_sn_1),
        .I2(Q[1]),
        .O(m_axi_AWLEN[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_AWLEN[2]_INST_0 
       (.I0(aw_final_transaction),
        .I1(m_axi_AWLEN_0_sn_1),
        .I2(Q[2]),
        .O(m_axi_AWLEN[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axi_AWLEN[3]_INST_0 
       (.I0(aw_final_transaction),
        .I1(m_axi_AWLEN_0_sn_1),
        .I2(Q[3]),
        .O(m_axi_AWLEN[3]));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0
   (clear,
    req_done,
    clk,
    Q,
    start,
    m_axi_BVALID,
    rst_n);
  output clear;
  output req_done;
  input clk;
  input [3:0]Q;
  input start;
  input m_axi_BVALID;
  input rst_n;

  wire [3:0]Q;
  wire b_final_transaction;
  wire clear;
  wire clk;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire is_zero_r;
  wire is_zero_r_i_1__0_n_0;
  wire is_zero_r_i_2__2_n_0;
  wire m_axi_BVALID;
  wire [3:0]p_0_in__1;
  wire req_done;
  wire rst_n;
  wire start;

  LUT1 #(
    .INIT(2'h1)) 
    awvalid_r_i_1
       (.I0(rst_n),
        .O(clear));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \count_r[0]_i_1__3 
       (.I0(Q[0]),
        .I1(start),
        .I2(\count_r_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \count_r[1]_i_1__3 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(start),
        .I3(Q[1]),
        .O(p_0_in__1[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \count_r[2]_i_1__3 
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[0] ),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(start),
        .I4(Q[2]),
        .O(p_0_in__1[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \count_r[3]_i_1__3 
       (.I0(start),
        .I1(m_axi_BVALID),
        .O(is_zero_r));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \count_r[3]_i_2__3 
       (.I0(\count_r_reg_n_0_[3] ),
        .I1(\count_r_reg_n_0_[2] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(start),
        .I5(Q[3]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__1[0]),
        .Q(\count_r_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__1[1]),
        .Q(\count_r_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__1[2]),
        .Q(\count_r_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(is_zero_r),
        .D(p_0_in__1[3]),
        .Q(\count_r_reg_n_0_[3] ),
        .R(clear));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAABAA)) 
    is_zero_r_i_1__0
       (.I0(is_zero_r_i_2__2_n_0),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(start),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(is_zero_r_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    is_zero_r_i_2__2
       (.I0(\count_r_reg_n_0_[2] ),
        .I1(\count_r_reg_n_0_[3] ),
        .I2(\count_r_reg_n_0_[0] ),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(start),
        .I5(m_axi_BVALID),
        .O(is_zero_r_i_2__2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(is_zero_r),
        .D(is_zero_r_i_1__0_n_0),
        .Q(b_final_transaction),
        .S(clear));
  LUT2 #(
    .INIT(4'h8)) 
    req_done_INST_0
       (.I0(m_axi_BVALID),
        .I1(b_final_transaction),
        .O(req_done));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1
   (awvalid_r_reg,
    clear,
    clk,
    wfirst_pulse,
    m_axi_AWREADY,
    \count_r_reg[1]_0 );
  output awvalid_r_reg;
  input clear;
  input clk;
  input wfirst_pulse;
  input m_axi_AWREADY;
  input \count_r_reg[1]_0 ;

  wire awvalid_r_reg;
  wire clear;
  wire clk;
  wire \count_r[0]_i_1__1_n_0 ;
  wire \count_r[1]_i_1__0_n_0 ;
  wire \count_r[2]_i_1__0_n_0 ;
  wire \count_r[3]_i_1__2_n_0 ;
  wire \count_r[3]_i_2__0_n_0 ;
  wire \count_r[3]_i_3_n_0 ;
  wire \count_r_reg[1]_0 ;
  wire \count_r_reg_n_0_[0] ;
  wire \count_r_reg_n_0_[1] ;
  wire \count_r_reg_n_0_[2] ;
  wire \count_r_reg_n_0_[3] ;
  wire idle_aw;
  wire is_zero_r_i_1__2_n_0;
  wire is_zero_r_i_2__1_n_0;
  wire m_axi_AWREADY;
  wire wfirst_pulse;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h1B)) 
    awvalid_r_i_2
       (.I0(\count_r_reg[1]_0 ),
        .I1(idle_aw),
        .I2(m_axi_AWREADY),
        .O(awvalid_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_r[0]_i_1__1 
       (.I0(\count_r_reg_n_0_[0] ),
        .O(\count_r[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h95AA6A55)) 
    \count_r[1]_i_1__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r_reg[1]_0 ),
        .I2(m_axi_AWREADY),
        .I3(wfirst_pulse),
        .I4(\count_r_reg_n_0_[0] ),
        .O(\count_r[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFFF707000008F)) 
    \count_r[2]_i_1__0 
       (.I0(\count_r_reg[1]_0 ),
        .I1(m_axi_AWREADY),
        .I2(wfirst_pulse),
        .I3(\count_r_reg_n_0_[1] ),
        .I4(\count_r_reg_n_0_[0] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(\count_r[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \count_r[3]_i_1__2 
       (.I0(wfirst_pulse),
        .I1(m_axi_AWREADY),
        .I2(\count_r_reg[1]_0 ),
        .O(\count_r[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hD2F0F0B4)) 
    \count_r[3]_i_2__0 
       (.I0(\count_r_reg_n_0_[1] ),
        .I1(\count_r[3]_i_3_n_0 ),
        .I2(\count_r_reg_n_0_[3] ),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[2] ),
        .O(\count_r[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \count_r[3]_i_3 
       (.I0(\count_r_reg[1]_0 ),
        .I1(m_axi_AWREADY),
        .I2(wfirst_pulse),
        .O(\count_r[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(\count_r[3]_i_1__2_n_0 ),
        .D(\count_r[0]_i_1__1_n_0 ),
        .Q(\count_r_reg_n_0_[0] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(\count_r[3]_i_1__2_n_0 ),
        .D(\count_r[1]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[1] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(\count_r[3]_i_1__2_n_0 ),
        .D(\count_r[2]_i_1__0_n_0 ),
        .Q(\count_r_reg_n_0_[2] ),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(\count_r[3]_i_1__2_n_0 ),
        .D(\count_r[3]_i_2__0_n_0 ),
        .Q(\count_r_reg_n_0_[3] ),
        .R(clear));
  LUT6 #(
    .INIT(64'hA000000000000300)) 
    is_zero_r_i_1__2
       (.I0(wfirst_pulse),
        .I1(is_zero_r_i_2__1_n_0),
        .I2(\count_r_reg_n_0_[1] ),
        .I3(\count_r_reg_n_0_[0] ),
        .I4(\count_r_reg_n_0_[3] ),
        .I5(\count_r_reg_n_0_[2] ),
        .O(is_zero_r_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h7)) 
    is_zero_r_i_2__1
       (.I0(m_axi_AWREADY),
        .I1(\count_r_reg[1]_0 ),
        .O(is_zero_r_i_2__1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    is_zero_r_reg
       (.C(clk),
        .CE(\count_r[3]_i_1__2_n_0 ),
        .D(is_zero_r_i_1__2_n_0),
        .Q(idle_aw),
        .S(clear));
endmodule

(* ORIG_REF_NAME = "axi_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_2
   (\count_r_reg[1]_0 ,
    start,
    Q,
    clear,
    E,
    clk);
  output \count_r_reg[1]_0 ;
  input start;
  input [3:0]Q;
  input clear;
  input [0:0]E;
  input clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire clear;
  wire clk;
  wire \count_r_reg[1]_0 ;
  wire [3:0]p_0_in;
  wire start;
  wire [3:0]w_transactions_to_go;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \count_r[0]_i_1__0 
       (.I0(Q[0]),
        .I1(start),
        .I2(w_transactions_to_go[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF909)) 
    \count_r[1]_i_1__1 
       (.I0(w_transactions_to_go[1]),
        .I1(w_transactions_to_go[0]),
        .I2(start),
        .I3(Q[1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFFA900A9)) 
    \count_r[2]_i_1__1 
       (.I0(w_transactions_to_go[2]),
        .I1(w_transactions_to_go[0]),
        .I2(w_transactions_to_go[1]),
        .I3(start),
        .I4(Q[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFFAAA90000AAA9)) 
    \count_r[3]_i_2__1 
       (.I0(w_transactions_to_go[3]),
        .I1(w_transactions_to_go[2]),
        .I2(w_transactions_to_go[0]),
        .I3(w_transactions_to_go[1]),
        .I4(start),
        .I5(Q[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[0] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[0]),
        .Q(w_transactions_to_go[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(w_transactions_to_go[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(w_transactions_to_go[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \count_r_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(w_transactions_to_go[3]),
        .R(clear));
  LUT4 #(
    .INIT(16'h0004)) 
    w_almost_final_transaction_i_1
       (.I0(w_transactions_to_go[1]),
        .I1(w_transactions_to_go[0]),
        .I2(w_transactions_to_go[3]),
        .I3(w_transactions_to_go[2]),
        .O(\count_r_reg[1]_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "custom_m_axi_s_swr_engine_0_1,swr_engine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "swr_engine,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    baseAddr,
    req_start,
    req_length,
    req_done,
    m_axi_AWVALID,
    m_axi_AWADDR,
    m_axi_AWID,
    m_axi_AWLEN,
    m_axi_AWSIZE,
    m_axi_AWREADY,
    m_axi_WDATA,
    m_axi_WSTRB,
    m_axi_WLAST,
    m_axi_WVALID,
    m_axi_WREADY,
    m_axi_BRESP,
    m_axi_BVALID,
    m_axi_BREADY,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_clk_0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [63:0]baseAddr;
  input req_start;
  input [7:0]req_length;
  output req_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWVALID" *) output m_axi_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWADDR" *) output [63:0]m_axi_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWID" *) output [5:0]m_axi_AWID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWLEN" *) output [7:0]m_axi_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWSIZE" *) output [2:0]m_axi_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi AWREADY" *) input m_axi_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [63:0]m_axi_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [7:0]m_axi_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [63:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]baseAddr;
  wire clk;
  wire [63:0]m_axi_AWADDR;
  wire [3:0]\^m_axi_AWLEN ;
  wire m_axi_AWREADY;
  wire m_axi_AWVALID;
  wire m_axi_BVALID;
  wire [63:0]m_axi_WDATA;
  wire m_axi_WLAST;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire req_done;
  wire [7:0]req_length;
  wire req_start;
  wire rst_n;
  wire [63:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

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
  assign m_axi_AWSIZE[2] = \<const0> ;
  assign m_axi_AWSIZE[1] = \<const1> ;
  assign m_axi_AWSIZE[0] = \<const1> ;
  assign m_axi_BREADY = \<const1> ;
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
        .baseAddr(baseAddr),
        .clk(clk),
        .is_zero_r_reg(m_axi_WLAST),
        .m_axi_AWADDR(m_axi_AWADDR),
        .m_axi_AWLEN(\^m_axi_AWLEN ),
        .m_axi_AWREADY(m_axi_AWREADY),
        .m_axi_BVALID(m_axi_BVALID),
        .m_axi_WDATA(m_axi_WDATA),
        .m_axi_WREADY(m_axi_WREADY),
        .m_axi_WVALID(m_axi_WVALID),
        .req_done(req_done),
        .req_length(req_length),
        .req_start(req_start),
        .rst_n(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine
   (m_axi_AWADDR,
    s_axis_tready,
    m_axi_WVALID,
    m_axi_WDATA,
    is_zero_r_reg,
    m_axi_AWLEN,
    awvalid_r_reg_0,
    req_done,
    baseAddr,
    req_start,
    rst_n,
    clk,
    s_axis_tvalid,
    s_axis_tdata,
    m_axi_WREADY,
    m_axi_AWREADY,
    m_axi_BVALID,
    req_length);
  output [63:0]m_axi_AWADDR;
  output s_axis_tready;
  output m_axi_WVALID;
  output [63:0]m_axi_WDATA;
  output is_zero_r_reg;
  output [3:0]m_axi_AWLEN;
  output awvalid_r_reg_0;
  output req_done;
  input [63:0]baseAddr;
  input req_start;
  input rst_n;
  input clk;
  input s_axis_tvalid;
  input [63:0]s_axis_tdata;
  input m_axi_WREADY;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input [7:0]req_length;

  wire \addr[0]_i_1_n_0 ;
  wire \addr[13]_i_10_n_0 ;
  wire \addr[13]_i_2_n_0 ;
  wire \addr[13]_i_3_n_0 ;
  wire \addr[13]_i_4_n_0 ;
  wire \addr[13]_i_5_n_0 ;
  wire \addr[13]_i_6_n_0 ;
  wire \addr[13]_i_7_n_0 ;
  wire \addr[13]_i_8_n_0 ;
  wire \addr[13]_i_9_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[21]_i_2_n_0 ;
  wire \addr[21]_i_3_n_0 ;
  wire \addr[21]_i_4_n_0 ;
  wire \addr[21]_i_5_n_0 ;
  wire \addr[21]_i_6_n_0 ;
  wire \addr[21]_i_7_n_0 ;
  wire \addr[21]_i_8_n_0 ;
  wire \addr[21]_i_9_n_0 ;
  wire \addr[29]_i_2_n_0 ;
  wire \addr[29]_i_3_n_0 ;
  wire \addr[29]_i_4_n_0 ;
  wire \addr[29]_i_5_n_0 ;
  wire \addr[29]_i_6_n_0 ;
  wire \addr[29]_i_7_n_0 ;
  wire \addr[29]_i_8_n_0 ;
  wire \addr[29]_i_9_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[37]_i_2_n_0 ;
  wire \addr[37]_i_3_n_0 ;
  wire \addr[37]_i_4_n_0 ;
  wire \addr[37]_i_5_n_0 ;
  wire \addr[37]_i_6_n_0 ;
  wire \addr[37]_i_7_n_0 ;
  wire \addr[37]_i_8_n_0 ;
  wire \addr[37]_i_9_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[45]_i_2_n_0 ;
  wire \addr[45]_i_3_n_0 ;
  wire \addr[45]_i_4_n_0 ;
  wire \addr[45]_i_5_n_0 ;
  wire \addr[45]_i_6_n_0 ;
  wire \addr[45]_i_7_n_0 ;
  wire \addr[45]_i_8_n_0 ;
  wire \addr[45]_i_9_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[53]_i_2_n_0 ;
  wire \addr[53]_i_3_n_0 ;
  wire \addr[53]_i_4_n_0 ;
  wire \addr[53]_i_5_n_0 ;
  wire \addr[53]_i_6_n_0 ;
  wire \addr[53]_i_7_n_0 ;
  wire \addr[53]_i_8_n_0 ;
  wire \addr[53]_i_9_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[61]_i_2_n_0 ;
  wire \addr[61]_i_3_n_0 ;
  wire \addr[61]_i_4_n_0 ;
  wire \addr[61]_i_5_n_0 ;
  wire \addr[61]_i_6_n_0 ;
  wire \addr[61]_i_7_n_0 ;
  wire \addr[61]_i_8_n_0 ;
  wire \addr[61]_i_9_n_0 ;
  wire \addr[63]_i_1_n_0 ;
  wire \addr[63]_i_3_n_0 ;
  wire \addr[63]_i_4_n_0 ;
  wire \addr_reg[13]_i_1_n_0 ;
  wire \addr_reg[13]_i_1_n_1 ;
  wire \addr_reg[13]_i_1_n_10 ;
  wire \addr_reg[13]_i_1_n_11 ;
  wire \addr_reg[13]_i_1_n_12 ;
  wire \addr_reg[13]_i_1_n_13 ;
  wire \addr_reg[13]_i_1_n_14 ;
  wire \addr_reg[13]_i_1_n_15 ;
  wire \addr_reg[13]_i_1_n_2 ;
  wire \addr_reg[13]_i_1_n_3 ;
  wire \addr_reg[13]_i_1_n_4 ;
  wire \addr_reg[13]_i_1_n_5 ;
  wire \addr_reg[13]_i_1_n_6 ;
  wire \addr_reg[13]_i_1_n_7 ;
  wire \addr_reg[13]_i_1_n_8 ;
  wire \addr_reg[13]_i_1_n_9 ;
  wire \addr_reg[21]_i_1_n_0 ;
  wire \addr_reg[21]_i_1_n_1 ;
  wire \addr_reg[21]_i_1_n_10 ;
  wire \addr_reg[21]_i_1_n_11 ;
  wire \addr_reg[21]_i_1_n_12 ;
  wire \addr_reg[21]_i_1_n_13 ;
  wire \addr_reg[21]_i_1_n_14 ;
  wire \addr_reg[21]_i_1_n_15 ;
  wire \addr_reg[21]_i_1_n_2 ;
  wire \addr_reg[21]_i_1_n_3 ;
  wire \addr_reg[21]_i_1_n_4 ;
  wire \addr_reg[21]_i_1_n_5 ;
  wire \addr_reg[21]_i_1_n_6 ;
  wire \addr_reg[21]_i_1_n_7 ;
  wire \addr_reg[21]_i_1_n_8 ;
  wire \addr_reg[21]_i_1_n_9 ;
  wire \addr_reg[29]_i_1_n_0 ;
  wire \addr_reg[29]_i_1_n_1 ;
  wire \addr_reg[29]_i_1_n_10 ;
  wire \addr_reg[29]_i_1_n_11 ;
  wire \addr_reg[29]_i_1_n_12 ;
  wire \addr_reg[29]_i_1_n_13 ;
  wire \addr_reg[29]_i_1_n_14 ;
  wire \addr_reg[29]_i_1_n_15 ;
  wire \addr_reg[29]_i_1_n_2 ;
  wire \addr_reg[29]_i_1_n_3 ;
  wire \addr_reg[29]_i_1_n_4 ;
  wire \addr_reg[29]_i_1_n_5 ;
  wire \addr_reg[29]_i_1_n_6 ;
  wire \addr_reg[29]_i_1_n_7 ;
  wire \addr_reg[29]_i_1_n_8 ;
  wire \addr_reg[29]_i_1_n_9 ;
  wire \addr_reg[37]_i_1_n_0 ;
  wire \addr_reg[37]_i_1_n_1 ;
  wire \addr_reg[37]_i_1_n_10 ;
  wire \addr_reg[37]_i_1_n_11 ;
  wire \addr_reg[37]_i_1_n_12 ;
  wire \addr_reg[37]_i_1_n_13 ;
  wire \addr_reg[37]_i_1_n_14 ;
  wire \addr_reg[37]_i_1_n_15 ;
  wire \addr_reg[37]_i_1_n_2 ;
  wire \addr_reg[37]_i_1_n_3 ;
  wire \addr_reg[37]_i_1_n_4 ;
  wire \addr_reg[37]_i_1_n_5 ;
  wire \addr_reg[37]_i_1_n_6 ;
  wire \addr_reg[37]_i_1_n_7 ;
  wire \addr_reg[37]_i_1_n_8 ;
  wire \addr_reg[37]_i_1_n_9 ;
  wire \addr_reg[45]_i_1_n_0 ;
  wire \addr_reg[45]_i_1_n_1 ;
  wire \addr_reg[45]_i_1_n_10 ;
  wire \addr_reg[45]_i_1_n_11 ;
  wire \addr_reg[45]_i_1_n_12 ;
  wire \addr_reg[45]_i_1_n_13 ;
  wire \addr_reg[45]_i_1_n_14 ;
  wire \addr_reg[45]_i_1_n_15 ;
  wire \addr_reg[45]_i_1_n_2 ;
  wire \addr_reg[45]_i_1_n_3 ;
  wire \addr_reg[45]_i_1_n_4 ;
  wire \addr_reg[45]_i_1_n_5 ;
  wire \addr_reg[45]_i_1_n_6 ;
  wire \addr_reg[45]_i_1_n_7 ;
  wire \addr_reg[45]_i_1_n_8 ;
  wire \addr_reg[45]_i_1_n_9 ;
  wire \addr_reg[53]_i_1_n_0 ;
  wire \addr_reg[53]_i_1_n_1 ;
  wire \addr_reg[53]_i_1_n_10 ;
  wire \addr_reg[53]_i_1_n_11 ;
  wire \addr_reg[53]_i_1_n_12 ;
  wire \addr_reg[53]_i_1_n_13 ;
  wire \addr_reg[53]_i_1_n_14 ;
  wire \addr_reg[53]_i_1_n_15 ;
  wire \addr_reg[53]_i_1_n_2 ;
  wire \addr_reg[53]_i_1_n_3 ;
  wire \addr_reg[53]_i_1_n_4 ;
  wire \addr_reg[53]_i_1_n_5 ;
  wire \addr_reg[53]_i_1_n_6 ;
  wire \addr_reg[53]_i_1_n_7 ;
  wire \addr_reg[53]_i_1_n_8 ;
  wire \addr_reg[53]_i_1_n_9 ;
  wire \addr_reg[61]_i_1_n_0 ;
  wire \addr_reg[61]_i_1_n_1 ;
  wire \addr_reg[61]_i_1_n_10 ;
  wire \addr_reg[61]_i_1_n_11 ;
  wire \addr_reg[61]_i_1_n_12 ;
  wire \addr_reg[61]_i_1_n_13 ;
  wire \addr_reg[61]_i_1_n_14 ;
  wire \addr_reg[61]_i_1_n_15 ;
  wire \addr_reg[61]_i_1_n_2 ;
  wire \addr_reg[61]_i_1_n_3 ;
  wire \addr_reg[61]_i_1_n_4 ;
  wire \addr_reg[61]_i_1_n_5 ;
  wire \addr_reg[61]_i_1_n_6 ;
  wire \addr_reg[61]_i_1_n_7 ;
  wire \addr_reg[61]_i_1_n_8 ;
  wire \addr_reg[61]_i_1_n_9 ;
  wire \addr_reg[63]_i_2_n_14 ;
  wire \addr_reg[63]_i_2_n_15 ;
  wire \addr_reg[63]_i_2_n_7 ;
  wire awvalid_r_reg_0;
  wire [63:0]baseAddr;
  wire clear;
  wire clk;
  wire [3:0]final_burst_len;
  wire [3:0]final_burst_len0;
  wire inst_burst_cntr_n_1;
  wire inst_burst_cntr_n_2;
  wire inst_burst_cntr_n_3;
  wire inst_w_to_aw_cntr_n_0;
  wire inst_w_transaction_cntr_n_0;
  wire is_zero_r_reg;
  wire [63:0]m_axi_AWADDR;
  wire [3:0]m_axi_AWLEN;
  wire m_axi_AWREADY;
  wire m_axi_BVALID;
  wire [63:0]m_axi_WDATA;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire [3:0]num_transactions;
  wire [3:0]num_transactions0;
  wire \num_transactions[3]_i_2_n_0 ;
  wire req_done;
  wire [7:0]req_length;
  wire req_start;
  wire rst_n;
  wire [63:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_d1;
  wire wfirst_d10;
  wire wfirst_pulse;
  wire wfirst_pulse0;
  wire [7:1]\NLW_addr_reg[63]_i_2_CO_UNCONNECTED ;
  wire [7:2]\NLW_addr_reg[63]_i_2_O_UNCONNECTED ;
  wire NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED;
  wire [7:0]NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED;
  wire [7:0]NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED;
  wire [7:0]NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[0]_i_1 
       (.I0(baseAddr[0]),
        .I1(req_start),
        .I2(m_axi_AWADDR[0]),
        .O(\addr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_10 
       (.I0(baseAddr[6]),
        .I1(req_start),
        .I2(m_axi_AWADDR[6]),
        .O(\addr[13]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_2 
       (.I0(baseAddr[7]),
        .I1(req_start),
        .I2(m_axi_AWADDR[7]),
        .O(\addr[13]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_3 
       (.I0(baseAddr[13]),
        .I1(req_start),
        .I2(m_axi_AWADDR[13]),
        .O(\addr[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_4 
       (.I0(baseAddr[12]),
        .I1(req_start),
        .I2(m_axi_AWADDR[12]),
        .O(\addr[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_5 
       (.I0(baseAddr[11]),
        .I1(req_start),
        .I2(m_axi_AWADDR[11]),
        .O(\addr[13]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_6 
       (.I0(baseAddr[10]),
        .I1(req_start),
        .I2(m_axi_AWADDR[10]),
        .O(\addr[13]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_7 
       (.I0(baseAddr[9]),
        .I1(req_start),
        .I2(m_axi_AWADDR[9]),
        .O(\addr[13]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_i_8 
       (.I0(baseAddr[8]),
        .I1(req_start),
        .I2(m_axi_AWADDR[8]),
        .O(\addr[13]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \addr[13]_i_9 
       (.I0(m_axi_AWADDR[7]),
        .I1(baseAddr[7]),
        .I2(req_start),
        .O(\addr[13]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[1]_i_1 
       (.I0(baseAddr[1]),
        .I1(req_start),
        .I2(m_axi_AWADDR[1]),
        .O(\addr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_2 
       (.I0(baseAddr[21]),
        .I1(req_start),
        .I2(m_axi_AWADDR[21]),
        .O(\addr[21]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_3 
       (.I0(baseAddr[20]),
        .I1(req_start),
        .I2(m_axi_AWADDR[20]),
        .O(\addr[21]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_4 
       (.I0(baseAddr[19]),
        .I1(req_start),
        .I2(m_axi_AWADDR[19]),
        .O(\addr[21]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_5 
       (.I0(baseAddr[18]),
        .I1(req_start),
        .I2(m_axi_AWADDR[18]),
        .O(\addr[21]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_6 
       (.I0(baseAddr[17]),
        .I1(req_start),
        .I2(m_axi_AWADDR[17]),
        .O(\addr[21]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_7 
       (.I0(baseAddr[16]),
        .I1(req_start),
        .I2(m_axi_AWADDR[16]),
        .O(\addr[21]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_8 
       (.I0(baseAddr[15]),
        .I1(req_start),
        .I2(m_axi_AWADDR[15]),
        .O(\addr[21]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_i_9 
       (.I0(baseAddr[14]),
        .I1(req_start),
        .I2(m_axi_AWADDR[14]),
        .O(\addr[21]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_2 
       (.I0(baseAddr[29]),
        .I1(req_start),
        .I2(m_axi_AWADDR[29]),
        .O(\addr[29]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_3 
       (.I0(baseAddr[28]),
        .I1(req_start),
        .I2(m_axi_AWADDR[28]),
        .O(\addr[29]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_4 
       (.I0(baseAddr[27]),
        .I1(req_start),
        .I2(m_axi_AWADDR[27]),
        .O(\addr[29]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_5 
       (.I0(baseAddr[26]),
        .I1(req_start),
        .I2(m_axi_AWADDR[26]),
        .O(\addr[29]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_6 
       (.I0(baseAddr[25]),
        .I1(req_start),
        .I2(m_axi_AWADDR[25]),
        .O(\addr[29]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_7 
       (.I0(baseAddr[24]),
        .I1(req_start),
        .I2(m_axi_AWADDR[24]),
        .O(\addr[29]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_8 
       (.I0(baseAddr[23]),
        .I1(req_start),
        .I2(m_axi_AWADDR[23]),
        .O(\addr[29]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_i_9 
       (.I0(baseAddr[22]),
        .I1(req_start),
        .I2(m_axi_AWADDR[22]),
        .O(\addr[29]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[2]_i_1 
       (.I0(baseAddr[2]),
        .I1(req_start),
        .I2(m_axi_AWADDR[2]),
        .O(\addr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_2 
       (.I0(baseAddr[37]),
        .I1(req_start),
        .I2(m_axi_AWADDR[37]),
        .O(\addr[37]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_3 
       (.I0(baseAddr[36]),
        .I1(req_start),
        .I2(m_axi_AWADDR[36]),
        .O(\addr[37]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_4 
       (.I0(baseAddr[35]),
        .I1(req_start),
        .I2(m_axi_AWADDR[35]),
        .O(\addr[37]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_5 
       (.I0(baseAddr[34]),
        .I1(req_start),
        .I2(m_axi_AWADDR[34]),
        .O(\addr[37]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_6 
       (.I0(baseAddr[33]),
        .I1(req_start),
        .I2(m_axi_AWADDR[33]),
        .O(\addr[37]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_7 
       (.I0(baseAddr[32]),
        .I1(req_start),
        .I2(m_axi_AWADDR[32]),
        .O(\addr[37]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_8 
       (.I0(baseAddr[31]),
        .I1(req_start),
        .I2(m_axi_AWADDR[31]),
        .O(\addr[37]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[37]_i_9 
       (.I0(baseAddr[30]),
        .I1(req_start),
        .I2(m_axi_AWADDR[30]),
        .O(\addr[37]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[3]_i_1 
       (.I0(baseAddr[3]),
        .I1(req_start),
        .I2(m_axi_AWADDR[3]),
        .O(\addr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_2 
       (.I0(baseAddr[45]),
        .I1(req_start),
        .I2(m_axi_AWADDR[45]),
        .O(\addr[45]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_3 
       (.I0(baseAddr[44]),
        .I1(req_start),
        .I2(m_axi_AWADDR[44]),
        .O(\addr[45]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_4 
       (.I0(baseAddr[43]),
        .I1(req_start),
        .I2(m_axi_AWADDR[43]),
        .O(\addr[45]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_5 
       (.I0(baseAddr[42]),
        .I1(req_start),
        .I2(m_axi_AWADDR[42]),
        .O(\addr[45]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_6 
       (.I0(baseAddr[41]),
        .I1(req_start),
        .I2(m_axi_AWADDR[41]),
        .O(\addr[45]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_7 
       (.I0(baseAddr[40]),
        .I1(req_start),
        .I2(m_axi_AWADDR[40]),
        .O(\addr[45]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_8 
       (.I0(baseAddr[39]),
        .I1(req_start),
        .I2(m_axi_AWADDR[39]),
        .O(\addr[45]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[45]_i_9 
       (.I0(baseAddr[38]),
        .I1(req_start),
        .I2(m_axi_AWADDR[38]),
        .O(\addr[45]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[4]_i_1 
       (.I0(baseAddr[4]),
        .I1(req_start),
        .I2(m_axi_AWADDR[4]),
        .O(\addr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_2 
       (.I0(baseAddr[53]),
        .I1(req_start),
        .I2(m_axi_AWADDR[53]),
        .O(\addr[53]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_3 
       (.I0(baseAddr[52]),
        .I1(req_start),
        .I2(m_axi_AWADDR[52]),
        .O(\addr[53]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_4 
       (.I0(baseAddr[51]),
        .I1(req_start),
        .I2(m_axi_AWADDR[51]),
        .O(\addr[53]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_5 
       (.I0(baseAddr[50]),
        .I1(req_start),
        .I2(m_axi_AWADDR[50]),
        .O(\addr[53]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_6 
       (.I0(baseAddr[49]),
        .I1(req_start),
        .I2(m_axi_AWADDR[49]),
        .O(\addr[53]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_7 
       (.I0(baseAddr[48]),
        .I1(req_start),
        .I2(m_axi_AWADDR[48]),
        .O(\addr[53]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_8 
       (.I0(baseAddr[47]),
        .I1(req_start),
        .I2(m_axi_AWADDR[47]),
        .O(\addr[53]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[53]_i_9 
       (.I0(baseAddr[46]),
        .I1(req_start),
        .I2(m_axi_AWADDR[46]),
        .O(\addr[53]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_i_1 
       (.I0(baseAddr[5]),
        .I1(req_start),
        .I2(m_axi_AWADDR[5]),
        .O(\addr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_2 
       (.I0(baseAddr[61]),
        .I1(req_start),
        .I2(m_axi_AWADDR[61]),
        .O(\addr[61]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_3 
       (.I0(baseAddr[60]),
        .I1(req_start),
        .I2(m_axi_AWADDR[60]),
        .O(\addr[61]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_4 
       (.I0(baseAddr[59]),
        .I1(req_start),
        .I2(m_axi_AWADDR[59]),
        .O(\addr[61]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_5 
       (.I0(baseAddr[58]),
        .I1(req_start),
        .I2(m_axi_AWADDR[58]),
        .O(\addr[61]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_6 
       (.I0(baseAddr[57]),
        .I1(req_start),
        .I2(m_axi_AWADDR[57]),
        .O(\addr[61]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_7 
       (.I0(baseAddr[56]),
        .I1(req_start),
        .I2(m_axi_AWADDR[56]),
        .O(\addr[61]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_8 
       (.I0(baseAddr[55]),
        .I1(req_start),
        .I2(m_axi_AWADDR[55]),
        .O(\addr[61]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[61]_i_9 
       (.I0(baseAddr[54]),
        .I1(req_start),
        .I2(m_axi_AWADDR[54]),
        .O(\addr[61]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr[63]_i_1 
       (.I0(req_start),
        .I1(awvalid_r_reg_0),
        .I2(m_axi_AWREADY),
        .O(\addr[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_3 
       (.I0(baseAddr[63]),
        .I1(req_start),
        .I2(m_axi_AWADDR[63]),
        .O(\addr[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_4 
       (.I0(baseAddr[62]),
        .I1(req_start),
        .I2(m_axi_AWADDR[62]),
        .O(\addr[63]_i_4_n_0 ));
  FDRE \addr_reg[0] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(m_axi_AWADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_11 ),
        .Q(m_axi_AWADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_10 ),
        .Q(m_axi_AWADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_9 ),
        .Q(m_axi_AWADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_8 ),
        .Q(m_axi_AWADDR[13]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[13]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[13]_i_1_n_0 ,\addr_reg[13]_i_1_n_1 ,\addr_reg[13]_i_1_n_2 ,\addr_reg[13]_i_1_n_3 ,\addr_reg[13]_i_1_n_4 ,\addr_reg[13]_i_1_n_5 ,\addr_reg[13]_i_1_n_6 ,\addr_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[13]_i_2_n_0 ,1'b0}),
        .O({\addr_reg[13]_i_1_n_8 ,\addr_reg[13]_i_1_n_9 ,\addr_reg[13]_i_1_n_10 ,\addr_reg[13]_i_1_n_11 ,\addr_reg[13]_i_1_n_12 ,\addr_reg[13]_i_1_n_13 ,\addr_reg[13]_i_1_n_14 ,\addr_reg[13]_i_1_n_15 }),
        .S({\addr[13]_i_3_n_0 ,\addr[13]_i_4_n_0 ,\addr[13]_i_5_n_0 ,\addr[13]_i_6_n_0 ,\addr[13]_i_7_n_0 ,\addr[13]_i_8_n_0 ,\addr[13]_i_9_n_0 ,\addr[13]_i_10_n_0 }));
  FDRE \addr_reg[14] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_15 ),
        .Q(m_axi_AWADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[15] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_14 ),
        .Q(m_axi_AWADDR[15]),
        .R(1'b0));
  FDRE \addr_reg[16] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_13 ),
        .Q(m_axi_AWADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[17] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_12 ),
        .Q(m_axi_AWADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[18] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_11 ),
        .Q(m_axi_AWADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[19] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_10 ),
        .Q(m_axi_AWADDR[19]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[1]_i_1_n_0 ),
        .Q(m_axi_AWADDR[1]),
        .R(1'b0));
  FDRE \addr_reg[20] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_9 ),
        .Q(m_axi_AWADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[21] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[21]_i_1_n_8 ),
        .Q(m_axi_AWADDR[21]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[21]_i_1 
       (.CI(\addr_reg[13]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[21]_i_1_n_0 ,\addr_reg[21]_i_1_n_1 ,\addr_reg[21]_i_1_n_2 ,\addr_reg[21]_i_1_n_3 ,\addr_reg[21]_i_1_n_4 ,\addr_reg[21]_i_1_n_5 ,\addr_reg[21]_i_1_n_6 ,\addr_reg[21]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[21]_i_1_n_8 ,\addr_reg[21]_i_1_n_9 ,\addr_reg[21]_i_1_n_10 ,\addr_reg[21]_i_1_n_11 ,\addr_reg[21]_i_1_n_12 ,\addr_reg[21]_i_1_n_13 ,\addr_reg[21]_i_1_n_14 ,\addr_reg[21]_i_1_n_15 }),
        .S({\addr[21]_i_2_n_0 ,\addr[21]_i_3_n_0 ,\addr[21]_i_4_n_0 ,\addr[21]_i_5_n_0 ,\addr[21]_i_6_n_0 ,\addr[21]_i_7_n_0 ,\addr[21]_i_8_n_0 ,\addr[21]_i_9_n_0 }));
  FDRE \addr_reg[22] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_15 ),
        .Q(m_axi_AWADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[23] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_14 ),
        .Q(m_axi_AWADDR[23]),
        .R(1'b0));
  FDRE \addr_reg[24] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_13 ),
        .Q(m_axi_AWADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[25] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_12 ),
        .Q(m_axi_AWADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[26] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_11 ),
        .Q(m_axi_AWADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[27] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_10 ),
        .Q(m_axi_AWADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[28] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_9 ),
        .Q(m_axi_AWADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[29] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[29]_i_1_n_8 ),
        .Q(m_axi_AWADDR[29]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[29]_i_1 
       (.CI(\addr_reg[21]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[29]_i_1_n_0 ,\addr_reg[29]_i_1_n_1 ,\addr_reg[29]_i_1_n_2 ,\addr_reg[29]_i_1_n_3 ,\addr_reg[29]_i_1_n_4 ,\addr_reg[29]_i_1_n_5 ,\addr_reg[29]_i_1_n_6 ,\addr_reg[29]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[29]_i_1_n_8 ,\addr_reg[29]_i_1_n_9 ,\addr_reg[29]_i_1_n_10 ,\addr_reg[29]_i_1_n_11 ,\addr_reg[29]_i_1_n_12 ,\addr_reg[29]_i_1_n_13 ,\addr_reg[29]_i_1_n_14 ,\addr_reg[29]_i_1_n_15 }),
        .S({\addr[29]_i_2_n_0 ,\addr[29]_i_3_n_0 ,\addr[29]_i_4_n_0 ,\addr[29]_i_5_n_0 ,\addr[29]_i_6_n_0 ,\addr[29]_i_7_n_0 ,\addr[29]_i_8_n_0 ,\addr[29]_i_9_n_0 }));
  FDRE \addr_reg[2] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(m_axi_AWADDR[2]),
        .R(1'b0));
  FDRE \addr_reg[30] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_15 ),
        .Q(m_axi_AWADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[31] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_14 ),
        .Q(m_axi_AWADDR[31]),
        .R(1'b0));
  FDRE \addr_reg[32] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_13 ),
        .Q(m_axi_AWADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[33] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_12 ),
        .Q(m_axi_AWADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[34] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_11 ),
        .Q(m_axi_AWADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[35] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_10 ),
        .Q(m_axi_AWADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[36] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_9 ),
        .Q(m_axi_AWADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[37] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[37]_i_1_n_8 ),
        .Q(m_axi_AWADDR[37]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[37]_i_1 
       (.CI(\addr_reg[29]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[37]_i_1_n_0 ,\addr_reg[37]_i_1_n_1 ,\addr_reg[37]_i_1_n_2 ,\addr_reg[37]_i_1_n_3 ,\addr_reg[37]_i_1_n_4 ,\addr_reg[37]_i_1_n_5 ,\addr_reg[37]_i_1_n_6 ,\addr_reg[37]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[37]_i_1_n_8 ,\addr_reg[37]_i_1_n_9 ,\addr_reg[37]_i_1_n_10 ,\addr_reg[37]_i_1_n_11 ,\addr_reg[37]_i_1_n_12 ,\addr_reg[37]_i_1_n_13 ,\addr_reg[37]_i_1_n_14 ,\addr_reg[37]_i_1_n_15 }),
        .S({\addr[37]_i_2_n_0 ,\addr[37]_i_3_n_0 ,\addr[37]_i_4_n_0 ,\addr[37]_i_5_n_0 ,\addr[37]_i_6_n_0 ,\addr[37]_i_7_n_0 ,\addr[37]_i_8_n_0 ,\addr[37]_i_9_n_0 }));
  FDRE \addr_reg[38] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_15 ),
        .Q(m_axi_AWADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[39] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_14 ),
        .Q(m_axi_AWADDR[39]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(m_axi_AWADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[40] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_13 ),
        .Q(m_axi_AWADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[41] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_12 ),
        .Q(m_axi_AWADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[42] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_11 ),
        .Q(m_axi_AWADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[43] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_10 ),
        .Q(m_axi_AWADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[44] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_9 ),
        .Q(m_axi_AWADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[45] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[45]_i_1_n_8 ),
        .Q(m_axi_AWADDR[45]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[45]_i_1 
       (.CI(\addr_reg[37]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[45]_i_1_n_0 ,\addr_reg[45]_i_1_n_1 ,\addr_reg[45]_i_1_n_2 ,\addr_reg[45]_i_1_n_3 ,\addr_reg[45]_i_1_n_4 ,\addr_reg[45]_i_1_n_5 ,\addr_reg[45]_i_1_n_6 ,\addr_reg[45]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[45]_i_1_n_8 ,\addr_reg[45]_i_1_n_9 ,\addr_reg[45]_i_1_n_10 ,\addr_reg[45]_i_1_n_11 ,\addr_reg[45]_i_1_n_12 ,\addr_reg[45]_i_1_n_13 ,\addr_reg[45]_i_1_n_14 ,\addr_reg[45]_i_1_n_15 }),
        .S({\addr[45]_i_2_n_0 ,\addr[45]_i_3_n_0 ,\addr[45]_i_4_n_0 ,\addr[45]_i_5_n_0 ,\addr[45]_i_6_n_0 ,\addr[45]_i_7_n_0 ,\addr[45]_i_8_n_0 ,\addr[45]_i_9_n_0 }));
  FDRE \addr_reg[46] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_15 ),
        .Q(m_axi_AWADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[47] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_14 ),
        .Q(m_axi_AWADDR[47]),
        .R(1'b0));
  FDRE \addr_reg[48] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_13 ),
        .Q(m_axi_AWADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[49] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_12 ),
        .Q(m_axi_AWADDR[49]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[4]_i_1_n_0 ),
        .Q(m_axi_AWADDR[4]),
        .R(1'b0));
  FDRE \addr_reg[50] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_11 ),
        .Q(m_axi_AWADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[51] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_10 ),
        .Q(m_axi_AWADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[52] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_9 ),
        .Q(m_axi_AWADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[53] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[53]_i_1_n_8 ),
        .Q(m_axi_AWADDR[53]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[53]_i_1 
       (.CI(\addr_reg[45]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[53]_i_1_n_0 ,\addr_reg[53]_i_1_n_1 ,\addr_reg[53]_i_1_n_2 ,\addr_reg[53]_i_1_n_3 ,\addr_reg[53]_i_1_n_4 ,\addr_reg[53]_i_1_n_5 ,\addr_reg[53]_i_1_n_6 ,\addr_reg[53]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[53]_i_1_n_8 ,\addr_reg[53]_i_1_n_9 ,\addr_reg[53]_i_1_n_10 ,\addr_reg[53]_i_1_n_11 ,\addr_reg[53]_i_1_n_12 ,\addr_reg[53]_i_1_n_13 ,\addr_reg[53]_i_1_n_14 ,\addr_reg[53]_i_1_n_15 }),
        .S({\addr[53]_i_2_n_0 ,\addr[53]_i_3_n_0 ,\addr[53]_i_4_n_0 ,\addr[53]_i_5_n_0 ,\addr[53]_i_6_n_0 ,\addr[53]_i_7_n_0 ,\addr[53]_i_8_n_0 ,\addr[53]_i_9_n_0 }));
  FDRE \addr_reg[54] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_15 ),
        .Q(m_axi_AWADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[55] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_14 ),
        .Q(m_axi_AWADDR[55]),
        .R(1'b0));
  FDRE \addr_reg[56] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_13 ),
        .Q(m_axi_AWADDR[56]),
        .R(1'b0));
  FDRE \addr_reg[57] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_12 ),
        .Q(m_axi_AWADDR[57]),
        .R(1'b0));
  FDRE \addr_reg[58] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_11 ),
        .Q(m_axi_AWADDR[58]),
        .R(1'b0));
  FDRE \addr_reg[59] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_10 ),
        .Q(m_axi_AWADDR[59]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[5]_i_1_n_0 ),
        .Q(m_axi_AWADDR[5]),
        .R(1'b0));
  FDRE \addr_reg[60] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_9 ),
        .Q(m_axi_AWADDR[60]),
        .R(1'b0));
  FDRE \addr_reg[61] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[61]_i_1_n_8 ),
        .Q(m_axi_AWADDR[61]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[61]_i_1 
       (.CI(\addr_reg[53]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[61]_i_1_n_0 ,\addr_reg[61]_i_1_n_1 ,\addr_reg[61]_i_1_n_2 ,\addr_reg[61]_i_1_n_3 ,\addr_reg[61]_i_1_n_4 ,\addr_reg[61]_i_1_n_5 ,\addr_reg[61]_i_1_n_6 ,\addr_reg[61]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[61]_i_1_n_8 ,\addr_reg[61]_i_1_n_9 ,\addr_reg[61]_i_1_n_10 ,\addr_reg[61]_i_1_n_11 ,\addr_reg[61]_i_1_n_12 ,\addr_reg[61]_i_1_n_13 ,\addr_reg[61]_i_1_n_14 ,\addr_reg[61]_i_1_n_15 }),
        .S({\addr[61]_i_2_n_0 ,\addr[61]_i_3_n_0 ,\addr[61]_i_4_n_0 ,\addr[61]_i_5_n_0 ,\addr[61]_i_6_n_0 ,\addr[61]_i_7_n_0 ,\addr[61]_i_8_n_0 ,\addr[61]_i_9_n_0 }));
  FDRE \addr_reg[62] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_15 ),
        .Q(m_axi_AWADDR[62]),
        .R(1'b0));
  FDRE \addr_reg[63] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_14 ),
        .Q(m_axi_AWADDR[63]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[63]_i_2 
       (.CI(\addr_reg[61]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[63]_i_2_CO_UNCONNECTED [7:1],\addr_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_addr_reg[63]_i_2_O_UNCONNECTED [7:2],\addr_reg[63]_i_2_n_14 ,\addr_reg[63]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[63]_i_3_n_0 ,\addr[63]_i_4_n_0 }));
  FDRE \addr_reg[6] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_15 ),
        .Q(m_axi_AWADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_14 ),
        .Q(m_axi_AWADDR[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_13 ),
        .Q(m_axi_AWADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[13]_i_1_n_12 ),
        .Q(m_axi_AWADDR[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    awvalid_r_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_w_to_aw_cntr_n_0),
        .Q(awvalid_r_reg_0),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \final_burst_len[0]_i_1 
       (.I0(req_length[0]),
        .O(final_burst_len0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(req_length[1]),
        .I1(req_length[0]),
        .O(final_burst_len0[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \final_burst_len[2]_i_1 
       (.I0(req_length[2]),
        .I1(req_length[0]),
        .I2(req_length[1]),
        .O(final_burst_len0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \final_burst_len[3]_i_1 
       (.I0(req_length[3]),
        .I1(req_length[1]),
        .I2(req_length[0]),
        .I3(req_length[2]),
        .O(final_burst_len0[3]));
  FDRE \final_burst_len_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(final_burst_len0[0]),
        .Q(final_burst_len[0]),
        .R(1'b0));
  FDRE \final_burst_len_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(final_burst_len0[1]),
        .Q(final_burst_len[1]),
        .R(1'b0));
  FDRE \final_burst_len_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(final_burst_len0[2]),
        .Q(final_burst_len[2]),
        .R(1'b0));
  FDRE \final_burst_len_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(final_burst_len0[3]),
        .Q(final_burst_len[3]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0 inst_aw_transaction_cntr
       (.Q(final_burst_len),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[3]_0 (num_transactions),
        .is_zero_r_reg_0(awvalid_r_reg_0),
        .m_axi_AWLEN(m_axi_AWLEN),
        .m_axi_AWLEN_0_sp_1(inst_burst_cntr_n_2),
        .m_axi_AWREADY(m_axi_AWREADY),
        .start(start));
  (* AXIS_DATA_WIDTH = "84" *) 
  (* AXIS_FINAL_DATA_WIDTH = "84" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_SYNC_STAGES = "2" *) 
  (* CLOCKING_MODE = "common_clock" *) 
  (* ECC_MODE = "no_ecc" *) 
  (* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) 
  (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) 
  (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
  (* EN_ALMOST_FULL_INT = "1'b0" *) 
  (* EN_DATA_VALID_INT = "1'b1" *) 
  (* FIFO_DEPTH = "16" *) 
  (* FIFO_MEMORY_TYPE = "distributed" *) 
  (* LOG_DEPTH_AXIS = "4" *) 
  (* PACKET_FIFO = "false" *) 
  (* PKT_SIZE_LT8 = "1'b0" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "1" *) 
  (* P_PKT_MODE = "0" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* TDATA_OFFSET = "64" *) 
  (* TDATA_WIDTH = "64" *) 
  (* TDEST_OFFSET = "82" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "81" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "80" *) 
  (* TSTRB_OFFSET = "72" *) 
  (* TUSER_MAX_WIDTH = "4013" *) 
  (* TUSER_OFFSET = "83" *) 
  (* TUSER_WIDTH = "1" *) 
  (* USE_ADV_FEATURES = "1000" *) 
  (* USE_ADV_FEATURES_INT = "825241648" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis inst_axis_data_fifo
       (.almost_empty_axis(NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED),
        .almost_full_axis(NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED),
        .dbiterr_axis(NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED),
        .injectdbiterr_axis(1'b0),
        .injectsbiterr_axis(1'b0),
        .m_aclk(clk),
        .m_axis_tdata(m_axi_WDATA),
        .m_axis_tdest(NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED[7:0]),
        .m_axis_tlast(NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axi_WREADY),
        .m_axis_tstrb(NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED[7:0]),
        .m_axis_tuser(NLW_inst_axis_data_fifo_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axi_WVALID),
        .prog_empty_axis(NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED),
        .prog_full_axis(NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED),
        .rd_data_count_axis(NLW_inst_axis_data_fifo_rd_data_count_axis_UNCONNECTED[7:0]),
        .s_aclk(clk),
        .s_aresetn(rst_n),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tuser(1'b0),
        .s_axis_tvalid(s_axis_tvalid),
        .sbiterr_axis(NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED),
        .wr_data_count_axis(NLW_inst_axis_data_fifo_wr_data_count_axis_UNCONNECTED[7:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0 inst_b_transaction_cntr
       (.Q(num_transactions),
        .clear(clear),
        .clk(clk),
        .m_axi_BVALID(m_axi_BVALID),
        .req_done(req_done),
        .rst_n(rst_n),
        .start(start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter inst_burst_cntr
       (.E(inst_burst_cntr_n_1),
        .Q(final_burst_len),
        .clear(clear),
        .clk(clk),
        .is_zero_r_reg_0(is_zero_r_reg),
        .is_zero_r_reg_1(num_transactions),
        .m_axi_WREADY(m_axi_WREADY),
        .m_axi_WVALID(m_axi_WVALID),
        .\num_transactions_reg[0] (inst_burst_cntr_n_2),
        .start(start),
        .w_almost_final_transaction(w_almost_final_transaction),
        .wfirst(wfirst),
        .wfirst_reg(inst_burst_cntr_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1 inst_w_to_aw_cntr
       (.awvalid_r_reg(inst_w_to_aw_cntr_n_0),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[1]_0 (awvalid_r_reg_0),
        .m_axi_AWREADY(m_axi_AWREADY),
        .wfirst_pulse(wfirst_pulse));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_2 inst_w_transaction_cntr
       (.E(inst_burst_cntr_n_1),
        .Q(num_transactions),
        .clear(clear),
        .clk(clk),
        .\count_r_reg[1]_0 (inst_w_transaction_cntr_n_0),
        .start(start));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \num_transactions[0]_i_1 
       (.I0(req_length[4]),
        .I1(req_length[2]),
        .I2(req_length[0]),
        .I3(req_length[1]),
        .I4(req_length[3]),
        .O(num_transactions0[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \num_transactions[1]_i_1 
       (.I0(req_length[5]),
        .I1(req_length[3]),
        .I2(req_length[1]),
        .I3(req_length[0]),
        .I4(req_length[2]),
        .I5(req_length[4]),
        .O(num_transactions0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \num_transactions[2]_i_1 
       (.I0(req_length[6]),
        .I1(\num_transactions[3]_i_2_n_0 ),
        .O(num_transactions0[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \num_transactions[3]_i_1 
       (.I0(req_length[6]),
        .I1(\num_transactions[3]_i_2_n_0 ),
        .I2(req_length[7]),
        .O(num_transactions0[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \num_transactions[3]_i_2 
       (.I0(req_length[4]),
        .I1(req_length[2]),
        .I2(req_length[0]),
        .I3(req_length[1]),
        .I4(req_length[3]),
        .I5(req_length[5]),
        .O(\num_transactions[3]_i_2_n_0 ));
  FDRE \num_transactions_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(num_transactions0[0]),
        .Q(num_transactions[0]),
        .R(1'b0));
  FDRE \num_transactions_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(num_transactions0[1]),
        .Q(num_transactions[1]),
        .R(1'b0));
  FDRE \num_transactions_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(num_transactions0[2]),
        .Q(num_transactions[2]),
        .R(1'b0));
  FDRE \num_transactions_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(num_transactions0[3]),
        .Q(num_transactions[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    start_reg
       (.C(clk),
        .CE(1'b1),
        .D(req_start),
        .Q(start),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    w_almost_final_transaction_reg
       (.C(clk),
        .CE(1'b1),
        .D(inst_w_transaction_cntr_n_0),
        .Q(w_almost_final_transaction),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    wfirst_d1_i_1
       (.I0(wfirst),
        .I1(m_axi_WVALID),
        .O(wfirst_d10));
  FDRE #(
    .INIT(1'b0)) 
    wfirst_d1_reg
       (.C(clk),
        .CE(1'b1),
        .D(wfirst_d10),
        .Q(wfirst_d1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h08)) 
    wfirst_pulse_i_1
       (.I0(m_axi_WVALID),
        .I1(wfirst),
        .I2(wfirst_d1),
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
        .D(inst_burst_cntr_n_3),
        .Q(wfirst),
        .S(clear));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "4" *) (* INIT = "0" *) 
(* INIT_SYNC_FF = "1" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0
   (leaving_empty0,
    Q,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_wr_en_i,
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ,
    clr_full,
    ram_empty_i,
    \count_value_i_reg[0]_1 ,
    wr_clk);
  output leaving_empty0;
  output [3:0]Q;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  output \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  input [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_wr_en_i;
  input \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  input clr_full;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[0]_1 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [3:0]Q;
  wire clr_full;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[0]_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ;
  wire \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ;
  wire [3:0]\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_wr_en_i;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h000000000FFF0088)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_i),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I5(clr_full),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg ));
  LUT6 #(
    .INIT(64'hFABAFBBBFBBBFBBB)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_1 
       (.I0(clr_full),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 ),
        .I2(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I3(leaving_empty0),
        .I4(going_full1),
        .I5(ram_wr_en_i),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_3 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ),
        .O(leaving_empty0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_4 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [3]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ),
        .O(going_full1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [0]),
        .I2(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_i_6_n_0 ));
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_3
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    E,
    ram_empty_i,
    \gen_pntr_flags_cc.ram_empty_i_reg_0 ,
    \count_value_i_reg[3]_0 ,
    wr_clk);
  output ram_empty_i0;
  output [3:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input [0:0]E;
  input ram_empty_i;
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
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire [3:0]\gen_pntr_flags_cc.ram_empty_i_reg_0 ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
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
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(E),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1
   (Q,
    \count_value_i_reg[1]_0 ,
    rd_en,
    \count_value_i_reg[0]_0 ,
    E,
    wr_clk);
  output [3:0]Q;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input [0:0]\count_value_i_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [3:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_4
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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

(* AXIS_DATA_WIDTH = "84" *) (* AXIS_FINAL_DATA_WIDTH = "84" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "distributed" *) (* LOG_DEPTH_AXIS = "4" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "1" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "64" *) (* TDATA_WIDTH = "64" *) 
(* TDEST_OFFSET = "82" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "81" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "80" *) (* TSTRB_OFFSET = "72" *) 
(* TUSER_MAX_WIDTH = "4013" *) (* TUSER_OFFSET = "83" *) (* TUSER_WIDTH = "1" *) 
(* USE_ADV_FEATURES = "1000" *) (* USE_ADV_FEATURES_INT = "825241648" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* XPM_MODULE = "TRUE" *) (* dont_touch = "true" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_axis
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
  input [63:0]s_axis_tdata;
  input [7:0]s_axis_tstrb;
  input [7:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [63:0]m_axis_tdata;
  output [7:0]m_axis_tstrb;
  output [7:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output prog_full_axis;
  output [7:0]wr_data_count_axis;
  output almost_full_axis;
  output prog_empty_axis;
  output [7:0]rd_data_count_axis;
  output almost_empty_axis;
  input injectsbiterr_axis;
  input injectdbiterr_axis;
  output sbiterr_axis;
  output dbiterr_axis;

  wire \<const0> ;
  wire \gaxis_rst_sync.xpm_cdc_sync_rst_inst_i_1_n_0 ;
  wire [63:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [7:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [7:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [63:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [7:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [7:0]s_axis_tstrb;
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
  wire [7:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [7:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty_axis = \<const0> ;
  assign almost_full_axis = \<const0> ;
  assign dbiterr_axis = \<const0> ;
  assign prog_empty_axis = \<const0> ;
  assign prog_full_axis = \<const0> ;
  assign rd_data_count_axis[7] = \<const0> ;
  assign rd_data_count_axis[6] = \<const0> ;
  assign rd_data_count_axis[5] = \<const0> ;
  assign rd_data_count_axis[4] = \<const0> ;
  assign rd_data_count_axis[3] = \<const0> ;
  assign rd_data_count_axis[2] = \<const0> ;
  assign rd_data_count_axis[1] = \<const0> ;
  assign rd_data_count_axis[0] = \<const0> ;
  assign sbiterr_axis = \<const0> ;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst \gaxis_rst_sync.xpm_cdc_sync_rst_inst 
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
  (* FIFO_MEMORY_TYPE = "1" *) 
  (* FIFO_MEM_TYPE = "1" *) 
  (* FIFO_READ_DEPTH = "16" *) 
  (* FIFO_READ_LATENCY = "0" *) 
  (* FIFO_SIZE = "1344" *) 
  (* FIFO_WRITE_DEPTH = "16" *) 
  (* FULL_RESET_VALUE = "1" *) 
  (* FULL_RST_VAL = "1'b1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "3" *) 
  (* PE_THRESH_MAX = "11" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "9" *) 
  (* PF_THRESH_MAX = "11" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "5" *) 
  (* PROG_FULL_THRESH = "11" *) 
  (* RD_DATA_COUNT_WIDTH = "8" *) 
  (* RD_DC_WIDTH_EXT = "5" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "4" *) 
  (* READ_DATA_WIDTH = "84" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "84" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "7" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base xpm_fifo_base_inst
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
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(xpm_fifo_base_inst_i_1_n_0),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst_axis),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(s_aclk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[7:0]),
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
(* DOUT_RESET_VALUE = "" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0001000000000000" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b1" *) (* EN_OF = "1'b0" *) (* EN_PE = "1'b0" *) 
(* EN_PF = "1'b0" *) (* EN_RDC = "1'b0" *) (* EN_UF = "1'b0" *) 
(* EN_WACK = "1'b0" *) (* EN_WDC = "1'b0" *) (* FG_EQ_ASYM_DOUT = "1'b0" *) 
(* FIFO_MEMORY_TYPE = "1" *) (* FIFO_MEM_TYPE = "1" *) (* FIFO_READ_DEPTH = "16" *) 
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "1344" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "9" *) 
(* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "84" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "84" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "7" *) (* XPM_MODULE = "TRUE" *) 
(* both_stages_valid = "3" *) (* invalid = "0" *) (* keep_hierarchy = "soft" *) 
(* stage1_valid = "2" *) (* stage2_valid = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
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
  input [83:0]din;
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
  output [83:0]dout;
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
  wire clr_full;
  wire [3:0]count_value_i__0;
  wire [1:0]curr_fwft_state;
  wire data_valid;
  wire data_valid_fwft1;
  wire [83:0]din;
  wire [83:0]dout;
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
  wire [3:0]rd_pntr_ext;
  wire rdp_inst_n_5;
  wire rdp_inst_n_6;
  wire rdp_inst_n_7;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
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
  wire [83:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign dbiterr = \<const0> ;
  assign empty = \<const0> ;
  assign full = \<const0> ;
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
        .D(rdp_inst_n_5),
        .Q(\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rdp_inst_n_7),
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
  (* ADDR_WIDTH_A = "4" *) 
  (* ADDR_WIDTH_B = "4" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "84" *) 
  (* BYTE_WRITE_WIDTH_B = "84" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "1344" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "84" *) 
  (* P_MIN_WIDTH_DATA_A = "84" *) 
  (* P_MIN_WIDTH_DATA_B = "84" *) 
  (* P_MIN_WIDTH_DATA_ECC = "84" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "84" *) 
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
  (* P_WIDTH_COL_WRITE_A = "84" *) 
  (* P_WIDTH_COL_WRITE_B = "84" *) 
  (* READ_DATA_WIDTH_A = "84" *) 
  (* READ_DATA_WIDTH_B = "84" *) 
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
  (* WRITE_DATA_WIDTH_A = "84" *) 
  (* WRITE_DATA_WIDTH_B = "84" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "84" *) 
  (* rstb_loop_iter = "84" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [83:0]),
        .doutb(dout),
        .ena(ram_wr_en_i),
        .enb(rdp_inst_n_6),
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
        .wea(1'b0),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0 rdp_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdp_inst_n_6),
        .Q(rd_pntr_ext),
        .clr_full(clr_full),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[0]_1 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg (rdp_inst_n_5),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0 (rdp_inst_n_7),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1 (wr_pntr_ext),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_2 (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.gen_full_rst_val.ram_full_n_reg (count_value_i__0),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_wr_en_i(ram_wr_en_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1 rdpp1_inst
       (.E(rdp_inst_n_6),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .clr_full(clr_full),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized0_3 wrp_inst
       (.E(ram_wr_en_i),
        .Q(wr_pntr_ext),
        .\count_value_i_reg[3]_0 (xpm_fifo_rst_inst_n_1),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdp_inst_n_6),
        .\gen_pntr_flags_cc.ram_empty_i_reg_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3}),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized1_4 wrpp1_inst
       (.E(ram_wr_en_i),
        .Q(count_value_i__0),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .wr_clk(wr_clk));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst xpm_fifo_rst_inst
       (.E(ram_wr_en_i),
        .Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[3] (\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_n_0 ),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
   (E,
    Q,
    rst,
    wr_en,
    \count_value_i_reg[3] ,
    rst_d1,
    wr_clk);
  output [0:0]E;
  output [0:0]Q;
  input rst;
  input wr_en;
  input \count_value_i_reg[3] ;
  input rst_d1;
  input wr_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire \count_value_i_reg[3] ;
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
        .I1(\count_value_i_reg[3] ),
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

(* ADDR_WIDTH_A = "4" *) (* ADDR_WIDTH_B = "4" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "84" *) (* BYTE_WRITE_WIDTH_B = "84" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "1344" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) (* P_MIN_WIDTH_DATA = "84" *) 
(* P_MIN_WIDTH_DATA_A = "84" *) (* P_MIN_WIDTH_DATA_B = "84" *) (* P_MIN_WIDTH_DATA_ECC = "84" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "84" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "84" *) 
(* P_WIDTH_COL_WRITE_B = "84" *) (* READ_DATA_WIDTH_A = "84" *) (* READ_DATA_WIDTH_B = "84" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "84" *) (* WRITE_DATA_WIDTH_B = "84" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "84" *) (* rstb_loop_iter = "84" *) 
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
  input [3:0]addra;
  input [83:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [83:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [83:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [83:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [83:0]dina;
  wire [83:0]doutb;
  wire ena;
  wire enb;
  wire [83:0]\gen_rd_b.doutb_reg ;
  wire [83:0]\gen_rd_b.doutb_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
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
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[0] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [0]),
        .Q(\gen_rd_b.doutb_reg [0]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[10] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [10]),
        .Q(\gen_rd_b.doutb_reg [10]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[11] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [11]),
        .Q(\gen_rd_b.doutb_reg [11]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[12] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [12]),
        .Q(\gen_rd_b.doutb_reg [12]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[13] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [13]),
        .Q(\gen_rd_b.doutb_reg [13]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[14] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [14]),
        .Q(\gen_rd_b.doutb_reg [14]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[15] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [15]),
        .Q(\gen_rd_b.doutb_reg [15]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[16] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [16]),
        .Q(\gen_rd_b.doutb_reg [16]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[17] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [17]),
        .Q(\gen_rd_b.doutb_reg [17]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[18] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [18]),
        .Q(\gen_rd_b.doutb_reg [18]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[19] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [19]),
        .Q(\gen_rd_b.doutb_reg [19]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[1] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [1]),
        .Q(\gen_rd_b.doutb_reg [1]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[20] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [20]),
        .Q(\gen_rd_b.doutb_reg [20]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[21] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [21]),
        .Q(\gen_rd_b.doutb_reg [21]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[22] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [22]),
        .Q(\gen_rd_b.doutb_reg [22]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[23] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [23]),
        .Q(\gen_rd_b.doutb_reg [23]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[24] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [24]),
        .Q(\gen_rd_b.doutb_reg [24]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[25] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [25]),
        .Q(\gen_rd_b.doutb_reg [25]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[26] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [26]),
        .Q(\gen_rd_b.doutb_reg [26]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[27] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [27]),
        .Q(\gen_rd_b.doutb_reg [27]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[28] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [28]),
        .Q(\gen_rd_b.doutb_reg [28]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[29] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [29]),
        .Q(\gen_rd_b.doutb_reg [29]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[2] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [2]),
        .Q(\gen_rd_b.doutb_reg [2]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[30] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [30]),
        .Q(\gen_rd_b.doutb_reg [30]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[31] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [31]),
        .Q(\gen_rd_b.doutb_reg [31]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[32] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [32]),
        .Q(\gen_rd_b.doutb_reg [32]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[33] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [33]),
        .Q(\gen_rd_b.doutb_reg [33]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[34] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [34]),
        .Q(\gen_rd_b.doutb_reg [34]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[35] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [35]),
        .Q(\gen_rd_b.doutb_reg [35]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[36] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [36]),
        .Q(\gen_rd_b.doutb_reg [36]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[37] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [37]),
        .Q(\gen_rd_b.doutb_reg [37]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[38] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [38]),
        .Q(\gen_rd_b.doutb_reg [38]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[39] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [39]),
        .Q(\gen_rd_b.doutb_reg [39]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[3] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [3]),
        .Q(\gen_rd_b.doutb_reg [3]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[40] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [40]),
        .Q(\gen_rd_b.doutb_reg [40]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[41] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [41]),
        .Q(\gen_rd_b.doutb_reg [41]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[42] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [42]),
        .Q(\gen_rd_b.doutb_reg [42]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[43] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [43]),
        .Q(\gen_rd_b.doutb_reg [43]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[44] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [44]),
        .Q(\gen_rd_b.doutb_reg [44]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[45] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [45]),
        .Q(\gen_rd_b.doutb_reg [45]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[46] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [46]),
        .Q(\gen_rd_b.doutb_reg [46]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[47] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [47]),
        .Q(\gen_rd_b.doutb_reg [47]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[48] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [48]),
        .Q(\gen_rd_b.doutb_reg [48]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[49] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [49]),
        .Q(\gen_rd_b.doutb_reg [49]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[4] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [4]),
        .Q(\gen_rd_b.doutb_reg [4]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[50] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [50]),
        .Q(\gen_rd_b.doutb_reg [50]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[51] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [51]),
        .Q(\gen_rd_b.doutb_reg [51]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[52] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [52]),
        .Q(\gen_rd_b.doutb_reg [52]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[53] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [53]),
        .Q(\gen_rd_b.doutb_reg [53]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[54] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [54]),
        .Q(\gen_rd_b.doutb_reg [54]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[55] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [55]),
        .Q(\gen_rd_b.doutb_reg [55]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[56] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [56]),
        .Q(\gen_rd_b.doutb_reg [56]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[57] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [57]),
        .Q(\gen_rd_b.doutb_reg [57]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[58] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [58]),
        .Q(\gen_rd_b.doutb_reg [58]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[59] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [59]),
        .Q(\gen_rd_b.doutb_reg [59]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[5] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [5]),
        .Q(\gen_rd_b.doutb_reg [5]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[60] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [60]),
        .Q(\gen_rd_b.doutb_reg [60]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[61] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [61]),
        .Q(\gen_rd_b.doutb_reg [61]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[62] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [62]),
        .Q(\gen_rd_b.doutb_reg [62]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[63] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [63]),
        .Q(\gen_rd_b.doutb_reg [63]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[64] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [64]),
        .Q(\gen_rd_b.doutb_reg [64]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[65] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [65]),
        .Q(\gen_rd_b.doutb_reg [65]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[66] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [66]),
        .Q(\gen_rd_b.doutb_reg [66]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[67] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [67]),
        .Q(\gen_rd_b.doutb_reg [67]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[68] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [68]),
        .Q(\gen_rd_b.doutb_reg [68]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[69] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [69]),
        .Q(\gen_rd_b.doutb_reg [69]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[6] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [6]),
        .Q(\gen_rd_b.doutb_reg [6]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[70] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [70]),
        .Q(\gen_rd_b.doutb_reg [70]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[71] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [71]),
        .Q(\gen_rd_b.doutb_reg [71]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[72] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [72]),
        .Q(\gen_rd_b.doutb_reg [72]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[73] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [73]),
        .Q(\gen_rd_b.doutb_reg [73]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[74] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [74]),
        .Q(\gen_rd_b.doutb_reg [74]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[75] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [75]),
        .Q(\gen_rd_b.doutb_reg [75]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[76] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [76]),
        .Q(\gen_rd_b.doutb_reg [76]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[77] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [77]),
        .Q(\gen_rd_b.doutb_reg [77]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[78] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [78]),
        .Q(\gen_rd_b.doutb_reg [78]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[79] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [79]),
        .Q(\gen_rd_b.doutb_reg [79]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[7] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [7]),
        .Q(\gen_rd_b.doutb_reg [7]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[80] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [80]),
        .Q(\gen_rd_b.doutb_reg [80]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[81] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [81]),
        .Q(\gen_rd_b.doutb_reg [81]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[82] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [82]),
        .Q(\gen_rd_b.doutb_reg [82]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[83] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [83]),
        .Q(\gen_rd_b.doutb_reg [83]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[8] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [8]),
        .Q(\gen_rd_b.doutb_reg [8]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[9] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [9]),
        .Q(\gen_rd_b.doutb_reg [9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [0]),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [10]),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [11]),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [12]),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [13]),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [14]),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [15]),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [16]),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [17]),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [18]),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [19]),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [1]),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [20]),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [21]),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [22]),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [23]),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [24]),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [25]),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [26]),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [27]),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [28]),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [29]),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [2]),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [30]),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [31]),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [32]),
        .Q(doutb[32]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [33]),
        .Q(doutb[33]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [34]),
        .Q(doutb[34]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [35]),
        .Q(doutb[35]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [36]),
        .Q(doutb[36]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [37]),
        .Q(doutb[37]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [38]),
        .Q(doutb[38]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [39]),
        .Q(doutb[39]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [3]),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [40]),
        .Q(doutb[40]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [41]),
        .Q(doutb[41]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [42]),
        .Q(doutb[42]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [43]),
        .Q(doutb[43]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [44]),
        .Q(doutb[44]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [45]),
        .Q(doutb[45]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [46]),
        .Q(doutb[46]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [47]),
        .Q(doutb[47]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [48]),
        .Q(doutb[48]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [49]),
        .Q(doutb[49]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [4]),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [50]),
        .Q(doutb[50]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [51]),
        .Q(doutb[51]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [52]),
        .Q(doutb[52]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [53]),
        .Q(doutb[53]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [54]),
        .Q(doutb[54]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [55]),
        .Q(doutb[55]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [56]),
        .Q(doutb[56]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [57]),
        .Q(doutb[57]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [58]),
        .Q(doutb[58]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [59]),
        .Q(doutb[59]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [5]),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [60]),
        .Q(doutb[60]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [61]),
        .Q(doutb[61]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [62]),
        .Q(doutb[62]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [63]),
        .Q(doutb[63]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][64] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [64]),
        .Q(doutb[64]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][65] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [65]),
        .Q(doutb[65]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][66] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [66]),
        .Q(doutb[66]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][67] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [67]),
        .Q(doutb[67]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][68] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [68]),
        .Q(doutb[68]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][69] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [69]),
        .Q(doutb[69]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [6]),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][70] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [70]),
        .Q(doutb[70]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][71] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [71]),
        .Q(doutb[71]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][72] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [72]),
        .Q(doutb[72]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][73] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [73]),
        .Q(doutb[73]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][74] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [74]),
        .Q(doutb[74]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][75] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [75]),
        .Q(doutb[75]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][76] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [76]),
        .Q(doutb[76]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][77] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [77]),
        .Q(doutb[77]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][78] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [78]),
        .Q(doutb[78]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][79] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [79]),
        .Q(doutb[79]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [7]),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][80] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [80]),
        .Q(doutb[80]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][81] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [81]),
        .Q(doutb[81]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][82] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [82]),
        .Q(doutb[82]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][83] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [83]),
        .Q(doutb[83]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [8]),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [9]),
        .Q(doutb[9]),
        .R(rstb));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1344" *) 
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
  (* RTL_RAM_BITS = "1344" *) 
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
  (* RTL_RAM_BITS = "1344" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "41" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41 
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
        .DIC(dina[33:32]),
        .DID(dina[35:34]),
        .DIE(dina[37:36]),
        .DIF(dina[39:38]),
        .DIG(dina[41:40]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [29:28]),
        .DOB(\gen_rd_b.doutb_reg0 [31:30]),
        .DOC(\gen_rd_b.doutb_reg0 [33:32]),
        .DOD(\gen_rd_b.doutb_reg0 [35:34]),
        .DOE(\gen_rd_b.doutb_reg0 [37:36]),
        .DOF(\gen_rd_b.doutb_reg0 [39:38]),
        .DOG(\gen_rd_b.doutb_reg0 [41:40]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1344" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "42" *) 
  (* ram_slice_end = "55" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[43:42]),
        .DIB(dina[45:44]),
        .DIC(dina[47:46]),
        .DID(dina[49:48]),
        .DIE(dina[51:50]),
        .DIF(dina[53:52]),
        .DIG(dina[55:54]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [43:42]),
        .DOB(\gen_rd_b.doutb_reg0 [45:44]),
        .DOC(\gen_rd_b.doutb_reg0 [47:46]),
        .DOD(\gen_rd_b.doutb_reg0 [49:48]),
        .DOE(\gen_rd_b.doutb_reg0 [51:50]),
        .DOF(\gen_rd_b.doutb_reg0 [53:52]),
        .DOG(\gen_rd_b.doutb_reg0 [55:54]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1344" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "56" *) 
  (* ram_slice_end = "69" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[57:56]),
        .DIB(dina[59:58]),
        .DIC(dina[61:60]),
        .DID(dina[63:62]),
        .DIE(dina[65:64]),
        .DIF(dina[67:66]),
        .DIG(dina[69:68]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [57:56]),
        .DOB(\gen_rd_b.doutb_reg0 [59:58]),
        .DOC(\gen_rd_b.doutb_reg0 [61:60]),
        .DOD(\gen_rd_b.doutb_reg0 [63:62]),
        .DOE(\gen_rd_b.doutb_reg0 [65:64]),
        .DOF(\gen_rd_b.doutb_reg0 [67:66]),
        .DOG(\gen_rd_b.doutb_reg0 [69:68]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1344" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "70" *) 
  (* ram_slice_end = "83" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[71:70]),
        .DIB(dina[73:72]),
        .DIC(dina[75:74]),
        .DID(dina[77:76]),
        .DIE(dina[79:78]),
        .DIF(dina[81:80]),
        .DIG(dina[83:82]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [71:70]),
        .DOB(\gen_rd_b.doutb_reg0 [73:72]),
        .DOC(\gen_rd_b.doutb_reg0 [75:74]),
        .DOD(\gen_rd_b.doutb_reg0 [77:76]),
        .DOE(\gen_rd_b.doutb_reg0 [79:78]),
        .DOF(\gen_rd_b.doutb_reg0 [81:80]),
        .DOG(\gen_rd_b.doutb_reg0 [83:82]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
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
