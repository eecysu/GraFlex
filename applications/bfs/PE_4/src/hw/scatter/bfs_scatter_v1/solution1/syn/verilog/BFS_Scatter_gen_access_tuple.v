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
output  [18:0] ofst_buff_address0;
output   ofst_buff_ce0;
input  [63:0] ofst_buff_q0;
output  [18:0] ofst_buff_address1;
output   ofst_buff_ce1;
input  [63:0] ofst_buff_q1;
input  [30:0] rlt_tail_idx;
input  [24:0] batchIdx;
output  [15:0] n_mem_tuples;
output   n_mem_tuples_ap_vld;
output  [10:0] mem_req_buff_address1;
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
reg[10:0] mem_req_buff_address1;
reg mem_req_buff_ce1;
reg mem_req_buff_we1;
reg[31:0] mem_req_buff_d1;

(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] empty_48_reg_267;
reg   [10:0] j_reg_279;
reg   [27:0] ofstAddr_V_8_reg_290;
reg   [27:0] ofstAddr_V_5_reg_310;
wire   [30:0] mul_fu_366_p3;
reg   [30:0] mul_reg_1039;
wire   [19:0] trunc_ln_fu_378_p3;
reg   [19:0] trunc_ln_reg_1044;
wire   [6:0] add_ln90_fu_394_p2;
reg   [6:0] add_ln90_reg_1052;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln92_1_fu_408_p1;
reg   [0:0] trunc_ln92_1_reg_1057;
wire   [0:0] tmp_fu_386_p3;
reg   [18:0] lshr_ln_reg_1067;
wire   [0:0] icmp_ln93_fu_422_p2;
wire    ap_CS_fsm_state3;
wire   [23:0] trunc_ln213_fu_499_p1;
reg   [23:0] trunc_ln213_reg_1084;
wire    ap_CS_fsm_state4;
reg   [3:0] padDecr_V_reg_1089;
wire   [13:0] sub_ln103_fu_517_p2;
reg   [13:0] sub_ln103_reg_1094;
wire   [27:0] ofstAddr_V_fu_523_p3;
wire    ap_CS_fsm_state5;
wire   [3:0] n_rmdr_elem_fu_584_p1;
reg   [3:0] n_rmdr_elem_reg_1105;
wire   [10:0] trunc_ln5_fu_588_p4;
reg   [10:0] trunc_ln5_reg_1112;
wire   [15:0] zext_ln81_fu_598_p1;
reg   [15:0] zext_ln81_reg_1117;
wire   [0:0] icmp_ln110_fu_602_p2;
reg   [0:0] icmp_ln110_reg_1122;
wire   [10:0] j_1_fu_608_p2;
reg   [10:0] j_1_reg_1126;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state6_pp0_stage0_iter0;
wire    ap_block_state8_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln110_1_fu_614_p2;
reg   [0:0] icmp_ln110_1_reg_1131;
reg   [0:0] tmp_3_reg_1135;
wire   [15:0] sub_ln1364_1_fu_685_p2;
reg   [15:0] sub_ln1364_1_reg_1140;
reg   [15:0] trunc_ln1364_2_reg_1145;
wire   [0:0] icmp_ln116_fu_724_p2;
reg   [0:0] icmp_ln116_reg_1150;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state7_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire   [15:0] add_ln121_fu_766_p2;
reg   [15:0] add_ln121_reg_1154;
wire   [27:0] ofstAddr_V_9_fu_785_p2;
reg   [27:0] ofstAddr_V_9_reg_1159;
wire   [3:0] trunc_ln123_fu_797_p1;
reg   [3:0] trunc_ln123_reg_1164;
wire   [15:0] add_ln126_fu_820_p2;
reg   [15:0] add_ln126_reg_1169;
reg   [0:0] tmp_5_reg_1174;
wire    ap_CS_fsm_state9;
reg   [15:0] trunc_ln1364_4_reg_1179;
reg   [15:0] trunc_ln1364_5_reg_1184;
wire   [0:0] icmp_ln131_fu_934_p2;
reg   [0:0] icmp_ln131_reg_1189;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln132_fu_939_p2;
reg   [0:0] icmp_ln132_reg_1193;
wire   [27:0] ofstAddr_V_10_fu_990_p2;
reg   [27:0] ofstAddr_V_10_reg_1197;
wire   [3:0] v1_V_4_fu_1001_p2;
reg   [3:0] v1_V_4_reg_1202;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state6;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] k_reg_244;
wire    ap_CS_fsm_state11;
reg   [15:0] n_mem_tuples_promoted_reg_255;
reg   [15:0] ap_phi_mux_n_mem_tuples_promoted14_phi_fu_358_p4;
wire    ap_block_pp0_stage0;
reg   [10:0] ap_phi_mux_j_phi_fu_283_p4;
reg   [27:0] ap_phi_mux_ofstAddr_V_8_phi_fu_293_p4;
reg   [15:0] ap_phi_mux_empty_50_phi_fu_303_p4;
wire   [15:0] ap_phi_reg_pp0_iter0_empty_50_reg_300;
wire   [27:0] ofstAddr_V_6_fu_744_p2;
wire   [27:0] ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_310;
wire   [27:0] ofstAddr_V_4_fu_813_p2;
reg   [27:0] ap_phi_mux_rhs_phi_fu_324_p4;
reg   [27:0] rhs_reg_321;
reg   [15:0] empty_51_reg_332;
wire   [15:0] add_ln136_fu_1007_p2;
reg   [15:0] ap_phi_mux_empty_52_phi_fu_347_p4;
reg   [15:0] empty_52_reg_344;
wire   [15:0] add_ln140_fu_1026_p2;
reg   [15:0] n_mem_tuples_promoted14_reg_354;
wire   [63:0] zext_ln95_fu_437_p1;
wire   [63:0] zext_ln95_1_fu_452_p1;
wire   [63:0] zext_ln120_fu_730_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln123_fu_839_p1;
wire   [63:0] zext_ln133_fu_944_p1;
wire   [63:0] zext_ln138_fu_1021_p1;
wire   [31:0] p_Result_s_fu_735_p3;
wire   [31:0] p_Result_3_fu_757_p3;
wire   [31:0] p_Result_4_fu_831_p3;
wire   [31:0] p_Result_5_fu_954_p3;
wire   [31:0] p_Result_6_fu_969_p3;
wire   [31:0] p_Result_7_fu_1014_p3;
wire   [13:0] trunc_ln92_fu_374_p1;
wire   [30:0] zext_ln90_fu_400_p1;
wire   [19:0] zext_ln92_fu_404_p1;
wire   [30:0] tmpVid_fu_412_p2;
wire   [19:0] add_ln79_fu_417_p2;
wire   [18:0] add_ln96_fu_441_p2;
wire   [18:0] select_ln674_fu_446_p3;
wire   [31:0] tmp_1_fu_461_p4;
wire   [31:0] trunc_ln674_fu_457_p1;
wire   [13:0] trunc_ln99_fu_488_p1;
wire   [13:0] tmp_2_fu_478_p4;
wire   [31:0] select_ln98_fu_471_p3;
wire   [13:0] select_ln99_fu_492_p3;
wire   [13:0] trunc_ln103_fu_513_p1;
wire   [15:0] shl_ln_fu_530_p3;
wire   [15:0] zext_ln103_fu_537_p1;
wire   [15:0] vDegree_fu_540_p2;
wire   [1:0] trunc_ln80_fu_546_p1;
wire   [13:0] trunc_ln4_fu_556_p4;
wire   [14:0] zext_ln105_fu_566_p1;
wire   [0:0] icmp_ln105_fu_550_p2;
wire   [14:0] add_ln105_fu_570_p2;
wire   [14:0] realDeg_fu_576_p3;
wire   [15:0] tmp_6_fu_619_p4;
wire   [27:0] shl_ln1_fu_629_p3;
wire   [27:0] next4K_V_fu_637_p2;
wire   [28:0] zext_ln215_fu_643_p1;
wire   [28:0] zext_ln215_1_fu_647_p1;
wire   [28:0] ret_fu_651_p2;
wire   [19:0] trunc_ln1347_fu_657_p1;
wire   [19:0] sub_ln1364_fu_669_p2;
wire   [15:0] trunc_ln1364_1_fu_675_p4;
wire   [15:0] n_elem_margin_fu_701_p3;
wire   [11:0] tmp_4_fu_714_p4;
wire   [3:0] trunc_ln120_fu_706_p1;
wire   [3:0] v1_V_fu_751_p2;
wire   [7:0] shl_ln2_fu_773_p3;
wire   [27:0] zext_ln691_fu_781_p1;
wire   [4:0] trunc_ln116_fu_710_p1;
wire   [4:0] sub_ln124_fu_791_p2;
wire   [8:0] shl_ln691_1_fu_801_p3;
wire   [27:0] zext_ln691_1_fu_809_p1;
wire   [3:0] v1_V_1_fu_826_p2;
wire   [15:0] tmp_7_fu_843_p4;
wire   [27:0] shl_ln213_1_fu_853_p3;
wire   [27:0] next4K_V_1_fu_861_p2;
wire   [28:0] zext_ln215_2_fu_867_p1;
wire   [28:0] zext_ln215_3_fu_871_p1;
wire   [28:0] ret_1_fu_875_p2;
wire   [19:0] trunc_ln1347_1_fu_881_p1;
wire   [19:0] sub_ln1364_2_fu_893_p2;
wire   [15:0] sub_ln1364_3_fu_919_p2;
wire   [15:0] n_elem_margin_1_fu_924_p3;
wire   [3:0] v1_V_2_fu_949_p2;
wire   [3:0] trunc_ln135_fu_930_p1;
wire   [3:0] v1_V_3_fu_963_p2;
wire   [7:0] shl_ln691_2_fu_978_p3;
wire   [27:0] zext_ln691_2_fu_986_p1;
wire   [3:0] add_ln138_fu_996_p2;
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
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
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
        end else if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
        empty_48_reg_267 <= n_mem_tuples_promoted_reg_255;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_48_reg_267 <= add_ln126_reg_1169;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd1))) begin
        empty_51_reg_332 <= n_mem_tuples_promoted_reg_255;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1122 == 1'd0))) begin
        empty_51_reg_332 <= empty_48_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd0) & (icmp_ln131_fu_934_p2 == 1'd0))) begin
        empty_52_reg_344 <= empty_51_reg_332;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1193 == 1'd1) & (icmp_ln131_reg_1189 == 1'd0))) begin
        empty_52_reg_344 <= add_ln136_fu_1007_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
        j_reg_279 <= 11'd0;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        j_reg_279 <= j_1_reg_1126;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        k_reg_244 <= add_ln90_reg_1052;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_244 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln131_fu_934_p2 == 1'd1))) begin
        n_mem_tuples_promoted14_reg_354 <= empty_51_reg_332;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1189 == 1'd0))) begin
        n_mem_tuples_promoted14_reg_354 <= add_ln140_fu_1026_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        n_mem_tuples_promoted_reg_255 <= ap_phi_mux_n_mem_tuples_promoted14_phi_fu_358_p4;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n_mem_tuples_promoted_reg_255 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_175)) begin
        if (((icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0))) begin
            ofstAddr_V_5_reg_310 <= ofstAddr_V_4_fu_813_p2;
        end else if (((icmp_ln116_fu_724_p2 == 1'd0) & (icmp_ln110_1_reg_1131 == 1'd0))) begin
            ofstAddr_V_5_reg_310 <= ofstAddr_V_6_fu_744_p2;
        end else if ((1'b1 == 1'b1)) begin
            ofstAddr_V_5_reg_310 <= ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_310;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
        ofstAddr_V_8_reg_290 <= ofstAddr_V_fu_523_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ofstAddr_V_8_reg_290 <= ofstAddr_V_5_reg_310;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd1))) begin
        rhs_reg_321 <= ofstAddr_V_fu_523_p3;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1122 == 1'd0))) begin
        rhs_reg_321 <= ofstAddr_V_8_reg_290;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        add_ln121_reg_1154 <= add_ln121_fu_766_p2;
        ofstAddr_V_9_reg_1159 <= ofstAddr_V_9_fu_785_p2;
        trunc_ln123_reg_1164 <= trunc_ln123_fu_797_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        add_ln126_reg_1169 <= add_ln126_fu_820_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln90_reg_1052 <= add_ln90_fu_394_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln110_1_reg_1131 <= icmp_ln110_1_fu_614_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln110_reg_1122 <= icmp_ln110_fu_602_p2;
        n_rmdr_elem_reg_1105 <= n_rmdr_elem_fu_584_p1;
        trunc_ln5_reg_1112 <= {{realDeg_fu_576_p3[14:4]}};
        zext_ln81_reg_1117[3 : 0] <= zext_ln81_fu_598_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln116_reg_1150 <= icmp_ln116_fu_724_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        icmp_ln131_reg_1189 <= icmp_ln131_fu_934_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln131_fu_934_p2 == 1'd0))) begin
        icmp_ln132_reg_1193 <= icmp_ln132_fu_939_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_1_reg_1126 <= j_1_fu_608_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln93_fu_422_p2 == 1'd0) & (tmp_fu_386_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        lshr_ln_reg_1067 <= {{add_ln79_fu_417_p2[19:1]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        mul_reg_1039[30 : 6] <= mul_fu_366_p3[30 : 6];
        trunc_ln_reg_1044[19 : 6] <= trunc_ln_fu_378_p3[19 : 6];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd1) & (icmp_ln131_fu_934_p2 == 1'd0))) begin
        ofstAddr_V_10_reg_1197 <= ofstAddr_V_10_fu_990_p2;
        v1_V_4_reg_1202 <= v1_V_4_fu_1001_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        padDecr_V_reg_1089 <= {{select_ln98_fu_471_p3[31:28]}};
        sub_ln103_reg_1094 <= sub_ln103_fu_517_p2;
        trunc_ln213_reg_1084 <= trunc_ln213_fu_499_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_fu_614_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        sub_ln1364_1_reg_1140 <= sub_ln1364_1_fu_685_p2;
        tmp_3_reg_1135 <= ret_fu_651_p2[32'd28];
        trunc_ln1364_2_reg_1145 <= {{ret_fu_651_p2[19:4]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_5_reg_1174 <= ret_1_fu_875_p2[32'd28];
        trunc_ln1364_4_reg_1179 <= {{sub_ln1364_2_fu_893_p2[19:4]}};
        trunc_ln1364_5_reg_1184 <= {{ret_1_fu_875_p2[19:4]}};
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_386_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln92_1_reg_1057 <= trunc_ln92_1_fu_408_p1;
    end
end

always @ (*) begin
    if ((icmp_ln110_1_fu_614_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state6 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state6 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_422_p2 == 1'd1) | (tmp_fu_386_p3 == 1'd1))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((icmp_ln110_1_reg_1131 == 1'd0)) begin
        if ((icmp_ln116_fu_724_p2 == 1'd1)) begin
            ap_phi_mux_empty_50_phi_fu_303_p4 = add_ln121_fu_766_p2;
        end else if ((icmp_ln116_fu_724_p2 == 1'd0)) begin
            ap_phi_mux_empty_50_phi_fu_303_p4 = empty_48_reg_267;
        end else begin
            ap_phi_mux_empty_50_phi_fu_303_p4 = ap_phi_reg_pp0_iter0_empty_50_reg_300;
        end
    end else begin
        ap_phi_mux_empty_50_phi_fu_303_p4 = ap_phi_reg_pp0_iter0_empty_50_reg_300;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1193 == 1'd1) & (icmp_ln131_reg_1189 == 1'd0))) begin
        ap_phi_mux_empty_52_phi_fu_347_p4 = add_ln136_fu_1007_p2;
    end else begin
        ap_phi_mux_empty_52_phi_fu_347_p4 = empty_52_reg_344;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_j_phi_fu_283_p4 = j_1_reg_1126;
    end else begin
        ap_phi_mux_j_phi_fu_283_p4 = j_reg_279;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1189 == 1'd0))) begin
        ap_phi_mux_n_mem_tuples_promoted14_phi_fu_358_p4 = add_ln140_fu_1026_p2;
    end else begin
        ap_phi_mux_n_mem_tuples_promoted14_phi_fu_358_p4 = n_mem_tuples_promoted14_reg_354;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_ofstAddr_V_8_phi_fu_293_p4 = ofstAddr_V_5_reg_310;
    end else begin
        ap_phi_mux_ofstAddr_V_8_phi_fu_293_p4 = ofstAddr_V_8_reg_290;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1122 == 1'd0))) begin
        ap_phi_mux_rhs_phi_fu_324_p4 = ofstAddr_V_8_reg_290;
    end else begin
        ap_phi_mux_rhs_phi_fu_324_p4 = rhs_reg_321;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_422_p2 == 1'd1) | (tmp_fu_386_p3 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mem_req_buff_address1 = zext_ln138_fu_1021_p1;
    end else if ((((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd0) & (icmp_ln131_fu_934_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd1) & (icmp_ln131_fu_934_p2 == 1'd0)))) begin
        mem_req_buff_address1 = zext_ln133_fu_944_p1;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        mem_req_buff_address1 = zext_ln123_fu_839_p1;
    end else if ((((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_address1 = zext_ln120_fu_730_p1;
    end else begin
        mem_req_buff_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | ((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd0) & (icmp_ln131_fu_934_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd1) & (icmp_ln131_fu_934_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_ce1 = 1'b1;
    end else begin
        mem_req_buff_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mem_req_buff_d1 = p_Result_7_fu_1014_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd1) & (icmp_ln131_fu_934_p2 == 1'd0))) begin
        mem_req_buff_d1 = p_Result_6_fu_969_p3;
    end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd0) & (icmp_ln131_fu_934_p2 == 1'd0))) begin
        mem_req_buff_d1 = p_Result_5_fu_954_p3;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        mem_req_buff_d1 = p_Result_4_fu_831_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mem_req_buff_d1 = p_Result_3_fu_757_p3;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        mem_req_buff_d1 = p_Result_s_fu_735_p3;
    end else begin
        mem_req_buff_d1 = 'bx;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln116_reg_1150 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln132_reg_1193 == 1'd1) & (icmp_ln131_reg_1189 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd0) & (icmp_ln131_fu_934_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state10) & (icmp_ln132_fu_939_p2 == 1'd1) & (icmp_ln131_fu_934_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd0) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln116_fu_724_p2 == 1'd1) & (icmp_ln110_1_reg_1131 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
        mem_req_buff_we1 = 1'b1;
    end else begin
        mem_req_buff_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1189 == 1'd0))) begin
        n_mem_tuples = add_ln140_fu_1026_p2;
    end else if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1122 == 1'd0))) begin
        n_mem_tuples = empty_48_reg_267;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        n_mem_tuples = 16'd0;
    end else begin
        n_mem_tuples = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state11) & (icmp_ln131_reg_1189 == 1'd0)) | ((1'b1 == ap_CS_fsm_state9) & (icmp_ln110_reg_1122 == 1'd0)))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln93_fu_422_p2 == 1'd1) | (tmp_fu_386_p3 == 1'd1)))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln110_fu_602_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln110_1_fu_614_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln110_1_fu_614_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
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

assign add_ln105_fu_570_p2 = (zext_ln105_fu_566_p1 + 15'd1);

assign add_ln121_fu_766_p2 = (empty_48_reg_267 + 16'd1);

assign add_ln126_fu_820_p2 = (ap_phi_mux_empty_50_phi_fu_303_p4 + 16'd1);

assign add_ln136_fu_1007_p2 = (empty_51_reg_332 + 16'd1);

assign add_ln138_fu_996_p2 = ($signed(n_rmdr_elem_reg_1105) + $signed(4'd15));

assign add_ln140_fu_1026_p2 = (ap_phi_mux_empty_52_phi_fu_347_p4 + 16'd1);

assign add_ln79_fu_417_p2 = (zext_ln92_fu_404_p1 + trunc_ln_reg_1044);

assign add_ln90_fu_394_p2 = (k_reg_244 + 7'd1);

assign add_ln96_fu_441_p2 = (lshr_ln_reg_1067 + 19'd1);

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

assign ap_phi_reg_pp0_iter0_empty_50_reg_300 = 'bx;

assign ap_phi_reg_pp0_iter0_ofstAddr_V_5_reg_310 = 'bx;

assign icmp_ln105_fu_550_p2 = ((trunc_ln80_fu_546_p1 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln110_1_fu_614_p2 = ((ap_phi_mux_j_phi_fu_283_p4 == trunc_ln5_reg_1112) ? 1'b1 : 1'b0);

assign icmp_ln110_fu_602_p2 = ((trunc_ln5_fu_588_p4 == 11'd0) ? 1'b1 : 1'b0);

assign icmp_ln116_fu_724_p2 = ((tmp_4_fu_714_p4 == 12'd0) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_934_p2 = ((n_rmdr_elem_reg_1105 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln132_fu_939_p2 = ((n_elem_margin_1_fu_924_p3 < zext_ln81_reg_1117) ? 1'b1 : 1'b0);

assign icmp_ln93_fu_422_p2 = ((tmpVid_fu_412_p2 > rlt_tail_idx) ? 1'b1 : 1'b0);

assign j_1_fu_608_p2 = (ap_phi_mux_j_phi_fu_283_p4 + 11'd1);

assign mul_fu_366_p3 = {{batchIdx}, {6'd0}};

assign n_elem_margin_1_fu_924_p3 = ((tmp_5_reg_1174[0:0] == 1'b1) ? sub_ln1364_3_fu_919_p2 : trunc_ln1364_5_reg_1184);

assign n_elem_margin_fu_701_p3 = ((tmp_3_reg_1135[0:0] == 1'b1) ? sub_ln1364_1_reg_1140 : trunc_ln1364_2_reg_1145);

assign n_rmdr_elem_fu_584_p1 = realDeg_fu_576_p3[3:0];

assign next4K_V_1_fu_861_p2 = (shl_ln213_1_fu_853_p3 + 28'd4096);

assign next4K_V_fu_637_p2 = (shl_ln1_fu_629_p3 + 28'd4096);

assign ofstAddr_V_10_fu_990_p2 = (zext_ln691_2_fu_986_p1 + rhs_reg_321);

assign ofstAddr_V_4_fu_813_p2 = (zext_ln691_1_fu_809_p1 + ofstAddr_V_9_fu_785_p2);

assign ofstAddr_V_6_fu_744_p2 = (ofstAddr_V_8_reg_290 + 28'd256);

assign ofstAddr_V_9_fu_785_p2 = (zext_ln691_fu_781_p1 + ofstAddr_V_8_reg_290);

assign ofstAddr_V_fu_523_p3 = {{trunc_ln213_reg_1084}, {4'd0}};

assign ofst_buff_address0 = zext_ln95_1_fu_452_p1;

assign ofst_buff_address1 = zext_ln95_fu_437_p1;

assign p_Result_3_fu_757_p3 = {{v1_V_fu_751_p2}, {ofstAddr_V_8_reg_290}};

assign p_Result_4_fu_831_p3 = {{v1_V_1_fu_826_p2}, {ofstAddr_V_9_reg_1159}};

assign p_Result_5_fu_954_p3 = {{v1_V_2_fu_949_p2}, {rhs_reg_321}};

assign p_Result_6_fu_969_p3 = {{v1_V_3_fu_963_p2}, {rhs_reg_321}};

assign p_Result_7_fu_1014_p3 = {{v1_V_4_reg_1202}, {ofstAddr_V_10_reg_1197}};

assign p_Result_s_fu_735_p3 = {{4'd15}, {ofstAddr_V_8_reg_290}};

assign realDeg_fu_576_p3 = ((icmp_ln105_fu_550_p2[0:0] == 1'b1) ? zext_ln105_fu_566_p1 : add_ln105_fu_570_p2);

assign ret_1_fu_875_p2 = (zext_ln215_2_fu_867_p1 - zext_ln215_3_fu_871_p1);

assign ret_fu_651_p2 = (zext_ln215_fu_643_p1 - zext_ln215_1_fu_647_p1);

assign select_ln674_fu_446_p3 = ((trunc_ln92_1_reg_1057[0:0] == 1'b1) ? add_ln96_fu_441_p2 : lshr_ln_reg_1067);

assign select_ln98_fu_471_p3 = ((trunc_ln92_1_reg_1057[0:0] == 1'b1) ? tmp_1_fu_461_p4 : trunc_ln674_fu_457_p1);

assign select_ln99_fu_492_p3 = ((trunc_ln92_1_reg_1057[0:0] == 1'b1) ? trunc_ln99_fu_488_p1 : tmp_2_fu_478_p4);

assign shl_ln1_fu_629_p3 = {{tmp_6_fu_619_p4}, {12'd0}};

assign shl_ln213_1_fu_853_p3 = {{tmp_7_fu_843_p4}, {12'd0}};

assign shl_ln2_fu_773_p3 = {{trunc_ln120_fu_706_p1}, {4'd0}};

assign shl_ln691_1_fu_801_p3 = {{sub_ln124_fu_791_p2}, {4'd0}};

assign shl_ln691_2_fu_978_p3 = {{trunc_ln135_fu_930_p1}, {4'd0}};

assign shl_ln_fu_530_p3 = {{sub_ln103_reg_1094}, {2'd0}};

assign sub_ln103_fu_517_p2 = (select_ln99_fu_492_p3 - trunc_ln103_fu_513_p1);

assign sub_ln124_fu_791_p2 = ($signed(5'd16) - $signed(trunc_ln116_fu_710_p1));

assign sub_ln1364_1_fu_685_p2 = (16'd0 - trunc_ln1364_1_fu_675_p4);

assign sub_ln1364_2_fu_893_p2 = (20'd0 - trunc_ln1347_1_fu_881_p1);

assign sub_ln1364_3_fu_919_p2 = (16'd0 - trunc_ln1364_4_reg_1179);

assign sub_ln1364_fu_669_p2 = (20'd0 - trunc_ln1347_fu_657_p1);

assign tmpVid_fu_412_p2 = (zext_ln90_fu_400_p1 + mul_reg_1039);

assign tmp_1_fu_461_p4 = {{ofst_buff_q1[63:32]}};

assign tmp_2_fu_478_p4 = {{ofst_buff_q0[45:32]}};

assign tmp_4_fu_714_p4 = {{n_elem_margin_fu_701_p3[15:4]}};

assign tmp_6_fu_619_p4 = {{ap_phi_mux_ofstAddr_V_8_phi_fu_293_p4[27:12]}};

assign tmp_7_fu_843_p4 = {{ap_phi_mux_rhs_phi_fu_324_p4[27:12]}};

assign tmp_fu_386_p3 = k_reg_244[32'd6];

assign trunc_ln103_fu_513_p1 = select_ln98_fu_471_p3[13:0];

assign trunc_ln116_fu_710_p1 = n_elem_margin_fu_701_p3[4:0];

assign trunc_ln120_fu_706_p1 = n_elem_margin_fu_701_p3[3:0];

assign trunc_ln123_fu_797_p1 = sub_ln124_fu_791_p2[3:0];

assign trunc_ln1347_1_fu_881_p1 = ret_1_fu_875_p2[19:0];

assign trunc_ln1347_fu_657_p1 = ret_fu_651_p2[19:0];

assign trunc_ln135_fu_930_p1 = n_elem_margin_1_fu_924_p3[3:0];

assign trunc_ln1364_1_fu_675_p4 = {{sub_ln1364_fu_669_p2[19:4]}};

assign trunc_ln213_fu_499_p1 = select_ln98_fu_471_p3[23:0];

assign trunc_ln4_fu_556_p4 = {{vDegree_fu_540_p2[15:2]}};

assign trunc_ln5_fu_588_p4 = {{realDeg_fu_576_p3[14:4]}};

assign trunc_ln674_fu_457_p1 = ofst_buff_q1[31:0];

assign trunc_ln80_fu_546_p1 = vDegree_fu_540_p2[1:0];

assign trunc_ln92_1_fu_408_p1 = k_reg_244[0:0];

assign trunc_ln92_fu_374_p1 = batchIdx[13:0];

assign trunc_ln99_fu_488_p1 = ofst_buff_q0[13:0];

assign trunc_ln_fu_378_p3 = {{trunc_ln92_fu_374_p1}, {6'd0}};

assign v1_V_1_fu_826_p2 = ($signed(trunc_ln123_reg_1164) + $signed(4'd15));

assign v1_V_2_fu_949_p2 = ($signed(n_rmdr_elem_reg_1105) + $signed(4'd15));

assign v1_V_3_fu_963_p2 = ($signed(trunc_ln135_fu_930_p1) + $signed(4'd15));

assign v1_V_4_fu_1001_p2 = (add_ln138_fu_996_p2 - trunc_ln135_fu_930_p1);

assign v1_V_fu_751_p2 = ($signed(trunc_ln120_fu_706_p1) + $signed(4'd15));

assign vDegree_fu_540_p2 = (shl_ln_fu_530_p3 - zext_ln103_fu_537_p1);

assign zext_ln103_fu_537_p1 = padDecr_V_reg_1089;

assign zext_ln105_fu_566_p1 = trunc_ln4_fu_556_p4;

assign zext_ln120_fu_730_p1 = empty_48_reg_267;

assign zext_ln123_fu_839_p1 = add_ln121_reg_1154;

assign zext_ln133_fu_944_p1 = empty_51_reg_332;

assign zext_ln138_fu_1021_p1 = add_ln136_fu_1007_p2;

assign zext_ln215_1_fu_647_p1 = ap_phi_mux_ofstAddr_V_8_phi_fu_293_p4;

assign zext_ln215_2_fu_867_p1 = next4K_V_1_fu_861_p2;

assign zext_ln215_3_fu_871_p1 = ap_phi_mux_rhs_phi_fu_324_p4;

assign zext_ln215_fu_643_p1 = next4K_V_fu_637_p2;

assign zext_ln691_1_fu_809_p1 = shl_ln691_1_fu_801_p3;

assign zext_ln691_2_fu_986_p1 = shl_ln691_2_fu_978_p3;

assign zext_ln691_fu_781_p1 = shl_ln2_fu_773_p3;

assign zext_ln81_fu_598_p1 = n_rmdr_elem_fu_584_p1;

assign zext_ln90_fu_400_p1 = k_reg_244;

assign zext_ln92_fu_404_p1 = k_reg_244;

assign zext_ln95_1_fu_452_p1 = select_ln674_fu_446_p3;

assign zext_ln95_fu_437_p1 = lshr_ln_reg_1067;

always @ (posedge ap_clk) begin
    mul_reg_1039[5:0] <= 6'b000000;
    trunc_ln_reg_1044[5:0] <= 6'b000000;
    zext_ln81_reg_1117[15:4] <= 12'b000000000000;
end

endmodule //BFS_Scatter_gen_access_tuple
