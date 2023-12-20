// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 21 17:26:03 2022
// Host        : noah running 64-bit Ubuntu 18.04.4 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_s_swr_engine_0_0_sim_netlist.v
// Design      : custom_m_axi_s_swr_engine_0_0
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

(* CHECK_LICENSE_TYPE = "custom_m_axi_s_swr_engine_0_0,swr_engine,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WDATA" *) output [255:0]m_axi_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WSTRB" *) output [31:0]m_axi_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WLAST" *) output m_axi_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WVALID" *) output m_axi_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi WREADY" *) input m_axi_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BRESP" *) input [1:0]m_axi_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BVALID" *) input m_axi_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi BREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN custom_m_axi_s_clk_0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [63:0]baseAddr;
  wire clk;
  wire [63:0]m_axi_AWADDR;
  wire [3:0]\^m_axi_AWLEN ;
  wire m_axi_AWREADY;
  wire m_axi_AWVALID;
  wire m_axi_BVALID;
  wire [255:0]m_axi_WDATA;
  wire m_axi_WLAST;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire req_done;
  wire [7:0]req_length;
  wire req_start;
  wire rst_n;
  wire [255:0]s_axis_tdata;
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
  assign m_axi_AWSIZE[2] = \<const1> ;
  assign m_axi_AWSIZE[1] = \<const0> ;
  assign m_axi_AWSIZE[0] = \<const1> ;
  assign m_axi_BREADY = \<const1> ;
  assign m_axi_WSTRB[31] = \<const1> ;
  assign m_axi_WSTRB[30] = \<const1> ;
  assign m_axi_WSTRB[29] = \<const1> ;
  assign m_axi_WSTRB[28] = \<const1> ;
  assign m_axi_WSTRB[27] = \<const1> ;
  assign m_axi_WSTRB[26] = \<const1> ;
  assign m_axi_WSTRB[25] = \<const1> ;
  assign m_axi_WSTRB[24] = \<const1> ;
  assign m_axi_WSTRB[23] = \<const1> ;
  assign m_axi_WSTRB[22] = \<const1> ;
  assign m_axi_WSTRB[21] = \<const1> ;
  assign m_axi_WSTRB[20] = \<const1> ;
  assign m_axi_WSTRB[19] = \<const1> ;
  assign m_axi_WSTRB[18] = \<const1> ;
  assign m_axi_WSTRB[17] = \<const1> ;
  assign m_axi_WSTRB[16] = \<const1> ;
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
  output [255:0]m_axi_WDATA;
  output is_zero_r_reg;
  output [3:0]m_axi_AWLEN;
  output awvalid_r_reg_0;
  output req_done;
  input [63:0]baseAddr;
  input req_start;
  input rst_n;
  input clk;
  input s_axis_tvalid;
  input [255:0]s_axis_tdata;
  input m_axi_WREADY;
  input m_axi_AWREADY;
  input m_axi_BVALID;
  input [7:0]req_length;

  wire \addr[0]_i_1_n_0 ;
  wire \addr[15]_i_10_n_0 ;
  wire \addr[15]_i_2_n_0 ;
  wire \addr[15]_i_3_n_0 ;
  wire \addr[15]_i_4_n_0 ;
  wire \addr[15]_i_5_n_0 ;
  wire \addr[15]_i_6_n_0 ;
  wire \addr[15]_i_7_n_0 ;
  wire \addr[15]_i_8_n_0 ;
  wire \addr[15]_i_9_n_0 ;
  wire \addr[1]_i_1_n_0 ;
  wire \addr[23]_i_2_n_0 ;
  wire \addr[23]_i_3_n_0 ;
  wire \addr[23]_i_4_n_0 ;
  wire \addr[23]_i_5_n_0 ;
  wire \addr[23]_i_6_n_0 ;
  wire \addr[23]_i_7_n_0 ;
  wire \addr[23]_i_8_n_0 ;
  wire \addr[23]_i_9_n_0 ;
  wire \addr[2]_i_1_n_0 ;
  wire \addr[31]_i_2_n_0 ;
  wire \addr[31]_i_3_n_0 ;
  wire \addr[31]_i_4_n_0 ;
  wire \addr[31]_i_5_n_0 ;
  wire \addr[31]_i_6_n_0 ;
  wire \addr[31]_i_7_n_0 ;
  wire \addr[31]_i_8_n_0 ;
  wire \addr[31]_i_9_n_0 ;
  wire \addr[39]_i_2_n_0 ;
  wire \addr[39]_i_3_n_0 ;
  wire \addr[39]_i_4_n_0 ;
  wire \addr[39]_i_5_n_0 ;
  wire \addr[39]_i_6_n_0 ;
  wire \addr[39]_i_7_n_0 ;
  wire \addr[39]_i_8_n_0 ;
  wire \addr[39]_i_9_n_0 ;
  wire \addr[3]_i_1_n_0 ;
  wire \addr[47]_i_2_n_0 ;
  wire \addr[47]_i_3_n_0 ;
  wire \addr[47]_i_4_n_0 ;
  wire \addr[47]_i_5_n_0 ;
  wire \addr[47]_i_6_n_0 ;
  wire \addr[47]_i_7_n_0 ;
  wire \addr[47]_i_8_n_0 ;
  wire \addr[47]_i_9_n_0 ;
  wire \addr[4]_i_1_n_0 ;
  wire \addr[55]_i_2_n_0 ;
  wire \addr[55]_i_3_n_0 ;
  wire \addr[55]_i_4_n_0 ;
  wire \addr[55]_i_5_n_0 ;
  wire \addr[55]_i_6_n_0 ;
  wire \addr[55]_i_7_n_0 ;
  wire \addr[55]_i_8_n_0 ;
  wire \addr[55]_i_9_n_0 ;
  wire \addr[5]_i_1_n_0 ;
  wire \addr[63]_i_10_n_0 ;
  wire \addr[63]_i_1_n_0 ;
  wire \addr[63]_i_3_n_0 ;
  wire \addr[63]_i_4_n_0 ;
  wire \addr[63]_i_5_n_0 ;
  wire \addr[63]_i_6_n_0 ;
  wire \addr[63]_i_7_n_0 ;
  wire \addr[63]_i_8_n_0 ;
  wire \addr[63]_i_9_n_0 ;
  wire \addr[6]_i_1_n_0 ;
  wire \addr[7]_i_1_n_0 ;
  wire \addr_reg[15]_i_1_n_0 ;
  wire \addr_reg[15]_i_1_n_1 ;
  wire \addr_reg[15]_i_1_n_10 ;
  wire \addr_reg[15]_i_1_n_11 ;
  wire \addr_reg[15]_i_1_n_12 ;
  wire \addr_reg[15]_i_1_n_13 ;
  wire \addr_reg[15]_i_1_n_14 ;
  wire \addr_reg[15]_i_1_n_15 ;
  wire \addr_reg[15]_i_1_n_2 ;
  wire \addr_reg[15]_i_1_n_3 ;
  wire \addr_reg[15]_i_1_n_4 ;
  wire \addr_reg[15]_i_1_n_5 ;
  wire \addr_reg[15]_i_1_n_6 ;
  wire \addr_reg[15]_i_1_n_7 ;
  wire \addr_reg[15]_i_1_n_8 ;
  wire \addr_reg[15]_i_1_n_9 ;
  wire \addr_reg[23]_i_1_n_0 ;
  wire \addr_reg[23]_i_1_n_1 ;
  wire \addr_reg[23]_i_1_n_10 ;
  wire \addr_reg[23]_i_1_n_11 ;
  wire \addr_reg[23]_i_1_n_12 ;
  wire \addr_reg[23]_i_1_n_13 ;
  wire \addr_reg[23]_i_1_n_14 ;
  wire \addr_reg[23]_i_1_n_15 ;
  wire \addr_reg[23]_i_1_n_2 ;
  wire \addr_reg[23]_i_1_n_3 ;
  wire \addr_reg[23]_i_1_n_4 ;
  wire \addr_reg[23]_i_1_n_5 ;
  wire \addr_reg[23]_i_1_n_6 ;
  wire \addr_reg[23]_i_1_n_7 ;
  wire \addr_reg[23]_i_1_n_8 ;
  wire \addr_reg[23]_i_1_n_9 ;
  wire \addr_reg[31]_i_1_n_0 ;
  wire \addr_reg[31]_i_1_n_1 ;
  wire \addr_reg[31]_i_1_n_10 ;
  wire \addr_reg[31]_i_1_n_11 ;
  wire \addr_reg[31]_i_1_n_12 ;
  wire \addr_reg[31]_i_1_n_13 ;
  wire \addr_reg[31]_i_1_n_14 ;
  wire \addr_reg[31]_i_1_n_15 ;
  wire \addr_reg[31]_i_1_n_2 ;
  wire \addr_reg[31]_i_1_n_3 ;
  wire \addr_reg[31]_i_1_n_4 ;
  wire \addr_reg[31]_i_1_n_5 ;
  wire \addr_reg[31]_i_1_n_6 ;
  wire \addr_reg[31]_i_1_n_7 ;
  wire \addr_reg[31]_i_1_n_8 ;
  wire \addr_reg[31]_i_1_n_9 ;
  wire \addr_reg[39]_i_1_n_0 ;
  wire \addr_reg[39]_i_1_n_1 ;
  wire \addr_reg[39]_i_1_n_10 ;
  wire \addr_reg[39]_i_1_n_11 ;
  wire \addr_reg[39]_i_1_n_12 ;
  wire \addr_reg[39]_i_1_n_13 ;
  wire \addr_reg[39]_i_1_n_14 ;
  wire \addr_reg[39]_i_1_n_15 ;
  wire \addr_reg[39]_i_1_n_2 ;
  wire \addr_reg[39]_i_1_n_3 ;
  wire \addr_reg[39]_i_1_n_4 ;
  wire \addr_reg[39]_i_1_n_5 ;
  wire \addr_reg[39]_i_1_n_6 ;
  wire \addr_reg[39]_i_1_n_7 ;
  wire \addr_reg[39]_i_1_n_8 ;
  wire \addr_reg[39]_i_1_n_9 ;
  wire \addr_reg[47]_i_1_n_0 ;
  wire \addr_reg[47]_i_1_n_1 ;
  wire \addr_reg[47]_i_1_n_10 ;
  wire \addr_reg[47]_i_1_n_11 ;
  wire \addr_reg[47]_i_1_n_12 ;
  wire \addr_reg[47]_i_1_n_13 ;
  wire \addr_reg[47]_i_1_n_14 ;
  wire \addr_reg[47]_i_1_n_15 ;
  wire \addr_reg[47]_i_1_n_2 ;
  wire \addr_reg[47]_i_1_n_3 ;
  wire \addr_reg[47]_i_1_n_4 ;
  wire \addr_reg[47]_i_1_n_5 ;
  wire \addr_reg[47]_i_1_n_6 ;
  wire \addr_reg[47]_i_1_n_7 ;
  wire \addr_reg[47]_i_1_n_8 ;
  wire \addr_reg[47]_i_1_n_9 ;
  wire \addr_reg[55]_i_1_n_0 ;
  wire \addr_reg[55]_i_1_n_1 ;
  wire \addr_reg[55]_i_1_n_10 ;
  wire \addr_reg[55]_i_1_n_11 ;
  wire \addr_reg[55]_i_1_n_12 ;
  wire \addr_reg[55]_i_1_n_13 ;
  wire \addr_reg[55]_i_1_n_14 ;
  wire \addr_reg[55]_i_1_n_15 ;
  wire \addr_reg[55]_i_1_n_2 ;
  wire \addr_reg[55]_i_1_n_3 ;
  wire \addr_reg[55]_i_1_n_4 ;
  wire \addr_reg[55]_i_1_n_5 ;
  wire \addr_reg[55]_i_1_n_6 ;
  wire \addr_reg[55]_i_1_n_7 ;
  wire \addr_reg[55]_i_1_n_8 ;
  wire \addr_reg[55]_i_1_n_9 ;
  wire \addr_reg[63]_i_2_n_1 ;
  wire \addr_reg[63]_i_2_n_10 ;
  wire \addr_reg[63]_i_2_n_11 ;
  wire \addr_reg[63]_i_2_n_12 ;
  wire \addr_reg[63]_i_2_n_13 ;
  wire \addr_reg[63]_i_2_n_14 ;
  wire \addr_reg[63]_i_2_n_15 ;
  wire \addr_reg[63]_i_2_n_2 ;
  wire \addr_reg[63]_i_2_n_3 ;
  wire \addr_reg[63]_i_2_n_4 ;
  wire \addr_reg[63]_i_2_n_5 ;
  wire \addr_reg[63]_i_2_n_6 ;
  wire \addr_reg[63]_i_2_n_7 ;
  wire \addr_reg[63]_i_2_n_8 ;
  wire \addr_reg[63]_i_2_n_9 ;
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
  wire [255:0]m_axi_WDATA;
  wire m_axi_WREADY;
  wire m_axi_WVALID;
  wire [3:0]num_transactions;
  wire [3:0]num_transactions0;
  wire \num_transactions[3]_i_2_n_0 ;
  wire req_done;
  wire [7:0]req_length;
  wire req_start;
  wire rst_n;
  wire [255:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire start;
  wire w_almost_final_transaction;
  wire wfirst;
  wire wfirst_d1;
  wire wfirst_d10;
  wire wfirst_pulse;
  wire wfirst_pulse0;
  wire [7:7]\NLW_addr_reg[63]_i_2_CO_UNCONNECTED ;
  wire NLW_inst_axis_data_fifo_almost_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_almost_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_dbiterr_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_empty_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_prog_full_axis_UNCONNECTED;
  wire NLW_inst_axis_data_fifo_sbiterr_axis_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_axis_data_fifo_m_axis_tid_UNCONNECTED;
  wire [31:0]NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED;
  wire [31:0]NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED;
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
    \addr[15]_i_10 
       (.I0(baseAddr[8]),
        .I1(req_start),
        .I2(m_axi_AWADDR[8]),
        .O(\addr[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_2 
       (.I0(baseAddr[9]),
        .I1(req_start),
        .I2(m_axi_AWADDR[9]),
        .O(\addr[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_3 
       (.I0(baseAddr[15]),
        .I1(req_start),
        .I2(m_axi_AWADDR[15]),
        .O(\addr[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_4 
       (.I0(baseAddr[14]),
        .I1(req_start),
        .I2(m_axi_AWADDR[14]),
        .O(\addr[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_5 
       (.I0(baseAddr[13]),
        .I1(req_start),
        .I2(m_axi_AWADDR[13]),
        .O(\addr[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_6 
       (.I0(baseAddr[12]),
        .I1(req_start),
        .I2(m_axi_AWADDR[12]),
        .O(\addr[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_7 
       (.I0(baseAddr[11]),
        .I1(req_start),
        .I2(m_axi_AWADDR[11]),
        .O(\addr[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_i_8 
       (.I0(baseAddr[10]),
        .I1(req_start),
        .I2(m_axi_AWADDR[10]),
        .O(\addr[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \addr[15]_i_9 
       (.I0(m_axi_AWADDR[9]),
        .I1(baseAddr[9]),
        .I2(req_start),
        .O(\addr[15]_i_9_n_0 ));
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
    \addr[23]_i_2 
       (.I0(baseAddr[23]),
        .I1(req_start),
        .I2(m_axi_AWADDR[23]),
        .O(\addr[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_3 
       (.I0(baseAddr[22]),
        .I1(req_start),
        .I2(m_axi_AWADDR[22]),
        .O(\addr[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_4 
       (.I0(baseAddr[21]),
        .I1(req_start),
        .I2(m_axi_AWADDR[21]),
        .O(\addr[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_5 
       (.I0(baseAddr[20]),
        .I1(req_start),
        .I2(m_axi_AWADDR[20]),
        .O(\addr[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_6 
       (.I0(baseAddr[19]),
        .I1(req_start),
        .I2(m_axi_AWADDR[19]),
        .O(\addr[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_7 
       (.I0(baseAddr[18]),
        .I1(req_start),
        .I2(m_axi_AWADDR[18]),
        .O(\addr[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_8 
       (.I0(baseAddr[17]),
        .I1(req_start),
        .I2(m_axi_AWADDR[17]),
        .O(\addr[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_i_9 
       (.I0(baseAddr[16]),
        .I1(req_start),
        .I2(m_axi_AWADDR[16]),
        .O(\addr[23]_i_9_n_0 ));
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
    \addr[31]_i_2 
       (.I0(baseAddr[31]),
        .I1(req_start),
        .I2(m_axi_AWADDR[31]),
        .O(\addr[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_3 
       (.I0(baseAddr[30]),
        .I1(req_start),
        .I2(m_axi_AWADDR[30]),
        .O(\addr[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_4 
       (.I0(baseAddr[29]),
        .I1(req_start),
        .I2(m_axi_AWADDR[29]),
        .O(\addr[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_5 
       (.I0(baseAddr[28]),
        .I1(req_start),
        .I2(m_axi_AWADDR[28]),
        .O(\addr[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_6 
       (.I0(baseAddr[27]),
        .I1(req_start),
        .I2(m_axi_AWADDR[27]),
        .O(\addr[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_7 
       (.I0(baseAddr[26]),
        .I1(req_start),
        .I2(m_axi_AWADDR[26]),
        .O(\addr[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_8 
       (.I0(baseAddr[25]),
        .I1(req_start),
        .I2(m_axi_AWADDR[25]),
        .O(\addr[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_i_9 
       (.I0(baseAddr[24]),
        .I1(req_start),
        .I2(m_axi_AWADDR[24]),
        .O(\addr[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_2 
       (.I0(baseAddr[39]),
        .I1(req_start),
        .I2(m_axi_AWADDR[39]),
        .O(\addr[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_3 
       (.I0(baseAddr[38]),
        .I1(req_start),
        .I2(m_axi_AWADDR[38]),
        .O(\addr[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_4 
       (.I0(baseAddr[37]),
        .I1(req_start),
        .I2(m_axi_AWADDR[37]),
        .O(\addr[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_5 
       (.I0(baseAddr[36]),
        .I1(req_start),
        .I2(m_axi_AWADDR[36]),
        .O(\addr[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_6 
       (.I0(baseAddr[35]),
        .I1(req_start),
        .I2(m_axi_AWADDR[35]),
        .O(\addr[39]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_7 
       (.I0(baseAddr[34]),
        .I1(req_start),
        .I2(m_axi_AWADDR[34]),
        .O(\addr[39]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_8 
       (.I0(baseAddr[33]),
        .I1(req_start),
        .I2(m_axi_AWADDR[33]),
        .O(\addr[39]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[39]_i_9 
       (.I0(baseAddr[32]),
        .I1(req_start),
        .I2(m_axi_AWADDR[32]),
        .O(\addr[39]_i_9_n_0 ));
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
    \addr[47]_i_2 
       (.I0(baseAddr[47]),
        .I1(req_start),
        .I2(m_axi_AWADDR[47]),
        .O(\addr[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_3 
       (.I0(baseAddr[46]),
        .I1(req_start),
        .I2(m_axi_AWADDR[46]),
        .O(\addr[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_4 
       (.I0(baseAddr[45]),
        .I1(req_start),
        .I2(m_axi_AWADDR[45]),
        .O(\addr[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_5 
       (.I0(baseAddr[44]),
        .I1(req_start),
        .I2(m_axi_AWADDR[44]),
        .O(\addr[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_6 
       (.I0(baseAddr[43]),
        .I1(req_start),
        .I2(m_axi_AWADDR[43]),
        .O(\addr[47]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_7 
       (.I0(baseAddr[42]),
        .I1(req_start),
        .I2(m_axi_AWADDR[42]),
        .O(\addr[47]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_8 
       (.I0(baseAddr[41]),
        .I1(req_start),
        .I2(m_axi_AWADDR[41]),
        .O(\addr[47]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[47]_i_9 
       (.I0(baseAddr[40]),
        .I1(req_start),
        .I2(m_axi_AWADDR[40]),
        .O(\addr[47]_i_9_n_0 ));
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
    \addr[55]_i_2 
       (.I0(baseAddr[55]),
        .I1(req_start),
        .I2(m_axi_AWADDR[55]),
        .O(\addr[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_3 
       (.I0(baseAddr[54]),
        .I1(req_start),
        .I2(m_axi_AWADDR[54]),
        .O(\addr[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_4 
       (.I0(baseAddr[53]),
        .I1(req_start),
        .I2(m_axi_AWADDR[53]),
        .O(\addr[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_5 
       (.I0(baseAddr[52]),
        .I1(req_start),
        .I2(m_axi_AWADDR[52]),
        .O(\addr[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_6 
       (.I0(baseAddr[51]),
        .I1(req_start),
        .I2(m_axi_AWADDR[51]),
        .O(\addr[55]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_7 
       (.I0(baseAddr[50]),
        .I1(req_start),
        .I2(m_axi_AWADDR[50]),
        .O(\addr[55]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_8 
       (.I0(baseAddr[49]),
        .I1(req_start),
        .I2(m_axi_AWADDR[49]),
        .O(\addr[55]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[55]_i_9 
       (.I0(baseAddr[48]),
        .I1(req_start),
        .I2(m_axi_AWADDR[48]),
        .O(\addr[55]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_i_1 
       (.I0(baseAddr[5]),
        .I1(req_start),
        .I2(m_axi_AWADDR[5]),
        .O(\addr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \addr[63]_i_1 
       (.I0(req_start),
        .I1(awvalid_r_reg_0),
        .I2(m_axi_AWREADY),
        .O(\addr[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_10 
       (.I0(baseAddr[56]),
        .I1(req_start),
        .I2(m_axi_AWADDR[56]),
        .O(\addr[63]_i_10_n_0 ));
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
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_5 
       (.I0(baseAddr[61]),
        .I1(req_start),
        .I2(m_axi_AWADDR[61]),
        .O(\addr[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_6 
       (.I0(baseAddr[60]),
        .I1(req_start),
        .I2(m_axi_AWADDR[60]),
        .O(\addr[63]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_7 
       (.I0(baseAddr[59]),
        .I1(req_start),
        .I2(m_axi_AWADDR[59]),
        .O(\addr[63]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_8 
       (.I0(baseAddr[58]),
        .I1(req_start),
        .I2(m_axi_AWADDR[58]),
        .O(\addr[63]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[63]_i_9 
       (.I0(baseAddr[57]),
        .I1(req_start),
        .I2(m_axi_AWADDR[57]),
        .O(\addr[63]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[6]_i_1 
       (.I0(baseAddr[6]),
        .I1(req_start),
        .I2(m_axi_AWADDR[6]),
        .O(\addr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[7]_i_1 
       (.I0(baseAddr[7]),
        .I1(req_start),
        .I2(m_axi_AWADDR[7]),
        .O(\addr[7]_i_1_n_0 ));
  FDRE \addr_reg[0] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[0]_i_1_n_0 ),
        .Q(m_axi_AWADDR[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_13 ),
        .Q(m_axi_AWADDR[10]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_12 ),
        .Q(m_axi_AWADDR[11]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_11 ),
        .Q(m_axi_AWADDR[12]),
        .R(1'b0));
  FDRE \addr_reg[13] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_10 ),
        .Q(m_axi_AWADDR[13]),
        .R(1'b0));
  FDRE \addr_reg[14] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_9 ),
        .Q(m_axi_AWADDR[14]),
        .R(1'b0));
  FDRE \addr_reg[15] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_8 ),
        .Q(m_axi_AWADDR[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[15]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\addr_reg[15]_i_1_n_0 ,\addr_reg[15]_i_1_n_1 ,\addr_reg[15]_i_1_n_2 ,\addr_reg[15]_i_1_n_3 ,\addr_reg[15]_i_1_n_4 ,\addr_reg[15]_i_1_n_5 ,\addr_reg[15]_i_1_n_6 ,\addr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\addr[15]_i_2_n_0 ,1'b0}),
        .O({\addr_reg[15]_i_1_n_8 ,\addr_reg[15]_i_1_n_9 ,\addr_reg[15]_i_1_n_10 ,\addr_reg[15]_i_1_n_11 ,\addr_reg[15]_i_1_n_12 ,\addr_reg[15]_i_1_n_13 ,\addr_reg[15]_i_1_n_14 ,\addr_reg[15]_i_1_n_15 }),
        .S({\addr[15]_i_3_n_0 ,\addr[15]_i_4_n_0 ,\addr[15]_i_5_n_0 ,\addr[15]_i_6_n_0 ,\addr[15]_i_7_n_0 ,\addr[15]_i_8_n_0 ,\addr[15]_i_9_n_0 ,\addr[15]_i_10_n_0 }));
  FDRE \addr_reg[16] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_15 ),
        .Q(m_axi_AWADDR[16]),
        .R(1'b0));
  FDRE \addr_reg[17] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_14 ),
        .Q(m_axi_AWADDR[17]),
        .R(1'b0));
  FDRE \addr_reg[18] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_13 ),
        .Q(m_axi_AWADDR[18]),
        .R(1'b0));
  FDRE \addr_reg[19] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_12 ),
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
        .D(\addr_reg[23]_i_1_n_11 ),
        .Q(m_axi_AWADDR[20]),
        .R(1'b0));
  FDRE \addr_reg[21] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_10 ),
        .Q(m_axi_AWADDR[21]),
        .R(1'b0));
  FDRE \addr_reg[22] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_9 ),
        .Q(m_axi_AWADDR[22]),
        .R(1'b0));
  FDRE \addr_reg[23] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[23]_i_1_n_8 ),
        .Q(m_axi_AWADDR[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[23]_i_1 
       (.CI(\addr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[23]_i_1_n_0 ,\addr_reg[23]_i_1_n_1 ,\addr_reg[23]_i_1_n_2 ,\addr_reg[23]_i_1_n_3 ,\addr_reg[23]_i_1_n_4 ,\addr_reg[23]_i_1_n_5 ,\addr_reg[23]_i_1_n_6 ,\addr_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[23]_i_1_n_8 ,\addr_reg[23]_i_1_n_9 ,\addr_reg[23]_i_1_n_10 ,\addr_reg[23]_i_1_n_11 ,\addr_reg[23]_i_1_n_12 ,\addr_reg[23]_i_1_n_13 ,\addr_reg[23]_i_1_n_14 ,\addr_reg[23]_i_1_n_15 }),
        .S({\addr[23]_i_2_n_0 ,\addr[23]_i_3_n_0 ,\addr[23]_i_4_n_0 ,\addr[23]_i_5_n_0 ,\addr[23]_i_6_n_0 ,\addr[23]_i_7_n_0 ,\addr[23]_i_8_n_0 ,\addr[23]_i_9_n_0 }));
  FDRE \addr_reg[24] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_15 ),
        .Q(m_axi_AWADDR[24]),
        .R(1'b0));
  FDRE \addr_reg[25] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_14 ),
        .Q(m_axi_AWADDR[25]),
        .R(1'b0));
  FDRE \addr_reg[26] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_13 ),
        .Q(m_axi_AWADDR[26]),
        .R(1'b0));
  FDRE \addr_reg[27] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_12 ),
        .Q(m_axi_AWADDR[27]),
        .R(1'b0));
  FDRE \addr_reg[28] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_11 ),
        .Q(m_axi_AWADDR[28]),
        .R(1'b0));
  FDRE \addr_reg[29] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_10 ),
        .Q(m_axi_AWADDR[29]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[2]_i_1_n_0 ),
        .Q(m_axi_AWADDR[2]),
        .R(1'b0));
  FDRE \addr_reg[30] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_9 ),
        .Q(m_axi_AWADDR[30]),
        .R(1'b0));
  FDRE \addr_reg[31] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[31]_i_1_n_8 ),
        .Q(m_axi_AWADDR[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[31]_i_1 
       (.CI(\addr_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[31]_i_1_n_0 ,\addr_reg[31]_i_1_n_1 ,\addr_reg[31]_i_1_n_2 ,\addr_reg[31]_i_1_n_3 ,\addr_reg[31]_i_1_n_4 ,\addr_reg[31]_i_1_n_5 ,\addr_reg[31]_i_1_n_6 ,\addr_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[31]_i_1_n_8 ,\addr_reg[31]_i_1_n_9 ,\addr_reg[31]_i_1_n_10 ,\addr_reg[31]_i_1_n_11 ,\addr_reg[31]_i_1_n_12 ,\addr_reg[31]_i_1_n_13 ,\addr_reg[31]_i_1_n_14 ,\addr_reg[31]_i_1_n_15 }),
        .S({\addr[31]_i_2_n_0 ,\addr[31]_i_3_n_0 ,\addr[31]_i_4_n_0 ,\addr[31]_i_5_n_0 ,\addr[31]_i_6_n_0 ,\addr[31]_i_7_n_0 ,\addr[31]_i_8_n_0 ,\addr[31]_i_9_n_0 }));
  FDRE \addr_reg[32] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_15 ),
        .Q(m_axi_AWADDR[32]),
        .R(1'b0));
  FDRE \addr_reg[33] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_14 ),
        .Q(m_axi_AWADDR[33]),
        .R(1'b0));
  FDRE \addr_reg[34] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_13 ),
        .Q(m_axi_AWADDR[34]),
        .R(1'b0));
  FDRE \addr_reg[35] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_12 ),
        .Q(m_axi_AWADDR[35]),
        .R(1'b0));
  FDRE \addr_reg[36] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_11 ),
        .Q(m_axi_AWADDR[36]),
        .R(1'b0));
  FDRE \addr_reg[37] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_10 ),
        .Q(m_axi_AWADDR[37]),
        .R(1'b0));
  FDRE \addr_reg[38] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_9 ),
        .Q(m_axi_AWADDR[38]),
        .R(1'b0));
  FDRE \addr_reg[39] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[39]_i_1_n_8 ),
        .Q(m_axi_AWADDR[39]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[39]_i_1 
       (.CI(\addr_reg[31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[39]_i_1_n_0 ,\addr_reg[39]_i_1_n_1 ,\addr_reg[39]_i_1_n_2 ,\addr_reg[39]_i_1_n_3 ,\addr_reg[39]_i_1_n_4 ,\addr_reg[39]_i_1_n_5 ,\addr_reg[39]_i_1_n_6 ,\addr_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[39]_i_1_n_8 ,\addr_reg[39]_i_1_n_9 ,\addr_reg[39]_i_1_n_10 ,\addr_reg[39]_i_1_n_11 ,\addr_reg[39]_i_1_n_12 ,\addr_reg[39]_i_1_n_13 ,\addr_reg[39]_i_1_n_14 ,\addr_reg[39]_i_1_n_15 }),
        .S({\addr[39]_i_2_n_0 ,\addr[39]_i_3_n_0 ,\addr[39]_i_4_n_0 ,\addr[39]_i_5_n_0 ,\addr[39]_i_6_n_0 ,\addr[39]_i_7_n_0 ,\addr[39]_i_8_n_0 ,\addr[39]_i_9_n_0 }));
  FDRE \addr_reg[3] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[3]_i_1_n_0 ),
        .Q(m_axi_AWADDR[3]),
        .R(1'b0));
  FDRE \addr_reg[40] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_15 ),
        .Q(m_axi_AWADDR[40]),
        .R(1'b0));
  FDRE \addr_reg[41] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_14 ),
        .Q(m_axi_AWADDR[41]),
        .R(1'b0));
  FDRE \addr_reg[42] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_13 ),
        .Q(m_axi_AWADDR[42]),
        .R(1'b0));
  FDRE \addr_reg[43] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_12 ),
        .Q(m_axi_AWADDR[43]),
        .R(1'b0));
  FDRE \addr_reg[44] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_11 ),
        .Q(m_axi_AWADDR[44]),
        .R(1'b0));
  FDRE \addr_reg[45] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_10 ),
        .Q(m_axi_AWADDR[45]),
        .R(1'b0));
  FDRE \addr_reg[46] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_9 ),
        .Q(m_axi_AWADDR[46]),
        .R(1'b0));
  FDRE \addr_reg[47] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[47]_i_1_n_8 ),
        .Q(m_axi_AWADDR[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[47]_i_1 
       (.CI(\addr_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[47]_i_1_n_0 ,\addr_reg[47]_i_1_n_1 ,\addr_reg[47]_i_1_n_2 ,\addr_reg[47]_i_1_n_3 ,\addr_reg[47]_i_1_n_4 ,\addr_reg[47]_i_1_n_5 ,\addr_reg[47]_i_1_n_6 ,\addr_reg[47]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[47]_i_1_n_8 ,\addr_reg[47]_i_1_n_9 ,\addr_reg[47]_i_1_n_10 ,\addr_reg[47]_i_1_n_11 ,\addr_reg[47]_i_1_n_12 ,\addr_reg[47]_i_1_n_13 ,\addr_reg[47]_i_1_n_14 ,\addr_reg[47]_i_1_n_15 }),
        .S({\addr[47]_i_2_n_0 ,\addr[47]_i_3_n_0 ,\addr[47]_i_4_n_0 ,\addr[47]_i_5_n_0 ,\addr[47]_i_6_n_0 ,\addr[47]_i_7_n_0 ,\addr[47]_i_8_n_0 ,\addr[47]_i_9_n_0 }));
  FDRE \addr_reg[48] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_15 ),
        .Q(m_axi_AWADDR[48]),
        .R(1'b0));
  FDRE \addr_reg[49] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_14 ),
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
        .D(\addr_reg[55]_i_1_n_13 ),
        .Q(m_axi_AWADDR[50]),
        .R(1'b0));
  FDRE \addr_reg[51] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_12 ),
        .Q(m_axi_AWADDR[51]),
        .R(1'b0));
  FDRE \addr_reg[52] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_11 ),
        .Q(m_axi_AWADDR[52]),
        .R(1'b0));
  FDRE \addr_reg[53] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_10 ),
        .Q(m_axi_AWADDR[53]),
        .R(1'b0));
  FDRE \addr_reg[54] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_9 ),
        .Q(m_axi_AWADDR[54]),
        .R(1'b0));
  FDRE \addr_reg[55] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[55]_i_1_n_8 ),
        .Q(m_axi_AWADDR[55]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[55]_i_1 
       (.CI(\addr_reg[47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_reg[55]_i_1_n_0 ,\addr_reg[55]_i_1_n_1 ,\addr_reg[55]_i_1_n_2 ,\addr_reg[55]_i_1_n_3 ,\addr_reg[55]_i_1_n_4 ,\addr_reg[55]_i_1_n_5 ,\addr_reg[55]_i_1_n_6 ,\addr_reg[55]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[55]_i_1_n_8 ,\addr_reg[55]_i_1_n_9 ,\addr_reg[55]_i_1_n_10 ,\addr_reg[55]_i_1_n_11 ,\addr_reg[55]_i_1_n_12 ,\addr_reg[55]_i_1_n_13 ,\addr_reg[55]_i_1_n_14 ,\addr_reg[55]_i_1_n_15 }),
        .S({\addr[55]_i_2_n_0 ,\addr[55]_i_3_n_0 ,\addr[55]_i_4_n_0 ,\addr[55]_i_5_n_0 ,\addr[55]_i_6_n_0 ,\addr[55]_i_7_n_0 ,\addr[55]_i_8_n_0 ,\addr[55]_i_9_n_0 }));
  FDRE \addr_reg[56] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_15 ),
        .Q(m_axi_AWADDR[56]),
        .R(1'b0));
  FDRE \addr_reg[57] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_14 ),
        .Q(m_axi_AWADDR[57]),
        .R(1'b0));
  FDRE \addr_reg[58] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_13 ),
        .Q(m_axi_AWADDR[58]),
        .R(1'b0));
  FDRE \addr_reg[59] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_12 ),
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
        .D(\addr_reg[63]_i_2_n_11 ),
        .Q(m_axi_AWADDR[60]),
        .R(1'b0));
  FDRE \addr_reg[61] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_10 ),
        .Q(m_axi_AWADDR[61]),
        .R(1'b0));
  FDRE \addr_reg[62] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_9 ),
        .Q(m_axi_AWADDR[62]),
        .R(1'b0));
  FDRE \addr_reg[63] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[63]_i_2_n_8 ),
        .Q(m_axi_AWADDR[63]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \addr_reg[63]_i_2 
       (.CI(\addr_reg[55]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_reg[63]_i_2_CO_UNCONNECTED [7],\addr_reg[63]_i_2_n_1 ,\addr_reg[63]_i_2_n_2 ,\addr_reg[63]_i_2_n_3 ,\addr_reg[63]_i_2_n_4 ,\addr_reg[63]_i_2_n_5 ,\addr_reg[63]_i_2_n_6 ,\addr_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_reg[63]_i_2_n_8 ,\addr_reg[63]_i_2_n_9 ,\addr_reg[63]_i_2_n_10 ,\addr_reg[63]_i_2_n_11 ,\addr_reg[63]_i_2_n_12 ,\addr_reg[63]_i_2_n_13 ,\addr_reg[63]_i_2_n_14 ,\addr_reg[63]_i_2_n_15 }),
        .S({\addr[63]_i_3_n_0 ,\addr[63]_i_4_n_0 ,\addr[63]_i_5_n_0 ,\addr[63]_i_6_n_0 ,\addr[63]_i_7_n_0 ,\addr[63]_i_8_n_0 ,\addr[63]_i_9_n_0 ,\addr[63]_i_10_n_0 }));
  FDRE \addr_reg[6] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[6]_i_1_n_0 ),
        .Q(m_axi_AWADDR[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr[7]_i_1_n_0 ),
        .Q(m_axi_AWADDR[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_15 ),
        .Q(m_axi_AWADDR[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(clk),
        .CE(\addr[63]_i_1_n_0 ),
        .D(\addr_reg[15]_i_1_n_14 ),
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \final_burst_len[1]_i_1 
       (.I0(req_length[1]),
        .I1(req_length[0]),
        .O(final_burst_len0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
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
  (* AXIS_DATA_WIDTH = "324" *) 
  (* AXIS_FINAL_DATA_WIDTH = "324" *) 
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
  (* TDATA_OFFSET = "256" *) 
  (* TDATA_WIDTH = "256" *) 
  (* TDEST_OFFSET = "322" *) 
  (* TDEST_WIDTH = "1" *) 
  (* TID_OFFSET = "321" *) 
  (* TID_WIDTH = "1" *) 
  (* TKEEP_OFFSET = "320" *) 
  (* TSTRB_OFFSET = "288" *) 
  (* TUSER_MAX_WIDTH = "3773" *) 
  (* TUSER_OFFSET = "323" *) 
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
        .m_axis_tkeep(NLW_inst_axis_data_fifo_m_axis_tkeep_UNCONNECTED[31:0]),
        .m_axis_tlast(NLW_inst_axis_data_fifo_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axi_WREADY),
        .m_axis_tstrb(NLW_inst_axis_data_fifo_m_axis_tstrb_UNCONNECTED[31:0]),
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
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
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
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \num_transactions[2]_i_1 
       (.I0(req_length[6]),
        .I1(\num_transactions[3]_i_2_n_0 ),
        .O(num_transactions0[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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

(* AXIS_DATA_WIDTH = "324" *) (* AXIS_FINAL_DATA_WIDTH = "324" *) (* CASCADE_HEIGHT = "0" *) 
(* CDC_SYNC_STAGES = "2" *) (* CLOCKING_MODE = "common_clock" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_AXIS = "16'b0001000000000000" *) (* EN_ADV_FEATURE_AXIS_INT = "16'b0001000000000000" *) (* EN_ALMOST_EMPTY_INT = "1'b0" *) 
(* EN_ALMOST_FULL_INT = "1'b0" *) (* EN_DATA_VALID_INT = "1'b1" *) (* FIFO_DEPTH = "16" *) 
(* FIFO_MEMORY_TYPE = "distributed" *) (* LOG_DEPTH_AXIS = "4" *) (* PACKET_FIFO = "false" *) 
(* PKT_SIZE_LT8 = "1'b0" *) (* PROG_EMPTY_THRESH = "5" *) (* PROG_FULL_THRESH = "11" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "1" *) 
(* P_PKT_MODE = "0" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RELATED_CLOCKS = "0" *) 
(* SIM_ASSERT_CHK = "0" *) (* TDATA_OFFSET = "256" *) (* TDATA_WIDTH = "256" *) 
(* TDEST_OFFSET = "322" *) (* TDEST_WIDTH = "1" *) (* TID_OFFSET = "321" *) 
(* TID_WIDTH = "1" *) (* TKEEP_OFFSET = "320" *) (* TSTRB_OFFSET = "288" *) 
(* TUSER_MAX_WIDTH = "3773" *) (* TUSER_OFFSET = "323" *) (* TUSER_WIDTH = "1" *) 
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
  input [255:0]s_axis_tdata;
  input [31:0]s_axis_tstrb;
  input [31:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [255:0]m_axis_tdata;
  output [31:0]m_axis_tstrb;
  output [31:0]m_axis_tkeep;
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
  wire [255:0]m_axis_tdata;
  wire [0:0]m_axis_tdest;
  wire [0:0]m_axis_tid;
  wire [31:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [31:0]m_axis_tstrb;
  wire [0:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire rst_axis;
  wire s_aclk;
  wire s_aresetn;
  wire [255:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [31:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [31:0]s_axis_tstrb;
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
  (* FIFO_SIZE = "5184" *) 
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
  (* READ_DATA_WIDTH = "324" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "825241648" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "324" *) 
  (* WR_DATA_COUNT_WIDTH = "8" *) 
  (* WR_DC_WIDTH_EXT = "5" *) 
  (* WR_DEPTH_LOG = "4" *) 
  (* WR_PNTR_WIDTH = "4" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "9" *) 
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
(* FIFO_READ_LATENCY = "0" *) (* FIFO_SIZE = "5184" *) (* FIFO_WRITE_DEPTH = "16" *) 
(* FULL_RESET_VALUE = "1" *) (* FULL_RST_VAL = "1'b1" *) (* PE_THRESH_ADJ = "3" *) 
(* PE_THRESH_MAX = "11" *) (* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "9" *) 
(* PF_THRESH_MAX = "11" *) (* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "5" *) 
(* PROG_FULL_THRESH = "11" *) (* RD_DATA_COUNT_WIDTH = "8" *) (* RD_DC_WIDTH_EXT = "5" *) 
(* RD_LATENCY = "2" *) (* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "4" *) 
(* READ_DATA_WIDTH = "324" *) (* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) 
(* RELATED_CLOCKS = "0" *) (* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "825241648" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WIDTH_RATIO = "1" *) (* WRITE_DATA_WIDTH = "324" *) (* WR_DATA_COUNT_WIDTH = "8" *) 
(* WR_DC_WIDTH_EXT = "5" *) (* WR_DEPTH_LOG = "4" *) (* WR_PNTR_WIDTH = "4" *) 
(* WR_RD_RATIO = "0" *) (* WR_WIDTH_LOG = "9" *) (* XPM_MODULE = "TRUE" *) 
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
  input [323:0]din;
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
  output [323:0]dout;
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
  wire [323:0]din;
  wire [323:0]dout;
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
  wire [323:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

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
  (* BYTE_WRITE_WIDTH_A = "324" *) 
  (* BYTE_WRITE_WIDTH_B = "324" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "1" *) 
  (* MEMORY_SIZE = "5184" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "distributed" *) 
  (* P_MIN_WIDTH_DATA = "324" *) 
  (* P_MIN_WIDTH_DATA_A = "324" *) 
  (* P_MIN_WIDTH_DATA_B = "324" *) 
  (* P_MIN_WIDTH_DATA_ECC = "324" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "324" *) 
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
  (* P_WIDTH_COL_WRITE_A = "324" *) 
  (* P_WIDTH_COL_WRITE_B = "324" *) 
  (* READ_DATA_WIDTH_A = "324" *) 
  (* READ_DATA_WIDTH_B = "324" *) 
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
  (* WRITE_DATA_WIDTH_A = "324" *) 
  (* WRITE_DATA_WIDTH_B = "324" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "324" *) 
  (* rstb_loop_iter = "324" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [323:0]),
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
(* BYTE_WRITE_WIDTH_A = "324" *) (* BYTE_WRITE_WIDTH_B = "324" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_MODE = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "1" *) (* MEMORY_SIZE = "5184" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* P_ECC_MODE = "no_ecc" *) 
(* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) (* P_MAX_DEPTH_DATA = "16" *) 
(* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "distributed" *) (* P_MIN_WIDTH_DATA = "324" *) 
(* P_MIN_WIDTH_DATA_A = "324" *) (* P_MIN_WIDTH_DATA_B = "324" *) (* P_MIN_WIDTH_DATA_ECC = "324" *) 
(* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "324" *) (* P_NUM_COLS_WRITE_A = "1" *) 
(* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) 
(* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) 
(* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "4" *) (* P_WIDTH_ADDR_READ_B = "4" *) 
(* P_WIDTH_ADDR_WRITE_A = "4" *) (* P_WIDTH_ADDR_WRITE_B = "4" *) (* P_WIDTH_COL_WRITE_A = "324" *) 
(* P_WIDTH_COL_WRITE_B = "324" *) (* READ_DATA_WIDTH_A = "324" *) (* READ_DATA_WIDTH_B = "324" *) 
(* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) (* READ_RESET_VALUE_A = "0" *) 
(* READ_RESET_VALUE_B = "" *) (* RST_MODE_A = "SYNC" *) (* RST_MODE_B = "SYNC" *) 
(* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) (* USE_MEM_INIT = "0" *) 
(* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) (* WAKEUP_TIME = "0" *) 
(* WRITE_DATA_WIDTH_A = "324" *) (* WRITE_DATA_WIDTH_B = "324" *) (* WRITE_MODE_A = "2" *) 
(* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) (* XPM_MODULE = "TRUE" *) 
(* keep_hierarchy = "soft" *) (* rsta_loop_iter = "324" *) (* rstb_loop_iter = "324" *) 
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
  input [323:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [323:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [3:0]addrb;
  input [323:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [323:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [3:0]addra;
  wire [3:0]addrb;
  wire clka;
  wire [323:0]dina;
  wire [323:0]doutb;
  wire ena;
  wire enb;
  wire [323:0]\gen_rd_b.doutb_reg ;
  wire [323:0]\gen_rd_b.doutb_reg0 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_139_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_140_153_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_154_167_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_168_181_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_182_195_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_196_209_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_210_223_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_224_237_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_238_251_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_252_265_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_266_279_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_280_293_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_294_307_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_308_321_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOB_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOD_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOE_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOF_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOG_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED ;
  wire [1:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[323] = \<const0> ;
  assign douta[322] = \<const0> ;
  assign douta[321] = \<const0> ;
  assign douta[320] = \<const0> ;
  assign douta[319] = \<const0> ;
  assign douta[318] = \<const0> ;
  assign douta[317] = \<const0> ;
  assign douta[316] = \<const0> ;
  assign douta[315] = \<const0> ;
  assign douta[314] = \<const0> ;
  assign douta[313] = \<const0> ;
  assign douta[312] = \<const0> ;
  assign douta[311] = \<const0> ;
  assign douta[310] = \<const0> ;
  assign douta[309] = \<const0> ;
  assign douta[308] = \<const0> ;
  assign douta[307] = \<const0> ;
  assign douta[306] = \<const0> ;
  assign douta[305] = \<const0> ;
  assign douta[304] = \<const0> ;
  assign douta[303] = \<const0> ;
  assign douta[302] = \<const0> ;
  assign douta[301] = \<const0> ;
  assign douta[300] = \<const0> ;
  assign douta[299] = \<const0> ;
  assign douta[298] = \<const0> ;
  assign douta[297] = \<const0> ;
  assign douta[296] = \<const0> ;
  assign douta[295] = \<const0> ;
  assign douta[294] = \<const0> ;
  assign douta[293] = \<const0> ;
  assign douta[292] = \<const0> ;
  assign douta[291] = \<const0> ;
  assign douta[290] = \<const0> ;
  assign douta[289] = \<const0> ;
  assign douta[288] = \<const0> ;
  assign douta[287] = \<const0> ;
  assign douta[286] = \<const0> ;
  assign douta[285] = \<const0> ;
  assign douta[284] = \<const0> ;
  assign douta[283] = \<const0> ;
  assign douta[282] = \<const0> ;
  assign douta[281] = \<const0> ;
  assign douta[280] = \<const0> ;
  assign douta[279] = \<const0> ;
  assign douta[278] = \<const0> ;
  assign douta[277] = \<const0> ;
  assign douta[276] = \<const0> ;
  assign douta[275] = \<const0> ;
  assign douta[274] = \<const0> ;
  assign douta[273] = \<const0> ;
  assign douta[272] = \<const0> ;
  assign douta[271] = \<const0> ;
  assign douta[270] = \<const0> ;
  assign douta[269] = \<const0> ;
  assign douta[268] = \<const0> ;
  assign douta[267] = \<const0> ;
  assign douta[266] = \<const0> ;
  assign douta[265] = \<const0> ;
  assign douta[264] = \<const0> ;
  assign douta[263] = \<const0> ;
  assign douta[262] = \<const0> ;
  assign douta[261] = \<const0> ;
  assign douta[260] = \<const0> ;
  assign douta[259] = \<const0> ;
  assign douta[258] = \<const0> ;
  assign douta[257] = \<const0> ;
  assign douta[256] = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
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
    \gen_rd_b.doutb_reg_reg[100] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [100]),
        .Q(\gen_rd_b.doutb_reg [100]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[101] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [101]),
        .Q(\gen_rd_b.doutb_reg [101]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[102] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [102]),
        .Q(\gen_rd_b.doutb_reg [102]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[103] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [103]),
        .Q(\gen_rd_b.doutb_reg [103]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[104] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [104]),
        .Q(\gen_rd_b.doutb_reg [104]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[105] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [105]),
        .Q(\gen_rd_b.doutb_reg [105]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[106] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [106]),
        .Q(\gen_rd_b.doutb_reg [106]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[107] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [107]),
        .Q(\gen_rd_b.doutb_reg [107]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[108] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [108]),
        .Q(\gen_rd_b.doutb_reg [108]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[109] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [109]),
        .Q(\gen_rd_b.doutb_reg [109]),
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
    \gen_rd_b.doutb_reg_reg[110] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [110]),
        .Q(\gen_rd_b.doutb_reg [110]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[111] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [111]),
        .Q(\gen_rd_b.doutb_reg [111]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[112] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [112]),
        .Q(\gen_rd_b.doutb_reg [112]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[113] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [113]),
        .Q(\gen_rd_b.doutb_reg [113]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[114] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [114]),
        .Q(\gen_rd_b.doutb_reg [114]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[115] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [115]),
        .Q(\gen_rd_b.doutb_reg [115]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[116] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [116]),
        .Q(\gen_rd_b.doutb_reg [116]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[117] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [117]),
        .Q(\gen_rd_b.doutb_reg [117]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[118] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [118]),
        .Q(\gen_rd_b.doutb_reg [118]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[119] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [119]),
        .Q(\gen_rd_b.doutb_reg [119]),
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
    \gen_rd_b.doutb_reg_reg[120] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [120]),
        .Q(\gen_rd_b.doutb_reg [120]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[121] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [121]),
        .Q(\gen_rd_b.doutb_reg [121]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[122] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [122]),
        .Q(\gen_rd_b.doutb_reg [122]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[123] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [123]),
        .Q(\gen_rd_b.doutb_reg [123]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[124] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [124]),
        .Q(\gen_rd_b.doutb_reg [124]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[125] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [125]),
        .Q(\gen_rd_b.doutb_reg [125]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[126] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [126]),
        .Q(\gen_rd_b.doutb_reg [126]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[127] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [127]),
        .Q(\gen_rd_b.doutb_reg [127]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[128] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [128]),
        .Q(\gen_rd_b.doutb_reg [128]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[129] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [129]),
        .Q(\gen_rd_b.doutb_reg [129]),
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
    \gen_rd_b.doutb_reg_reg[130] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [130]),
        .Q(\gen_rd_b.doutb_reg [130]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[131] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [131]),
        .Q(\gen_rd_b.doutb_reg [131]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[132] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [132]),
        .Q(\gen_rd_b.doutb_reg [132]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[133] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [133]),
        .Q(\gen_rd_b.doutb_reg [133]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[134] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [134]),
        .Q(\gen_rd_b.doutb_reg [134]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[135] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [135]),
        .Q(\gen_rd_b.doutb_reg [135]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[136] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [136]),
        .Q(\gen_rd_b.doutb_reg [136]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[137] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [137]),
        .Q(\gen_rd_b.doutb_reg [137]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[138] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [138]),
        .Q(\gen_rd_b.doutb_reg [138]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[139] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [139]),
        .Q(\gen_rd_b.doutb_reg [139]),
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
    \gen_rd_b.doutb_reg_reg[140] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [140]),
        .Q(\gen_rd_b.doutb_reg [140]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[141] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [141]),
        .Q(\gen_rd_b.doutb_reg [141]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[142] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [142]),
        .Q(\gen_rd_b.doutb_reg [142]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[143] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [143]),
        .Q(\gen_rd_b.doutb_reg [143]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[144] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [144]),
        .Q(\gen_rd_b.doutb_reg [144]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[145] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [145]),
        .Q(\gen_rd_b.doutb_reg [145]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[146] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [146]),
        .Q(\gen_rd_b.doutb_reg [146]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[147] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [147]),
        .Q(\gen_rd_b.doutb_reg [147]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[148] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [148]),
        .Q(\gen_rd_b.doutb_reg [148]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[149] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [149]),
        .Q(\gen_rd_b.doutb_reg [149]),
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
    \gen_rd_b.doutb_reg_reg[150] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [150]),
        .Q(\gen_rd_b.doutb_reg [150]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[151] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [151]),
        .Q(\gen_rd_b.doutb_reg [151]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[152] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [152]),
        .Q(\gen_rd_b.doutb_reg [152]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[153] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [153]),
        .Q(\gen_rd_b.doutb_reg [153]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[154] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [154]),
        .Q(\gen_rd_b.doutb_reg [154]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[155] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [155]),
        .Q(\gen_rd_b.doutb_reg [155]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[156] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [156]),
        .Q(\gen_rd_b.doutb_reg [156]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[157] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [157]),
        .Q(\gen_rd_b.doutb_reg [157]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[158] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [158]),
        .Q(\gen_rd_b.doutb_reg [158]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[159] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [159]),
        .Q(\gen_rd_b.doutb_reg [159]),
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
    \gen_rd_b.doutb_reg_reg[160] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [160]),
        .Q(\gen_rd_b.doutb_reg [160]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[161] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [161]),
        .Q(\gen_rd_b.doutb_reg [161]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[162] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [162]),
        .Q(\gen_rd_b.doutb_reg [162]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[163] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [163]),
        .Q(\gen_rd_b.doutb_reg [163]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[164] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [164]),
        .Q(\gen_rd_b.doutb_reg [164]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[165] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [165]),
        .Q(\gen_rd_b.doutb_reg [165]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[166] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [166]),
        .Q(\gen_rd_b.doutb_reg [166]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[167] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [167]),
        .Q(\gen_rd_b.doutb_reg [167]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[168] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [168]),
        .Q(\gen_rd_b.doutb_reg [168]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[169] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [169]),
        .Q(\gen_rd_b.doutb_reg [169]),
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
    \gen_rd_b.doutb_reg_reg[170] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [170]),
        .Q(\gen_rd_b.doutb_reg [170]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[171] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [171]),
        .Q(\gen_rd_b.doutb_reg [171]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[172] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [172]),
        .Q(\gen_rd_b.doutb_reg [172]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[173] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [173]),
        .Q(\gen_rd_b.doutb_reg [173]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[174] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [174]),
        .Q(\gen_rd_b.doutb_reg [174]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[175] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [175]),
        .Q(\gen_rd_b.doutb_reg [175]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[176] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [176]),
        .Q(\gen_rd_b.doutb_reg [176]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[177] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [177]),
        .Q(\gen_rd_b.doutb_reg [177]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[178] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [178]),
        .Q(\gen_rd_b.doutb_reg [178]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[179] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [179]),
        .Q(\gen_rd_b.doutb_reg [179]),
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
    \gen_rd_b.doutb_reg_reg[180] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [180]),
        .Q(\gen_rd_b.doutb_reg [180]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[181] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [181]),
        .Q(\gen_rd_b.doutb_reg [181]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[182] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [182]),
        .Q(\gen_rd_b.doutb_reg [182]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[183] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [183]),
        .Q(\gen_rd_b.doutb_reg [183]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[184] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [184]),
        .Q(\gen_rd_b.doutb_reg [184]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[185] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [185]),
        .Q(\gen_rd_b.doutb_reg [185]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[186] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [186]),
        .Q(\gen_rd_b.doutb_reg [186]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[187] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [187]),
        .Q(\gen_rd_b.doutb_reg [187]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[188] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [188]),
        .Q(\gen_rd_b.doutb_reg [188]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[189] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [189]),
        .Q(\gen_rd_b.doutb_reg [189]),
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
    \gen_rd_b.doutb_reg_reg[190] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [190]),
        .Q(\gen_rd_b.doutb_reg [190]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[191] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [191]),
        .Q(\gen_rd_b.doutb_reg [191]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[192] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [192]),
        .Q(\gen_rd_b.doutb_reg [192]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[193] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [193]),
        .Q(\gen_rd_b.doutb_reg [193]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[194] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [194]),
        .Q(\gen_rd_b.doutb_reg [194]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[195] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [195]),
        .Q(\gen_rd_b.doutb_reg [195]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[196] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [196]),
        .Q(\gen_rd_b.doutb_reg [196]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[197] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [197]),
        .Q(\gen_rd_b.doutb_reg [197]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[198] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [198]),
        .Q(\gen_rd_b.doutb_reg [198]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[199] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [199]),
        .Q(\gen_rd_b.doutb_reg [199]),
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
    \gen_rd_b.doutb_reg_reg[200] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [200]),
        .Q(\gen_rd_b.doutb_reg [200]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[201] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [201]),
        .Q(\gen_rd_b.doutb_reg [201]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[202] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [202]),
        .Q(\gen_rd_b.doutb_reg [202]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[203] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [203]),
        .Q(\gen_rd_b.doutb_reg [203]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[204] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [204]),
        .Q(\gen_rd_b.doutb_reg [204]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[205] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [205]),
        .Q(\gen_rd_b.doutb_reg [205]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[206] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [206]),
        .Q(\gen_rd_b.doutb_reg [206]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[207] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [207]),
        .Q(\gen_rd_b.doutb_reg [207]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[208] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [208]),
        .Q(\gen_rd_b.doutb_reg [208]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[209] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [209]),
        .Q(\gen_rd_b.doutb_reg [209]),
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
    \gen_rd_b.doutb_reg_reg[210] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [210]),
        .Q(\gen_rd_b.doutb_reg [210]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[211] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [211]),
        .Q(\gen_rd_b.doutb_reg [211]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[212] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [212]),
        .Q(\gen_rd_b.doutb_reg [212]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[213] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [213]),
        .Q(\gen_rd_b.doutb_reg [213]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[214] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [214]),
        .Q(\gen_rd_b.doutb_reg [214]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[215] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [215]),
        .Q(\gen_rd_b.doutb_reg [215]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[216] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [216]),
        .Q(\gen_rd_b.doutb_reg [216]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[217] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [217]),
        .Q(\gen_rd_b.doutb_reg [217]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[218] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [218]),
        .Q(\gen_rd_b.doutb_reg [218]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[219] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [219]),
        .Q(\gen_rd_b.doutb_reg [219]),
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
    \gen_rd_b.doutb_reg_reg[220] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [220]),
        .Q(\gen_rd_b.doutb_reg [220]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[221] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [221]),
        .Q(\gen_rd_b.doutb_reg [221]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[222] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [222]),
        .Q(\gen_rd_b.doutb_reg [222]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[223] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [223]),
        .Q(\gen_rd_b.doutb_reg [223]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[224] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [224]),
        .Q(\gen_rd_b.doutb_reg [224]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[225] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [225]),
        .Q(\gen_rd_b.doutb_reg [225]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[226] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [226]),
        .Q(\gen_rd_b.doutb_reg [226]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[227] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [227]),
        .Q(\gen_rd_b.doutb_reg [227]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[228] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [228]),
        .Q(\gen_rd_b.doutb_reg [228]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[229] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [229]),
        .Q(\gen_rd_b.doutb_reg [229]),
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
    \gen_rd_b.doutb_reg_reg[230] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [230]),
        .Q(\gen_rd_b.doutb_reg [230]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[231] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [231]),
        .Q(\gen_rd_b.doutb_reg [231]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[232] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [232]),
        .Q(\gen_rd_b.doutb_reg [232]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[233] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [233]),
        .Q(\gen_rd_b.doutb_reg [233]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[234] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [234]),
        .Q(\gen_rd_b.doutb_reg [234]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[235] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [235]),
        .Q(\gen_rd_b.doutb_reg [235]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[236] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [236]),
        .Q(\gen_rd_b.doutb_reg [236]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[237] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [237]),
        .Q(\gen_rd_b.doutb_reg [237]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[238] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [238]),
        .Q(\gen_rd_b.doutb_reg [238]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[239] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [239]),
        .Q(\gen_rd_b.doutb_reg [239]),
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
    \gen_rd_b.doutb_reg_reg[240] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [240]),
        .Q(\gen_rd_b.doutb_reg [240]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[241] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [241]),
        .Q(\gen_rd_b.doutb_reg [241]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[242] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [242]),
        .Q(\gen_rd_b.doutb_reg [242]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[243] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [243]),
        .Q(\gen_rd_b.doutb_reg [243]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[244] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [244]),
        .Q(\gen_rd_b.doutb_reg [244]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[245] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [245]),
        .Q(\gen_rd_b.doutb_reg [245]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[246] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [246]),
        .Q(\gen_rd_b.doutb_reg [246]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[247] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [247]),
        .Q(\gen_rd_b.doutb_reg [247]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[248] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [248]),
        .Q(\gen_rd_b.doutb_reg [248]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[249] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [249]),
        .Q(\gen_rd_b.doutb_reg [249]),
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
    \gen_rd_b.doutb_reg_reg[250] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [250]),
        .Q(\gen_rd_b.doutb_reg [250]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[251] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [251]),
        .Q(\gen_rd_b.doutb_reg [251]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[252] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [252]),
        .Q(\gen_rd_b.doutb_reg [252]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[253] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [253]),
        .Q(\gen_rd_b.doutb_reg [253]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[254] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [254]),
        .Q(\gen_rd_b.doutb_reg [254]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[255] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [255]),
        .Q(\gen_rd_b.doutb_reg [255]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[256] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [256]),
        .Q(\gen_rd_b.doutb_reg [256]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[257] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [257]),
        .Q(\gen_rd_b.doutb_reg [257]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[258] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [258]),
        .Q(\gen_rd_b.doutb_reg [258]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[259] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [259]),
        .Q(\gen_rd_b.doutb_reg [259]),
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
    \gen_rd_b.doutb_reg_reg[260] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [260]),
        .Q(\gen_rd_b.doutb_reg [260]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[261] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [261]),
        .Q(\gen_rd_b.doutb_reg [261]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[262] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [262]),
        .Q(\gen_rd_b.doutb_reg [262]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[263] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [263]),
        .Q(\gen_rd_b.doutb_reg [263]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[264] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [264]),
        .Q(\gen_rd_b.doutb_reg [264]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[265] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [265]),
        .Q(\gen_rd_b.doutb_reg [265]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[266] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [266]),
        .Q(\gen_rd_b.doutb_reg [266]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[267] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [267]),
        .Q(\gen_rd_b.doutb_reg [267]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[268] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [268]),
        .Q(\gen_rd_b.doutb_reg [268]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[269] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [269]),
        .Q(\gen_rd_b.doutb_reg [269]),
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
    \gen_rd_b.doutb_reg_reg[270] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [270]),
        .Q(\gen_rd_b.doutb_reg [270]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[271] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [271]),
        .Q(\gen_rd_b.doutb_reg [271]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[272] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [272]),
        .Q(\gen_rd_b.doutb_reg [272]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[273] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [273]),
        .Q(\gen_rd_b.doutb_reg [273]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[274] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [274]),
        .Q(\gen_rd_b.doutb_reg [274]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[275] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [275]),
        .Q(\gen_rd_b.doutb_reg [275]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[276] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [276]),
        .Q(\gen_rd_b.doutb_reg [276]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[277] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [277]),
        .Q(\gen_rd_b.doutb_reg [277]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[278] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [278]),
        .Q(\gen_rd_b.doutb_reg [278]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[279] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [279]),
        .Q(\gen_rd_b.doutb_reg [279]),
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
    \gen_rd_b.doutb_reg_reg[280] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [280]),
        .Q(\gen_rd_b.doutb_reg [280]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[281] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [281]),
        .Q(\gen_rd_b.doutb_reg [281]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[282] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [282]),
        .Q(\gen_rd_b.doutb_reg [282]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[283] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [283]),
        .Q(\gen_rd_b.doutb_reg [283]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[284] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [284]),
        .Q(\gen_rd_b.doutb_reg [284]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[285] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [285]),
        .Q(\gen_rd_b.doutb_reg [285]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[286] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [286]),
        .Q(\gen_rd_b.doutb_reg [286]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[287] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [287]),
        .Q(\gen_rd_b.doutb_reg [287]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[288] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [288]),
        .Q(\gen_rd_b.doutb_reg [288]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[289] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [289]),
        .Q(\gen_rd_b.doutb_reg [289]),
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
    \gen_rd_b.doutb_reg_reg[290] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [290]),
        .Q(\gen_rd_b.doutb_reg [290]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[291] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [291]),
        .Q(\gen_rd_b.doutb_reg [291]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[292] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [292]),
        .Q(\gen_rd_b.doutb_reg [292]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[293] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [293]),
        .Q(\gen_rd_b.doutb_reg [293]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[294] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [294]),
        .Q(\gen_rd_b.doutb_reg [294]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[295] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [295]),
        .Q(\gen_rd_b.doutb_reg [295]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[296] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [296]),
        .Q(\gen_rd_b.doutb_reg [296]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[297] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [297]),
        .Q(\gen_rd_b.doutb_reg [297]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[298] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [298]),
        .Q(\gen_rd_b.doutb_reg [298]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[299] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [299]),
        .Q(\gen_rd_b.doutb_reg [299]),
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
    \gen_rd_b.doutb_reg_reg[300] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [300]),
        .Q(\gen_rd_b.doutb_reg [300]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[301] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [301]),
        .Q(\gen_rd_b.doutb_reg [301]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[302] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [302]),
        .Q(\gen_rd_b.doutb_reg [302]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[303] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [303]),
        .Q(\gen_rd_b.doutb_reg [303]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[304] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [304]),
        .Q(\gen_rd_b.doutb_reg [304]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[305] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [305]),
        .Q(\gen_rd_b.doutb_reg [305]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[306] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [306]),
        .Q(\gen_rd_b.doutb_reg [306]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[307] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [307]),
        .Q(\gen_rd_b.doutb_reg [307]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[308] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [308]),
        .Q(\gen_rd_b.doutb_reg [308]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[309] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [309]),
        .Q(\gen_rd_b.doutb_reg [309]),
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
    \gen_rd_b.doutb_reg_reg[310] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [310]),
        .Q(\gen_rd_b.doutb_reg [310]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[311] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [311]),
        .Q(\gen_rd_b.doutb_reg [311]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[312] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [312]),
        .Q(\gen_rd_b.doutb_reg [312]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[313] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [313]),
        .Q(\gen_rd_b.doutb_reg [313]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[314] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [314]),
        .Q(\gen_rd_b.doutb_reg [314]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[315] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [315]),
        .Q(\gen_rd_b.doutb_reg [315]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[316] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [316]),
        .Q(\gen_rd_b.doutb_reg [316]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[317] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [317]),
        .Q(\gen_rd_b.doutb_reg [317]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[318] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [318]),
        .Q(\gen_rd_b.doutb_reg [318]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[319] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [319]),
        .Q(\gen_rd_b.doutb_reg [319]),
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
    \gen_rd_b.doutb_reg_reg[320] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [320]),
        .Q(\gen_rd_b.doutb_reg [320]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[321] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [321]),
        .Q(\gen_rd_b.doutb_reg [321]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[322] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [322]),
        .Q(\gen_rd_b.doutb_reg [322]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[323] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [323]),
        .Q(\gen_rd_b.doutb_reg [323]),
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
    \gen_rd_b.doutb_reg_reg[84] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [84]),
        .Q(\gen_rd_b.doutb_reg [84]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[85] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [85]),
        .Q(\gen_rd_b.doutb_reg [85]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[86] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [86]),
        .Q(\gen_rd_b.doutb_reg [86]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[87] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [87]),
        .Q(\gen_rd_b.doutb_reg [87]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[88] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [88]),
        .Q(\gen_rd_b.doutb_reg [88]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[89] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [89]),
        .Q(\gen_rd_b.doutb_reg [89]),
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
    \gen_rd_b.doutb_reg_reg[90] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [90]),
        .Q(\gen_rd_b.doutb_reg [90]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[91] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [91]),
        .Q(\gen_rd_b.doutb_reg [91]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[92] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [92]),
        .Q(\gen_rd_b.doutb_reg [92]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[93] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [93]),
        .Q(\gen_rd_b.doutb_reg [93]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[94] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [94]),
        .Q(\gen_rd_b.doutb_reg [94]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[95] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [95]),
        .Q(\gen_rd_b.doutb_reg [95]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[96] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [96]),
        .Q(\gen_rd_b.doutb_reg [96]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[97] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [97]),
        .Q(\gen_rd_b.doutb_reg [97]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[98] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [98]),
        .Q(\gen_rd_b.doutb_reg [98]),
        .R(1'b0));
  (* dram_emb_xdc = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.doutb_reg_reg[99] 
       (.C(clka),
        .CE(enb),
        .D(\gen_rd_b.doutb_reg0 [99]),
        .Q(\gen_rd_b.doutb_reg [99]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][100] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [100]),
        .Q(doutb[100]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][101] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [101]),
        .Q(doutb[101]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][102] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [102]),
        .Q(doutb[102]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][103] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [103]),
        .Q(doutb[103]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][104] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [104]),
        .Q(doutb[104]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][105] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [105]),
        .Q(doutb[105]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][106] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [106]),
        .Q(doutb[106]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][107] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [107]),
        .Q(doutb[107]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][108] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [108]),
        .Q(doutb[108]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][109] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [109]),
        .Q(doutb[109]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][110] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [110]),
        .Q(doutb[110]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][111] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [111]),
        .Q(doutb[111]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][112] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [112]),
        .Q(doutb[112]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][113] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [113]),
        .Q(doutb[113]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][114] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [114]),
        .Q(doutb[114]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][115] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [115]),
        .Q(doutb[115]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][116] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [116]),
        .Q(doutb[116]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][117] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [117]),
        .Q(doutb[117]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][118] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [118]),
        .Q(doutb[118]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][119] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [119]),
        .Q(doutb[119]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][120] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [120]),
        .Q(doutb[120]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][121] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [121]),
        .Q(doutb[121]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][122] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [122]),
        .Q(doutb[122]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][123] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [123]),
        .Q(doutb[123]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][124] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [124]),
        .Q(doutb[124]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][125] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [125]),
        .Q(doutb[125]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][126] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [126]),
        .Q(doutb[126]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][127] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [127]),
        .Q(doutb[127]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][128] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [128]),
        .Q(doutb[128]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][129] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [129]),
        .Q(doutb[129]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][130] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [130]),
        .Q(doutb[130]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][131] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [131]),
        .Q(doutb[131]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][132] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [132]),
        .Q(doutb[132]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][133] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [133]),
        .Q(doutb[133]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][134] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [134]),
        .Q(doutb[134]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][135] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [135]),
        .Q(doutb[135]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][136] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [136]),
        .Q(doutb[136]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][137] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [137]),
        .Q(doutb[137]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][138] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [138]),
        .Q(doutb[138]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][139] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [139]),
        .Q(doutb[139]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][140] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [140]),
        .Q(doutb[140]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][141] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [141]),
        .Q(doutb[141]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][142] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [142]),
        .Q(doutb[142]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][143] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [143]),
        .Q(doutb[143]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][144] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [144]),
        .Q(doutb[144]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][145] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [145]),
        .Q(doutb[145]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][146] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [146]),
        .Q(doutb[146]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][147] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [147]),
        .Q(doutb[147]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][148] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [148]),
        .Q(doutb[148]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][149] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [149]),
        .Q(doutb[149]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][150] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [150]),
        .Q(doutb[150]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][151] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [151]),
        .Q(doutb[151]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][152] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [152]),
        .Q(doutb[152]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][153] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [153]),
        .Q(doutb[153]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][154] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [154]),
        .Q(doutb[154]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][155] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [155]),
        .Q(doutb[155]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][156] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [156]),
        .Q(doutb[156]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][157] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [157]),
        .Q(doutb[157]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][158] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [158]),
        .Q(doutb[158]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][159] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [159]),
        .Q(doutb[159]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][160] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [160]),
        .Q(doutb[160]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][161] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [161]),
        .Q(doutb[161]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][162] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [162]),
        .Q(doutb[162]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][163] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [163]),
        .Q(doutb[163]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][164] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [164]),
        .Q(doutb[164]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][165] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [165]),
        .Q(doutb[165]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][166] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [166]),
        .Q(doutb[166]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][167] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [167]),
        .Q(doutb[167]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][168] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [168]),
        .Q(doutb[168]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][169] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [169]),
        .Q(doutb[169]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][170] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [170]),
        .Q(doutb[170]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][171] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [171]),
        .Q(doutb[171]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][172] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [172]),
        .Q(doutb[172]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][173] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [173]),
        .Q(doutb[173]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][174] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [174]),
        .Q(doutb[174]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][175] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [175]),
        .Q(doutb[175]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][176] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [176]),
        .Q(doutb[176]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][177] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [177]),
        .Q(doutb[177]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][178] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [178]),
        .Q(doutb[178]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][179] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [179]),
        .Q(doutb[179]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][180] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [180]),
        .Q(doutb[180]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][181] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [181]),
        .Q(doutb[181]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][182] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [182]),
        .Q(doutb[182]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][183] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [183]),
        .Q(doutb[183]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][184] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [184]),
        .Q(doutb[184]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][185] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [185]),
        .Q(doutb[185]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][186] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [186]),
        .Q(doutb[186]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][187] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [187]),
        .Q(doutb[187]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][188] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [188]),
        .Q(doutb[188]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][189] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [189]),
        .Q(doutb[189]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][190] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [190]),
        .Q(doutb[190]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][191] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [191]),
        .Q(doutb[191]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][192] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [192]),
        .Q(doutb[192]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][193] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [193]),
        .Q(doutb[193]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][194] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [194]),
        .Q(doutb[194]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][195] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [195]),
        .Q(doutb[195]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][196] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [196]),
        .Q(doutb[196]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][197] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [197]),
        .Q(doutb[197]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][198] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [198]),
        .Q(doutb[198]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][199] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [199]),
        .Q(doutb[199]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][200] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [200]),
        .Q(doutb[200]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][201] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [201]),
        .Q(doutb[201]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][202] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [202]),
        .Q(doutb[202]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][203] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [203]),
        .Q(doutb[203]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][204] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [204]),
        .Q(doutb[204]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][205] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [205]),
        .Q(doutb[205]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][206] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [206]),
        .Q(doutb[206]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][207] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [207]),
        .Q(doutb[207]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][208] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [208]),
        .Q(doutb[208]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][209] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [209]),
        .Q(doutb[209]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][210] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [210]),
        .Q(doutb[210]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][211] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [211]),
        .Q(doutb[211]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][212] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [212]),
        .Q(doutb[212]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][213] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [213]),
        .Q(doutb[213]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][214] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [214]),
        .Q(doutb[214]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][215] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [215]),
        .Q(doutb[215]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][216] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [216]),
        .Q(doutb[216]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][217] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [217]),
        .Q(doutb[217]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][218] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [218]),
        .Q(doutb[218]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][219] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [219]),
        .Q(doutb[219]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][220] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [220]),
        .Q(doutb[220]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][221] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [221]),
        .Q(doutb[221]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][222] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [222]),
        .Q(doutb[222]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][223] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [223]),
        .Q(doutb[223]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][224] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [224]),
        .Q(doutb[224]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][225] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [225]),
        .Q(doutb[225]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][226] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [226]),
        .Q(doutb[226]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][227] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [227]),
        .Q(doutb[227]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][228] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [228]),
        .Q(doutb[228]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][229] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [229]),
        .Q(doutb[229]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][230] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [230]),
        .Q(doutb[230]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][231] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [231]),
        .Q(doutb[231]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][232] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [232]),
        .Q(doutb[232]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][233] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [233]),
        .Q(doutb[233]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][234] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [234]),
        .Q(doutb[234]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][235] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [235]),
        .Q(doutb[235]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][236] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [236]),
        .Q(doutb[236]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][237] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [237]),
        .Q(doutb[237]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][238] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [238]),
        .Q(doutb[238]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][239] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [239]),
        .Q(doutb[239]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][240] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [240]),
        .Q(doutb[240]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][241] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [241]),
        .Q(doutb[241]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][242] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [242]),
        .Q(doutb[242]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][243] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [243]),
        .Q(doutb[243]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][244] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [244]),
        .Q(doutb[244]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][245] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [245]),
        .Q(doutb[245]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][246] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [246]),
        .Q(doutb[246]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][247] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [247]),
        .Q(doutb[247]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][248] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [248]),
        .Q(doutb[248]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][249] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [249]),
        .Q(doutb[249]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][250] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [250]),
        .Q(doutb[250]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][251] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [251]),
        .Q(doutb[251]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][252] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [252]),
        .Q(doutb[252]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][253] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [253]),
        .Q(doutb[253]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][254] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [254]),
        .Q(doutb[254]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][255] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [255]),
        .Q(doutb[255]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][256] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [256]),
        .Q(doutb[256]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][257] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [257]),
        .Q(doutb[257]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][258] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [258]),
        .Q(doutb[258]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][259] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [259]),
        .Q(doutb[259]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][260] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [260]),
        .Q(doutb[260]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][261] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [261]),
        .Q(doutb[261]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][262] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [262]),
        .Q(doutb[262]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][263] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [263]),
        .Q(doutb[263]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][264] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [264]),
        .Q(doutb[264]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][265] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [265]),
        .Q(doutb[265]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][266] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [266]),
        .Q(doutb[266]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][267] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [267]),
        .Q(doutb[267]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][268] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [268]),
        .Q(doutb[268]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][269] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [269]),
        .Q(doutb[269]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][270] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [270]),
        .Q(doutb[270]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][271] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [271]),
        .Q(doutb[271]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][272] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [272]),
        .Q(doutb[272]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][273] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [273]),
        .Q(doutb[273]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][274] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [274]),
        .Q(doutb[274]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][275] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [275]),
        .Q(doutb[275]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][276] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [276]),
        .Q(doutb[276]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][277] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [277]),
        .Q(doutb[277]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][278] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [278]),
        .Q(doutb[278]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][279] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [279]),
        .Q(doutb[279]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][280] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [280]),
        .Q(doutb[280]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][281] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [281]),
        .Q(doutb[281]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][282] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [282]),
        .Q(doutb[282]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][283] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [283]),
        .Q(doutb[283]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][284] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [284]),
        .Q(doutb[284]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][285] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [285]),
        .Q(doutb[285]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][286] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [286]),
        .Q(doutb[286]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][287] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [287]),
        .Q(doutb[287]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][288] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [288]),
        .Q(doutb[288]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][289] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [289]),
        .Q(doutb[289]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][290] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [290]),
        .Q(doutb[290]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][291] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [291]),
        .Q(doutb[291]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][292] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [292]),
        .Q(doutb[292]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][293] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [293]),
        .Q(doutb[293]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][294] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [294]),
        .Q(doutb[294]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][295] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [295]),
        .Q(doutb[295]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][296] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [296]),
        .Q(doutb[296]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][297] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [297]),
        .Q(doutb[297]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][298] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [298]),
        .Q(doutb[298]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][299] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [299]),
        .Q(doutb[299]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][300] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [300]),
        .Q(doutb[300]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][301] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [301]),
        .Q(doutb[301]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][302] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [302]),
        .Q(doutb[302]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][303] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [303]),
        .Q(doutb[303]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][304] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [304]),
        .Q(doutb[304]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][305] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [305]),
        .Q(doutb[305]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][306] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [306]),
        .Q(doutb[306]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][307] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [307]),
        .Q(doutb[307]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][308] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [308]),
        .Q(doutb[308]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][309] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [309]),
        .Q(doutb[309]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][310] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [310]),
        .Q(doutb[310]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][311] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [311]),
        .Q(doutb[311]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][312] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [312]),
        .Q(doutb[312]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][313] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [313]),
        .Q(doutb[313]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][314] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [314]),
        .Q(doutb[314]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][315] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [315]),
        .Q(doutb[315]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][316] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [316]),
        .Q(doutb[316]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][317] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [317]),
        .Q(doutb[317]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][318] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [318]),
        .Q(doutb[318]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][319] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [319]),
        .Q(doutb[319]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][320] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [320]),
        .Q(doutb[320]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][321] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [321]),
        .Q(doutb[321]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][322] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [322]),
        .Q(doutb[322]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][323] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [323]),
        .Q(doutb[323]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][84] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [84]),
        .Q(doutb[84]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][85] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [85]),
        .Q(doutb[85]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][86] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [86]),
        .Q(doutb[86]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][87] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [87]),
        .Q(doutb[87]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][88] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [88]),
        .Q(doutb[88]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][89] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [89]),
        .Q(doutb[89]),
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
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][90] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [90]),
        .Q(doutb[90]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][91] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [91]),
        .Q(doutb[91]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][92] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [92]),
        .Q(doutb[92]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][93] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [93]),
        .Q(doutb[93]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][94] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [94]),
        .Q(doutb[94]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][95] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [95]),
        .Q(doutb[95]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][96] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [96]),
        .Q(doutb[96]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][97] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [97]),
        .Q(doutb[97]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][98] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [98]),
        .Q(doutb[98]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][99] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_rd_b.doutb_reg [99]),
        .Q(doutb[99]),
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
  (* RTL_RAM_BITS = "5184" *) 
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
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "112" *) 
  (* ram_slice_end = "125" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[113:112]),
        .DIB(dina[115:114]),
        .DIC(dina[117:116]),
        .DID(dina[119:118]),
        .DIE(dina[121:120]),
        .DIF(dina[123:122]),
        .DIG(dina[125:124]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [113:112]),
        .DOB(\gen_rd_b.doutb_reg0 [115:114]),
        .DOC(\gen_rd_b.doutb_reg0 [117:116]),
        .DOD(\gen_rd_b.doutb_reg0 [119:118]),
        .DOE(\gen_rd_b.doutb_reg0 [121:120]),
        .DOF(\gen_rd_b.doutb_reg0 [123:122]),
        .DOG(\gen_rd_b.doutb_reg0 [125:124]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "126" *) 
  (* ram_slice_end = "139" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_139 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[127:126]),
        .DIB(dina[129:128]),
        .DIC(dina[131:130]),
        .DID(dina[133:132]),
        .DIE(dina[135:134]),
        .DIF(dina[137:136]),
        .DIG(dina[139:138]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [127:126]),
        .DOB(\gen_rd_b.doutb_reg0 [129:128]),
        .DOC(\gen_rd_b.doutb_reg0 [131:130]),
        .DOD(\gen_rd_b.doutb_reg0 [133:132]),
        .DOE(\gen_rd_b.doutb_reg0 [135:134]),
        .DOF(\gen_rd_b.doutb_reg0 [137:136]),
        .DOG(\gen_rd_b.doutb_reg0 [139:138]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_139_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "140" *) 
  (* ram_slice_end = "153" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_140_153 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[141:140]),
        .DIB(dina[143:142]),
        .DIC(dina[145:144]),
        .DID(dina[147:146]),
        .DIE(dina[149:148]),
        .DIF(dina[151:150]),
        .DIG(dina[153:152]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [141:140]),
        .DOB(\gen_rd_b.doutb_reg0 [143:142]),
        .DOC(\gen_rd_b.doutb_reg0 [145:144]),
        .DOD(\gen_rd_b.doutb_reg0 [147:146]),
        .DOE(\gen_rd_b.doutb_reg0 [149:148]),
        .DOF(\gen_rd_b.doutb_reg0 [151:150]),
        .DOG(\gen_rd_b.doutb_reg0 [153:152]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_140_153_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
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
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "154" *) 
  (* ram_slice_end = "167" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_154_167 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[155:154]),
        .DIB(dina[157:156]),
        .DIC(dina[159:158]),
        .DID(dina[161:160]),
        .DIE(dina[163:162]),
        .DIF(dina[165:164]),
        .DIG(dina[167:166]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [155:154]),
        .DOB(\gen_rd_b.doutb_reg0 [157:156]),
        .DOC(\gen_rd_b.doutb_reg0 [159:158]),
        .DOD(\gen_rd_b.doutb_reg0 [161:160]),
        .DOE(\gen_rd_b.doutb_reg0 [163:162]),
        .DOF(\gen_rd_b.doutb_reg0 [165:164]),
        .DOG(\gen_rd_b.doutb_reg0 [167:166]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_154_167_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "168" *) 
  (* ram_slice_end = "181" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_168_181 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[169:168]),
        .DIB(dina[171:170]),
        .DIC(dina[173:172]),
        .DID(dina[175:174]),
        .DIE(dina[177:176]),
        .DIF(dina[179:178]),
        .DIG(dina[181:180]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [169:168]),
        .DOB(\gen_rd_b.doutb_reg0 [171:170]),
        .DOC(\gen_rd_b.doutb_reg0 [173:172]),
        .DOD(\gen_rd_b.doutb_reg0 [175:174]),
        .DOE(\gen_rd_b.doutb_reg0 [177:176]),
        .DOF(\gen_rd_b.doutb_reg0 [179:178]),
        .DOG(\gen_rd_b.doutb_reg0 [181:180]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_168_181_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "182" *) 
  (* ram_slice_end = "195" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_182_195 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[183:182]),
        .DIB(dina[185:184]),
        .DIC(dina[187:186]),
        .DID(dina[189:188]),
        .DIE(dina[191:190]),
        .DIF(dina[193:192]),
        .DIG(dina[195:194]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [183:182]),
        .DOB(\gen_rd_b.doutb_reg0 [185:184]),
        .DOC(\gen_rd_b.doutb_reg0 [187:186]),
        .DOD(\gen_rd_b.doutb_reg0 [189:188]),
        .DOE(\gen_rd_b.doutb_reg0 [191:190]),
        .DOF(\gen_rd_b.doutb_reg0 [193:192]),
        .DOG(\gen_rd_b.doutb_reg0 [195:194]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_182_195_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "196" *) 
  (* ram_slice_end = "209" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_196_209 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[197:196]),
        .DIB(dina[199:198]),
        .DIC(dina[201:200]),
        .DID(dina[203:202]),
        .DIE(dina[205:204]),
        .DIF(dina[207:206]),
        .DIG(dina[209:208]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [197:196]),
        .DOB(\gen_rd_b.doutb_reg0 [199:198]),
        .DOC(\gen_rd_b.doutb_reg0 [201:200]),
        .DOD(\gen_rd_b.doutb_reg0 [203:202]),
        .DOE(\gen_rd_b.doutb_reg0 [205:204]),
        .DOF(\gen_rd_b.doutb_reg0 [207:206]),
        .DOG(\gen_rd_b.doutb_reg0 [209:208]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_196_209_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "210" *) 
  (* ram_slice_end = "223" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_210_223 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[211:210]),
        .DIB(dina[213:212]),
        .DIC(dina[215:214]),
        .DID(dina[217:216]),
        .DIE(dina[219:218]),
        .DIF(dina[221:220]),
        .DIG(dina[223:222]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [211:210]),
        .DOB(\gen_rd_b.doutb_reg0 [213:212]),
        .DOC(\gen_rd_b.doutb_reg0 [215:214]),
        .DOD(\gen_rd_b.doutb_reg0 [217:216]),
        .DOE(\gen_rd_b.doutb_reg0 [219:218]),
        .DOF(\gen_rd_b.doutb_reg0 [221:220]),
        .DOG(\gen_rd_b.doutb_reg0 [223:222]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_210_223_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "224" *) 
  (* ram_slice_end = "237" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_224_237 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[225:224]),
        .DIB(dina[227:226]),
        .DIC(dina[229:228]),
        .DID(dina[231:230]),
        .DIE(dina[233:232]),
        .DIF(dina[235:234]),
        .DIG(dina[237:236]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [225:224]),
        .DOB(\gen_rd_b.doutb_reg0 [227:226]),
        .DOC(\gen_rd_b.doutb_reg0 [229:228]),
        .DOD(\gen_rd_b.doutb_reg0 [231:230]),
        .DOE(\gen_rd_b.doutb_reg0 [233:232]),
        .DOF(\gen_rd_b.doutb_reg0 [235:234]),
        .DOG(\gen_rd_b.doutb_reg0 [237:236]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_224_237_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "238" *) 
  (* ram_slice_end = "251" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_238_251 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[239:238]),
        .DIB(dina[241:240]),
        .DIC(dina[243:242]),
        .DID(dina[245:244]),
        .DIE(dina[247:246]),
        .DIF(dina[249:248]),
        .DIG(dina[251:250]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [239:238]),
        .DOB(\gen_rd_b.doutb_reg0 [241:240]),
        .DOC(\gen_rd_b.doutb_reg0 [243:242]),
        .DOD(\gen_rd_b.doutb_reg0 [245:244]),
        .DOE(\gen_rd_b.doutb_reg0 [247:246]),
        .DOF(\gen_rd_b.doutb_reg0 [249:248]),
        .DOG(\gen_rd_b.doutb_reg0 [251:250]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_238_251_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "252" *) 
  (* ram_slice_end = "265" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_252_265 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[253:252]),
        .DIB(dina[255:254]),
        .DIC(dina[257:256]),
        .DID(dina[259:258]),
        .DIE(dina[261:260]),
        .DIF(dina[263:262]),
        .DIG(dina[265:264]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [253:252]),
        .DOB(\gen_rd_b.doutb_reg0 [255:254]),
        .DOC(\gen_rd_b.doutb_reg0 [257:256]),
        .DOD(\gen_rd_b.doutb_reg0 [259:258]),
        .DOE(\gen_rd_b.doutb_reg0 [261:260]),
        .DOF(\gen_rd_b.doutb_reg0 [263:262]),
        .DOG(\gen_rd_b.doutb_reg0 [265:264]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_252_265_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "266" *) 
  (* ram_slice_end = "279" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_266_279 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[267:266]),
        .DIB(dina[269:268]),
        .DIC(dina[271:270]),
        .DID(dina[273:272]),
        .DIE(dina[275:274]),
        .DIF(dina[277:276]),
        .DIG(dina[279:278]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [267:266]),
        .DOB(\gen_rd_b.doutb_reg0 [269:268]),
        .DOC(\gen_rd_b.doutb_reg0 [271:270]),
        .DOD(\gen_rd_b.doutb_reg0 [273:272]),
        .DOE(\gen_rd_b.doutb_reg0 [275:274]),
        .DOF(\gen_rd_b.doutb_reg0 [277:276]),
        .DOG(\gen_rd_b.doutb_reg0 [279:278]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_266_279_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "280" *) 
  (* ram_slice_end = "293" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_280_293 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[281:280]),
        .DIB(dina[283:282]),
        .DIC(dina[285:284]),
        .DID(dina[287:286]),
        .DIE(dina[289:288]),
        .DIF(dina[291:290]),
        .DIG(dina[293:292]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [281:280]),
        .DOB(\gen_rd_b.doutb_reg0 [283:282]),
        .DOC(\gen_rd_b.doutb_reg0 [285:284]),
        .DOD(\gen_rd_b.doutb_reg0 [287:286]),
        .DOE(\gen_rd_b.doutb_reg0 [289:288]),
        .DOF(\gen_rd_b.doutb_reg0 [291:290]),
        .DOG(\gen_rd_b.doutb_reg0 [293:292]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_280_293_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
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
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "294" *) 
  (* ram_slice_end = "307" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_294_307 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[295:294]),
        .DIB(dina[297:296]),
        .DIC(dina[299:298]),
        .DID(dina[301:300]),
        .DIE(dina[303:302]),
        .DIF(dina[305:304]),
        .DIG(dina[307:306]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [295:294]),
        .DOB(\gen_rd_b.doutb_reg0 [297:296]),
        .DOC(\gen_rd_b.doutb_reg0 [299:298]),
        .DOD(\gen_rd_b.doutb_reg0 [301:300]),
        .DOE(\gen_rd_b.doutb_reg0 [303:302]),
        .DOF(\gen_rd_b.doutb_reg0 [305:304]),
        .DOG(\gen_rd_b.doutb_reg0 [307:306]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_294_307_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "308" *) 
  (* ram_slice_end = "321" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_308_321 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[309:308]),
        .DIB(dina[311:310]),
        .DIC(dina[313:312]),
        .DID(dina[315:314]),
        .DIE(dina[317:316]),
        .DIF(dina[319:318]),
        .DIG(dina[321:320]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [309:308]),
        .DOB(\gen_rd_b.doutb_reg0 [311:310]),
        .DOC(\gen_rd_b.doutb_reg0 [313:312]),
        .DOD(\gen_rd_b.doutb_reg0 [315:314]),
        .DOE(\gen_rd_b.doutb_reg0 [317:316]),
        .DOF(\gen_rd_b.doutb_reg0 [319:318]),
        .DOG(\gen_rd_b.doutb_reg0 [321:320]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_308_321_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "322" *) 
  (* ram_slice_end = "323" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[323:322]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DIE({1'b0,1'b0}),
        .DIF({1'b0,1'b0}),
        .DIG({1'b0,1'b0}),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [323:322]),
        .DOB(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOB_UNCONNECTED [1:0]),
        .DOC(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOD_UNCONNECTED [1:0]),
        .DOE(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOE_UNCONNECTED [1:0]),
        .DOF(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOF_UNCONNECTED [1:0]),
        .DOG(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOG_UNCONNECTED [1:0]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_322_323_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
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
  (* RTL_RAM_BITS = "5184" *) 
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
  (* RTL_RAM_BITS = "5184" *) 
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
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "84" *) 
  (* ram_slice_end = "97" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[85:84]),
        .DIB(dina[87:86]),
        .DIC(dina[89:88]),
        .DID(dina[91:90]),
        .DIE(dina[93:92]),
        .DIF(dina[95:94]),
        .DIG(dina[97:96]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [85:84]),
        .DOB(\gen_rd_b.doutb_reg0 [87:86]),
        .DOC(\gen_rd_b.doutb_reg0 [89:88]),
        .DOD(\gen_rd_b.doutb_reg0 [91:90]),
        .DOE(\gen_rd_b.doutb_reg0 [93:92]),
        .DOF(\gen_rd_b.doutb_reg0 [95:94]),
        .DOG(\gen_rd_b.doutb_reg0 [97:96]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED [1:0]),
        .WCLK(clka),
        .WE(ena));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "5184" *) 
  (* RTL_RAM_NAME = "gen_wr_a.gen_word_narrow.mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "15" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "98" *) 
  (* ram_slice_end = "111" *) 
  RAM32M16 #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .INIT_E(64'h0000000000000000),
    .INIT_F(64'h0000000000000000),
    .INIT_G(64'h0000000000000000),
    .INIT_H(64'h0000000000000000)) 
    \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111 
       (.ADDRA({1'b0,addrb}),
        .ADDRB({1'b0,addrb}),
        .ADDRC({1'b0,addrb}),
        .ADDRD({1'b0,addrb}),
        .ADDRE({1'b0,addrb}),
        .ADDRF({1'b0,addrb}),
        .ADDRG({1'b0,addrb}),
        .ADDRH({1'b0,addra}),
        .DIA(dina[99:98]),
        .DIB(dina[101:100]),
        .DIC(dina[103:102]),
        .DID(dina[105:104]),
        .DIE(dina[107:106]),
        .DIF(dina[109:108]),
        .DIG(dina[111:110]),
        .DIH({1'b0,1'b0}),
        .DOA(\gen_rd_b.doutb_reg0 [99:98]),
        .DOB(\gen_rd_b.doutb_reg0 [101:100]),
        .DOC(\gen_rd_b.doutb_reg0 [103:102]),
        .DOD(\gen_rd_b.doutb_reg0 [105:104]),
        .DOE(\gen_rd_b.doutb_reg0 [107:106]),
        .DOF(\gen_rd_b.doutb_reg0 [109:108]),
        .DOG(\gen_rd_b.doutb_reg0 [111:110]),
        .DOH(\NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED [1:0]),
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
