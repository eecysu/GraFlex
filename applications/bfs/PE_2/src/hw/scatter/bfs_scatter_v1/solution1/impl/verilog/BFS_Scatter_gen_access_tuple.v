// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module BFS_Scatter_gen_access_tuple (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ofst_buff_address0,
        ofst_buff_ce0,
        ofst_buff_q0,
        ofst_buff_address1,
        ofst_buff_ce1,
        ofst_buff_q1,
        rlt_tail_idx,
        batchIdx,
        n_mem_tuples,
        n_mem_tuples_ap_vld,
        mem_req_buff_address1,
        mem_req_buff_ce1,
        mem_req_buff_we1,
        mem_req_buff_d1
);

parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_pp0_stage0 = 10'd32;
parameter    ap_ST_fsm_pp0_stage1 = 10'd64;
parameter    ap_ST_fsm_state9 = 10'd128;
parameter    ap_ST_fsm_state10 = 10'd256;
parameter    ap_ST_fsm_state11 = 10'd512;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [19:0] ofst_buff_address0;
output   ofst_buff_ce0;
input  [63:0] ofst_buff_q0;
output  [19:0] ofst_buff_address1;
output   ofst_buff_ce1;
input  [63:0] ofst_buff_q1;
input  [31:0] rlt_tail_idx;
input  [25:0] batchIdx;
output  [15:0] n_mem_tuples;
output   n_mem_tuples_ap_vld;
output  [11:0] mem_req_buff_address1;
output   mem_req_buff_ce1;
output   mem_req_buff_we1;
output  [31:0] mem_req_buff_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ofst_buff_ce0;
reg ofst_buff_ce1;
reg[15:0] n_mem_tuples;
reg n_mem_tuples_ap_vld;
reg[11:0] mem_req_buff_address1;
reg mem_req_buff_ce1;
reg mem_req_buff_we1;
reg[31:0] mem_req_buff_d1;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] empty_50_reg_269;
reg   [10:0] j_reg_281;
reg   [27:0] ofstAddr_V_8_reg_292;
reg   [27:0] ofstAddr_V_5_reg_312;
wire   [31:0] mul_fu_368_p3;
reg   [31:0] mul_reg_1041;
wire   [20:0] trunc_ln_fu_380_p3;
reg   [20:0] trunc_ln_reg_1046;
wire   [6:0] add_ln90_fu_396_p2;
reg   [6:0] add_ln90_reg_1054;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln92_1_fu_410_p1;
reg   [0:0] trunc_ln92_1_reg_1059;
wire   [0:0] tmp_fu_388_p3;
reg   [19:0] lshr_ln_reg_1069;
wire   [0:0] icmp_ln93_fu_424_p2;
wire    ap_CS_fsm_state3;
wire   [23:0] trunc_ln213_fu_501_p1;
reg   [23:0] trunc_ln213_reg_1086;
wire    ap_CS_fsm_state4;
reg   [3:0] padDecr_V_reg_1091;
wire   [13:0] sub_ln103_fu_519_p2;
reg   [13:0] sub_ln103_reg_1096;
wire   [27:0] ofstAddr_V_fu_525_p3;
wire    ap_CS_fsm_state5;
wire   [3:0] n_rmdr_elem_fu_586_p1;
reg   [3:0] n_rmdr_elem_reg_1107;
wire   [10:0] trunc_ln5_fu_590_p4;
reg   [10:0] trunc_ln5_reg_1114;
wire   [15:0] zext_ln81_fu_600_p1;
reg   [15:0] zext_ln81_reg_1119;
wire   [0:0] icmp_ln110_fu_604_p2;
reg   [0:0] icmp_ln110_reg_1124;
wire   [10:0] j_1_fu_610_p2;
reg   [10:0] j_1_reg_1128;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state6_pp0_stage0_iter0;
wire    ap_block_state8_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln110_1_fu_616_p2;
reg   [0:0] icmp_ln110_1_reg_1133;
reg   [0:0] tmp_3_reg_1137;
wire   [15:0] sub_ln1364_1_fu_687_p2;
reg   [15:0] sub_ln1364_1_reg_1142;
reg   [15:0] trunc_ln1364_2_reg_1147;
wire   [0:0] icmp_ln116_fu_726_p2;
reg   [0:0] icmp_ln116_reg_1152;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state7_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] add_ln121_fu_768_p2;
reg   [15:0] add_ln121_reg_1156;
wire   [27:0] ofstAddr_V_9_fu_787_p2;
reg   [27:0] ofstAddr_V_9_reg_1161;
wire   [3:0] trunc_ln123_fu_799_p1;
reg   [3:0] trunc_ln123_reg_1166;
wire   [15:0] add_ln126_fu_822_p2;
reg   [15:0] add_ln126_reg_1171;
reg   [0:0] tmp_5_reg_1176;
wire    ap_CS_fsm_state9;
reg   [15:0] trunc_ln1364_4_reg_1181;
reg   [15:0] trunc_ln1364_5_reg_1186;
wire   [0:0] icmp_ln131_fu_936_p2;
reg   [0:0] icmp_ln131_reg_1191;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln132_fu_941_p2;
reg   [0:0] icmp_ln132_reg_1195;
wire   [27:0] ofstAddr_V_10_fu_992_p2;
reg   [27:0] ofstAddr_V_10_reg_1199;
wire   [3:0] v1_V_4_fu_1003_p2;
reg   [3:0] v1_V_4_reg_1204;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] k_reg_246;
wire    ap_CS_fsm_state11;
reg   [15:0] n_mem_tuples_promoted_reg_257;
reg   [15:0] ap_phi_mux_n_mem_tuples_promoted14_phi_fu_360_p4;
wire    ap_block_pp0_stage0;
reg   [10:0] ap_phi_mux_j_phi_fu_285_p4;
reg   [27:0] ap_phi_mux_ofstAddr_V_8_phi_fu_295_p4;
reg   [15:0] ap_phi_mux_empty_52_phi_fu_305_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_empty_52_reg_302;
wire   [27:0] ofstAddr_V_6_fu_746_p2;
wire   [27:0] ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_312;
wire   [27:0] ofstAddr_V_4_fu_815_p2;
reg   [27:0] ap_phi_mux_rhs_phi_fu_326_p4;
reg   [27:0] rhs_reg_323;
reg   [15:0] empty_53_reg_334;
wire   [15:0] add_ln136_fu_1009_p2;
reg   [15:0] ap_phi_mux_empty_54_phi_fu_349_p4;
reg   [15:0] empty_54_reg_346;
wire   [15:0] add_ln140_fu_1028_p2;
reg   [15:0] n_mem_tuples_promoted14_reg_356;
wire   [63:0] zext_ln95_fu_439_p1;
wire   [63:0] zext_ln95_1_fu_454_p1;
wire   [63:0] zext_ln120_fu_732_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln123_fu_841_p1;
wire   [63:0] zext_ln133_fu_946_p1;
wire   [63:0] zext_ln138_fu_1023_p1;
wire   [31:0] p_Result_s_fu_737_p3;
wire   [31:0] p_Result_3_fu_759_p3;
wire   [31:0] p_Result_4_fu_833_p3;
wire   [31:0] p_Result_5_fu_956_p3;
wire   [31:0] p_Result_6_fu_971_p3;
wire   [31:0] p_Result_7_fu_1016_p3;
wire   [14:0] trunc_ln92_fu_376_p1;
wire   [31:0] zext_ln90_fu_402_p1;
wire   [20:0] zext_ln92_fu_406_p1;
wire   [31:0] tmpVid_fu_414_p2;
wire   [20:0] add_ln79_fu_419_p2;
wire   [19:0] add_ln96_fu_443_p2;
wire   [19:0] select_ln674_fu_448_p3;
wire   [31:0] tmp_1_fu_463_p4;
wire   [31:0] trunc_ln674_fu_459_p1;
wire   [13:0] trunc_ln99_fu_490_p1;
wire   [13:0] tmp_2_fu_480_p4;
wire   [31:0] select_ln98_fu_473_p3;
wire   [13:0] select_ln99_fu_494_p3;
wire   [13:0] trunc_ln103_fu_515_p1;
wire   [15:0] shl_ln_fu_532_p3;
wire   [15:0] zext_ln103_fu_539_p1;
wire   [15:0] vDegree_fu_542_p2;
wire   [1:0] trunc_ln80_fu_548_p1;
wire   [13:0] trunc_ln4_fu_558_p4;
wire   [14:0] zext_ln105_fu_568_p1;
wire   [0:0] icmp_ln105_fu_552_p2;
wire   [14:0] add_ln105_fu_572_p2;
wire   [14:0] realDeg_fu_578_p3;
wire   [15:0] tmp_6_fu_621_p4;
wire   [27:0] shl_ln1_fu_631_p3;
wire   [27:0] next4K_V_fu_639_p2;
wire   [28:0] zext_ln215_fu_645_p1;
wire   [28:0] zext_ln215_1_fu_649_p1;
wire   [28:0] ret_fu_653_p2;
wire   [19:0] trunc_ln1347_fu_659_p1;
wire   [19:0] sub_ln1364_fu_671_p2;
wire   [15:0] trunc_ln1364_1_fu_677_p4;
wire   [15:0] n_elem_margin_fu_703_p3;
wire   [11:0] tmp_4_fu_716_p4;
wire   [3:0] trunc_ln120_fu_708_p1;
wire   [3:0] v1_V_fu_753_p2;
wire   [7:0] shl_ln2_fu_775_p3;
wire   [27:0] zext_ln691_fu_783_p1;
wire   [4:0] trunc_ln116_fu_712_p1;
wire   [4:0] sub_ln124_fu_793_p2;
wire   [8:0] shl_ln691_1_fu_803_p3;
wire   [27:0] zext_ln691_1_fu_811_p1;
wire   [3:0] v1_V_1_fu_828_p2;
wire   [15:0] tmp_7_fu_845_p4;
wire   [27:0] shl_ln213_1_fu_855_p3;
wire   [27:0] next4K_V_1_fu_863_p2;
wire   [28:0] zext_ln215_2_fu_869_p1;
wire   [28:0] zext_ln215_3_fu_873_p1;
wire   [28:0] ret_1_fu_877_p2;
wire   [19:0] trunc_ln1347_1_fu_883_p1;
wire   [19:0] sub_ln1364_2_fu_895_p2;
wire   [15:0] sub_ln1364_3_fu_921_p2;
wire   [15:0] n_elem_margin_1_fu_926_p3;
wire   [3:0] v1_V_2_fu_951_p2;
wire   [3:0] trunc_ln135_fu_932_p1;
wire   [3:0] v1_V_3_fu_965_p2;
wire   [7:0] shl_ln691_2_fu_980_p3;
wire   [27:0] zext_ln691_2_fu_988_p1;
wire   [3:0] add_ln138_fu_998_p2;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
reg    ap_condition_175;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state6) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
        empty_50_reg_269 <= n_mem_tuples_promoted_reg_257;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_50_reg_269 <= add_ln126_reg_1171;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd1))) begin
        empty_53_reg_334 <= n_mem_tuples_promoted_reg_257;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1124 == 1'd0))) begin
        empty_53_reg_334 <= empty_50_reg_269;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd0) & (icmp_ln131_fu_936_p2 == 1'd0))) begin
        empty_54_reg_346 <= empty_53_reg_334;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1195 == 1'd1) & (icmp_ln131_reg_1191 == 1'd0))) begin
        empty_54_reg_346 <= add_ln136_fu_1009_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
        j_reg_281 <= 11'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_reg_281 <= j_1_reg_1128;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        k_reg_246 <= add_ln90_reg_1054;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_246 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln131_fu_936_p2 == 1'd1))) begin
        n_mem_tuples_promoted14_reg_356 <= empty_53_reg_334;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1191 == 1'd0))) begin
        n_mem_tuples_promoted14_reg_356 <= add_ln140_fu_1028_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        n_mem_tuples_promoted_reg_257 <= ap_phi_mux_n_mem_tuples_promoted14_phi_fu_360_p4;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n_mem_tuples_promoted_reg_257 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if (((icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0))) begin
            ofstAddr_V_5_reg_312 <= ofstAddr_V_4_fu_815_p2;
        end else if (((icmp_ln116_fu_726_p2 == 1'd0) & (icmp_ln110_1_reg_1133 == 1'd0))) begin
            ofstAddr_V_5_reg_312 <= ofstAddr_V_6_fu_746_p2;
        end else if ((1'b1 == 1'b1)) begin
            ofstAddr_V_5_reg_312 <= ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_312;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
        ofstAddr_V_8_reg_292 <= ofstAddr_V_fu_525_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ofstAddr_V_8_reg_292 <= ofstAddr_V_5_reg_312;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd1))) begin
        rhs_reg_323 <= ofstAddr_V_fu_525_p3;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1124 == 1'd0))) begin
        rhs_reg_323 <= ofstAddr_V_8_reg_292;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_ln121_reg_1156 <= add_ln121_fu_768_p2;
        ofstAddr_V_9_reg_1161 <= ofstAddr_V_9_fu_787_p2;
        trunc_ln123_reg_1166 <= trunc_ln123_fu_799_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln126_reg_1171 <= add_ln126_fu_822_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln90_reg_1054 <= add_ln90_fu_396_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln110_1_reg_1133 <= icmp_ln110_1_fu_616_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln110_reg_1124 <= icmp_ln110_fu_604_p2;
        n_rmdr_elem_reg_1107 <= n_rmdr_elem_fu_586_p1;
        trunc_ln5_reg_1114 <= {{realDeg_fu_578_p3[14:4]}};
        zext_ln81_reg_1119[3 : 0] <= zext_ln81_fu_600_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln116_reg_1152 <= icmp_ln116_fu_726_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln131_reg_1191 <= icmp_ln131_fu_936_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln131_fu_936_p2 == 1'd0))) begin
        icmp_ln132_reg_1195 <= icmp_ln132_fu_941_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_1_reg_1128 <= j_1_fu_610_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln93_fu_424_p2 == 1'd0) & (tmp_fu_388_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        lshr_ln_reg_1069 <= {{add_ln79_fu_419_p2[20:1]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_reg_1041[31 : 6] <= mul_fu_368_p3[31 : 6];
        trunc_ln_reg_1046[20 : 6] <= trunc_ln_fu_380_p3[20 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd1) & (icmp_ln131_fu_936_p2 == 1'd0))) begin
        ofstAddr_V_10_reg_1199 <= ofstAddr_V_10_fu_992_p2;
        v1_V_4_reg_1204 <= v1_V_4_fu_1003_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        padDecr_V_reg_1091 <= {{select_ln98_fu_473_p3[31:28]}};
        sub_ln103_reg_1096 <= sub_ln103_fu_519_p2;
        trunc_ln213_reg_1086 <= trunc_ln213_fu_501_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_fu_616_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub_ln1364_1_reg_1142 <= sub_ln1364_1_fu_687_p2;
        tmp_3_reg_1137 <= ret_fu_653_p2[32'd28];
        trunc_ln1364_2_reg_1147 <= {{ret_fu_653_p2[19:4]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_5_reg_1176 <= ret_1_fu_877_p2[32'd28];
        trunc_ln1364_4_reg_1181 <= {{sub_ln1364_2_fu_895_p2[19:4]}};
        trunc_ln1364_5_reg_1186 <= {{ret_1_fu_877_p2[19:4]}};
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_388_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln92_1_reg_1059 <= trunc_ln92_1_fu_410_p1;
    end
end

always @ (*) begin
    if ((icmp_ln110_1_fu_616_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_424_p2 == 1'd1) | (tmp_fu_388_p3 == 1'd1))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln110_1_reg_1133 == 1'd0)) begin
        if ((icmp_ln116_fu_726_p2 == 1'd1)) begin
            ap_phi_mux_empty_52_phi_fu_305_p4 = add_ln121_fu_768_p2;
        end else if ((icmp_ln116_fu_726_p2 == 1'd0)) begin
            ap_phi_mux_empty_52_phi_fu_305_p4 = empty_50_reg_269;
        end else begin
            ap_phi_mux_empty_52_phi_fu_305_p4 = ap_phi_reg_pp0_iter0_empty_52_reg_302;
        end
    end else begin
        ap_phi_mux_empty_52_phi_fu_305_p4 = ap_phi_reg_pp0_iter0_empty_52_reg_302;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1195 == 1'd1) & (icmp_ln131_reg_1191 == 1'd0))) begin
        ap_phi_mux_empty_54_phi_fu_349_p4 = add_ln136_fu_1009_p2;
    end else begin
        ap_phi_mux_empty_54_phi_fu_349_p4 = empty_54_reg_346;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_phi_fu_285_p4 = j_1_reg_1128;
    end else begin
        ap_phi_mux_j_phi_fu_285_p4 = j_reg_281;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1191 == 1'd0))) begin
        ap_phi_mux_n_mem_tuples_promoted14_phi_fu_360_p4 = add_ln140_fu_1028_p2;
    end else begin
        ap_phi_mux_n_mem_tuples_promoted14_phi_fu_360_p4 = n_mem_tuples_promoted14_reg_356;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_ofstAddr_V_8_phi_fu_295_p4 = ofstAddr_V_5_reg_312;
    end else begin
        ap_phi_mux_ofstAddr_V_8_phi_fu_295_p4 = ofstAddr_V_8_reg_292;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1124 == 1'd0))) begin
        ap_phi_mux_rhs_phi_fu_326_p4 = ofstAddr_V_8_reg_292;
    end else begin
        ap_phi_mux_rhs_phi_fu_326_p4 = rhs_reg_323;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_424_p2 == 1'd1) | (tmp_fu_388_p3 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mem_req_buff_address1 = zext_ln138_fu_1023_p1;
    end else if ((((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd0) & (icmp_ln131_fu_936_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd1) & (icmp_ln131_fu_936_p2 == 1'd0)))) begin
        mem_req_buff_address1 = zext_ln133_fu_946_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        mem_req_buff_address1 = zext_ln123_fu_841_p1;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_address1 = zext_ln120_fu_732_p1;
    end else begin
        mem_req_buff_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd0) & (icmp_ln131_fu_936_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd1) & (icmp_ln131_fu_936_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_ce1 = 1'b1;
    end else begin
        mem_req_buff_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mem_req_buff_d1 = p_Result_7_fu_1016_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd1) & (icmp_ln131_fu_936_p2 == 1'd0))) begin
        mem_req_buff_d1 = p_Result_6_fu_971_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd0) & (icmp_ln131_fu_936_p2 == 1'd0))) begin
        mem_req_buff_d1 = p_Result_5_fu_956_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        mem_req_buff_d1 = p_Result_4_fu_833_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mem_req_buff_d1 = p_Result_3_fu_759_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mem_req_buff_d1 = p_Result_s_fu_737_p3;
    end else begin
        mem_req_buff_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln116_reg_1152 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1195 == 1'd1) & (icmp_ln131_reg_1191 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd0) & (icmp_ln131_fu_936_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_941_p2 == 1'd1) & (icmp_ln131_fu_936_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd0) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_726_p2 == 1'd1) & (icmp_ln110_1_reg_1133 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_we1 = 1'b1;
    end else begin
        mem_req_buff_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1191 == 1'd0))) begin
        n_mem_tuples = add_ln140_fu_1028_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1124 == 1'd0))) begin
        n_mem_tuples = empty_50_reg_269;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n_mem_tuples = 16'd0;
    end else begin
        n_mem_tuples = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1191 == 1'd0)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1124 == 1'd0)))) begin
        n_mem_tuples_ap_vld = 1'b1;
    end else begin
        n_mem_tuples_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ofst_buff_ce0 = 1'b1;
    end else begin
        ofst_buff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ofst_buff_ce1 = 1'b1;
    end else begin
        ofst_buff_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_424_p2 == 1'd1) | (tmp_fu_388_p3 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_604_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln110_1_fu_616_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln110_1_fu_616_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln105_fu_572_p2 = (zext_ln105_fu_568_p1 + 15'd1);

assign add_ln121_fu_768_p2 = (empty_50_reg_269 + 16'd1);

assign add_ln126_fu_822_p2 = (ap_phi_mux_empty_52_phi_fu_305_p4 + 16'd1);

assign add_ln136_fu_1009_p2 = (empty_53_reg_334 + 16'd1);

assign add_ln138_fu_998_p2 = ($signed(n_rmdr_elem_reg_1107) + $signed(4'd15));

assign add_ln140_fu_1028_p2 = (ap_phi_mux_empty_54_phi_fu_349_p4 + 16'd1);

assign add_ln79_fu_419_p2 = (zext_ln92_fu_406_p1 + trunc_ln_reg_1046);

assign add_ln90_fu_396_p2 = (k_reg_246 + 7'd1);

assign add_ln96_fu_443_p2 = (lshr_ln_reg_1069 + 20'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_condition_175 = ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_phi_reg_pp0_iter0_empty_52_reg_302 = 'bx;

assign ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_312 = 'bx;

assign icmp_ln105_fu_552_p2 = ((trunc_ln80_fu_548_p1 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln110_1_fu_616_p2 = ((ap_phi_mux_j_phi_fu_285_p4 == trunc_ln5_reg_1114) ? 1'b1 : 1'b0);

assign icmp_ln110_fu_604_p2 = ((trunc_ln5_fu_590_p4 == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln116_fu_726_p2 = ((tmp_4_fu_716_p4 == 12'd0) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_936_p2 = ((n_rmdr_elem_reg_1107 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln132_fu_941_p2 = ((n_elem_margin_1_fu_926_p3 < zext_ln81_reg_1119) ? 1'b1 : 1'b0);

assign icmp_ln93_fu_424_p2 = ((tmpVid_fu_414_p2 > rlt_tail_idx) ? 1'b1 : 1'b0);

assign j_1_fu_610_p2 = (ap_phi_mux_j_phi_fu_285_p4 + 11'd1);

assign mul_fu_368_p3 = {{batchIdx}, {6'd0}};

assign n_elem_margin_1_fu_926_p3 = ((tmp_5_reg_1176[0:0] == 1'b1) ? sub_ln1364_3_fu_921_p2 : trunc_ln1364_5_reg_1186);

assign n_elem_margin_fu_703_p3 = ((tmp_3_reg_1137[0:0] == 1'b1) ? sub_ln1364_1_reg_1142 : trunc_ln1364_2_reg_1147);

assign n_rmdr_elem_fu_586_p1 = realDeg_fu_578_p3[3:0];

assign next4K_V_1_fu_863_p2 = (shl_ln213_1_fu_855_p3 + 28'd4096);

assign next4K_V_fu_639_p2 = (shl_ln1_fu_631_p3 + 28'd4096);

assign ofstAddr_V_10_fu_992_p2 = (zext_ln691_2_fu_988_p1 + rhs_reg_323);

assign ofstAddr_V_4_fu_815_p2 = (zext_ln691_1_fu_811_p1 + ofstAddr_V_9_fu_787_p2);

assign ofstAddr_V_6_fu_746_p2 = (ofstAddr_V_8_reg_292 + 28'd256);

assign ofstAddr_V_9_fu_787_p2 = (zext_ln691_fu_783_p1 + ofstAddr_V_8_reg_292);

assign ofstAddr_V_fu_525_p3 = {{trunc_ln213_reg_1086}, {4'd0}};

assign ofst_buff_address0 = zext_ln95_1_fu_454_p1;

assign ofst_buff_address1 = zext_ln95_fu_439_p1;

assign p_Result_3_fu_759_p3 = {{v1_V_fu_753_p2}, {ofstAddr_V_8_reg_292}};

assign p_Result_4_fu_833_p3 = {{v1_V_1_fu_828_p2}, {ofstAddr_V_9_reg_1161}};

assign p_Result_5_fu_956_p3 = {{v1_V_2_fu_951_p2}, {rhs_reg_323}};

assign p_Result_6_fu_971_p3 = {{v1_V_3_fu_965_p2}, {rhs_reg_323}};

assign p_Result_7_fu_1016_p3 = {{v1_V_4_reg_1204}, {ofstAddr_V_10_reg_1199}};

assign p_Result_s_fu_737_p3 = {{4'd15}, {ofstAddr_V_8_reg_292}};

assign realDeg_fu_578_p3 = ((icmp_ln105_fu_552_p2[0:0] == 1'b1) ? zext_ln105_fu_568_p1 : add_ln105_fu_572_p2);

assign ret_1_fu_877_p2 = (zext_ln215_2_fu_869_p1 - zext_ln215_3_fu_873_p1);

assign ret_fu_653_p2 = (zext_ln215_fu_645_p1 - zext_ln215_1_fu_649_p1);

assign select_ln674_fu_448_p3 = ((trunc_ln92_1_reg_1059[0:0] == 1'b1) ? add_ln96_fu_443_p2 : lshr_ln_reg_1069);

assign select_ln98_fu_473_p3 = ((trunc_ln92_1_reg_1059[0:0] == 1'b1) ? tmp_1_fu_463_p4 : trunc_ln674_fu_459_p1);

assign select_ln99_fu_494_p3 = ((trunc_ln92_1_reg_1059[0:0] == 1'b1) ? trunc_ln99_fu_490_p1 : tmp_2_fu_480_p4);

assign shl_ln1_fu_631_p3 = {{tmp_6_fu_621_p4}, {12'd0}};

assign shl_ln213_1_fu_855_p3 = {{tmp_7_fu_845_p4}, {12'd0}};

assign shl_ln2_fu_775_p3 = {{trunc_ln120_fu_708_p1}, {4'd0}};

assign shl_ln691_1_fu_803_p3 = {{sub_ln124_fu_793_p2}, {4'd0}};

assign shl_ln691_2_fu_980_p3 = {{trunc_ln135_fu_932_p1}, {4'd0}};

assign shl_ln_fu_532_p3 = {{sub_ln103_reg_1096}, {2'd0}};

assign sub_ln103_fu_519_p2 = (select_ln99_fu_494_p3 - trunc_ln103_fu_515_p1);

assign sub_ln124_fu_793_p2 = ($signed(5'd16) - $signed(trunc_ln116_fu_712_p1));

assign sub_ln1364_1_fu_687_p2 = (16'd0 - trunc_ln1364_1_fu_677_p4);

assign sub_ln1364_2_fu_895_p2 = (20'd0 - trunc_ln1347_1_fu_883_p1);

assign sub_ln1364_3_fu_921_p2 = (16'd0 - trunc_ln1364_4_reg_1181);

assign sub_ln1364_fu_671_p2 = (20'd0 - trunc_ln1347_fu_659_p1);

assign tmpVid_fu_414_p2 = (zext_ln90_fu_402_p1 + mul_reg_1041);

assign tmp_1_fu_463_p4 = {{ofst_buff_q1[63:32]}};

assign tmp_2_fu_480_p4 = {{ofst_buff_q0[45:32]}};

assign tmp_4_fu_716_p4 = {{n_elem_margin_fu_703_p3[15:4]}};

assign tmp_6_fu_621_p4 = {{ap_phi_mux_ofstAddr_V_8_phi_fu_295_p4[27:12]}};

assign tmp_7_fu_845_p4 = {{ap_phi_mux_rhs_phi_fu_326_p4[27:12]}};

assign tmp_fu_388_p3 = k_reg_246[32'd6];

assign trunc_ln103_fu_515_p1 = select_ln98_fu_473_p3[13:0];

assign trunc_ln116_fu_712_p1 = n_elem_margin_fu_703_p3[4:0];

assign trunc_ln120_fu_708_p1 = n_elem_margin_fu_703_p3[3:0];

assign trunc_ln123_fu_799_p1 = sub_ln124_fu_793_p2[3:0];

assign trunc_ln1347_1_fu_883_p1 = ret_1_fu_877_p2[19:0];

assign trunc_ln1347_fu_659_p1 = ret_fu_653_p2[19:0];

assign trunc_ln135_fu_932_p1 = n_elem_margin_1_fu_926_p3[3:0];

assign trunc_ln1364_1_fu_677_p4 = {{sub_ln1364_fu_671_p2[19:4]}};

assign trunc_ln213_fu_501_p1 = select_ln98_fu_473_p3[23:0];

assign trunc_ln4_fu_558_p4 = {{vDegree_fu_542_p2[15:2]}};

assign trunc_ln5_fu_590_p4 = {{realDeg_fu_578_p3[14:4]}};

assign trunc_ln674_fu_459_p1 = ofst_buff_q1[31:0];

assign trunc_ln80_fu_548_p1 = vDegree_fu_542_p2[1:0];

assign trunc_ln92_1_fu_410_p1 = k_reg_246[0:0];

assign trunc_ln92_fu_376_p1 = batchIdx[14:0];

assign trunc_ln99_fu_490_p1 = ofst_buff_q0[13:0];

assign trunc_ln_fu_380_p3 = {{trunc_ln92_fu_376_p1}, {6'd0}};

assign v1_V_1_fu_828_p2 = ($signed(trunc_ln123_reg_1166) + $signed(4'd15));

assign v1_V_2_fu_951_p2 = ($signed(n_rmdr_elem_reg_1107) + $signed(4'd15));

assign v1_V_3_fu_965_p2 = ($signed(trunc_ln135_fu_932_p1) + $signed(4'd15));

assign v1_V_4_fu_1003_p2 = (add_ln138_fu_998_p2 - trunc_ln135_fu_932_p1);

assign v1_V_fu_753_p2 = ($signed(trunc_ln120_fu_708_p1) + $signed(4'd15));

assign vDegree_fu_542_p2 = (shl_ln_fu_532_p3 - zext_ln103_fu_539_p1);

assign zext_ln103_fu_539_p1 = padDecr_V_reg_1091;

assign zext_ln105_fu_568_p1 = trunc_ln4_fu_558_p4;

assign zext_ln120_fu_732_p1 = empty_50_reg_269;

assign zext_ln123_fu_841_p1 = add_ln121_reg_1156;

assign zext_ln133_fu_946_p1 = empty_53_reg_334;

assign zext_ln138_fu_1023_p1 = add_ln136_fu_1009_p2;

assign zext_ln215_1_fu_649_p1 = ap_phi_mux_ofstAddr_V_8_phi_fu_295_p4;

assign zext_ln215_2_fu_869_p1 = next4K_V_1_fu_863_p2;

assign zext_ln215_3_fu_873_p1 = ap_phi_mux_rhs_phi_fu_326_p4;

assign zext_ln215_fu_645_p1 = next4K_V_fu_639_p2;

assign zext_ln691_1_fu_811_p1 = shl_ln691_1_fu_803_p3;

assign zext_ln691_2_fu_988_p1 = shl_ln691_2_fu_980_p3;

assign zext_ln691_fu_783_p1 = shl_ln2_fu_775_p3;

assign zext_ln81_fu_600_p1 = n_rmdr_elem_fu_586_p1;

assign zext_ln90_fu_402_p1 = k_reg_246;

assign zext_ln92_fu_406_p1 = k_reg_246;

assign zext_ln95_1_fu_454_p1 = select_ln674_fu_448_p3;

assign zext_ln95_fu_439_p1 = lshr_ln_reg_1069;

always @ (posedge ap_clk) begin
    mul_reg_1041[5:0] <= 6'b000000;
    trunc_ln_reg_1046[5:0] <= 6'b000000;
    zext_ln81_reg_1119[15:4] <= 12'b000000000000;
end

endmodule //BFS_Scatter_gen_access_tuple