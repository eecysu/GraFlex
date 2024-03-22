// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module BFS_Scatter_feed_network (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        rd_req_V_din,
        rd_req_V_full_n,
        rd_req_V_write,
        rd_start,
        rd_start_ap_vld,
        tmp_dist_0_address0,
        tmp_dist_0_ce0,
        tmp_dist_0_q0,
        tmp_dist_1_address0,
        tmp_dist_1_ce0,
        tmp_dist_1_q0,
        tmp_dist_2_address0,
        tmp_dist_2_ce0,
        tmp_dist_2_q0,
        tmp_dist_3_address0,
        tmp_dist_3_ce0,
        tmp_dist_3_q0,
        tmp_dist_4_address0,
        tmp_dist_4_ce0,
        tmp_dist_4_q0,
        tmp_dist_5_address0,
        tmp_dist_5_ce0,
        tmp_dist_5_q0,
        tmp_dist_6_address0,
        tmp_dist_6_ce0,
        tmp_dist_6_q0,
        tmp_dist_7_address0,
        tmp_dist_7_ce0,
        tmp_dist_7_q0,
        sw_data_0_V_din,
        sw_data_0_V_full_n,
        sw_data_0_V_write,
        sw_data_1_V_din,
        sw_data_1_V_full_n,
        sw_data_1_V_write,
        sw_data_2_V_din,
        sw_data_2_V_full_n,
        sw_data_2_V_write,
        sw_data_3_V_din,
        sw_data_3_V_full_n,
        sw_data_3_V_write,
        rd_port_TDATA,
        rd_port_TVALID,
        rd_port_TREADY,
        rd_port_TKEEP,
        rd_port_TSTRB,
        rd_port_TLAST,
        n_mem_tuples,
        mem_req_buff_address0,
        mem_req_buff_ce0,
        mem_req_buff_q0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_pp0_stage0 = 6'd16;
parameter    ap_ST_fsm_state9 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] rd_req_V_din;
input   rd_req_V_full_n;
output   rd_req_V_write;
output   rd_start;
output   rd_start_ap_vld;
output  [11:0] tmp_dist_0_address0;
output   tmp_dist_0_ce0;
input  [63:0] tmp_dist_0_q0;
output  [11:0] tmp_dist_1_address0;
output   tmp_dist_1_ce0;
input  [63:0] tmp_dist_1_q0;
output  [11:0] tmp_dist_2_address0;
output   tmp_dist_2_ce0;
input  [63:0] tmp_dist_2_q0;
output  [11:0] tmp_dist_3_address0;
output   tmp_dist_3_ce0;
input  [63:0] tmp_dist_3_q0;
output  [11:0] tmp_dist_4_address0;
output   tmp_dist_4_ce0;
input  [63:0] tmp_dist_4_q0;
output  [11:0] tmp_dist_5_address0;
output   tmp_dist_5_ce0;
input  [63:0] tmp_dist_5_q0;
output  [11:0] tmp_dist_6_address0;
output   tmp_dist_6_ce0;
input  [63:0] tmp_dist_6_q0;
output  [11:0] tmp_dist_7_address0;
output   tmp_dist_7_ce0;
input  [63:0] tmp_dist_7_q0;
output  [31:0] sw_data_0_V_din;
input   sw_data_0_V_full_n;
output   sw_data_0_V_write;
output  [31:0] sw_data_1_V_din;
input   sw_data_1_V_full_n;
output   sw_data_1_V_write;
output  [31:0] sw_data_2_V_din;
input   sw_data_2_V_full_n;
output   sw_data_2_V_write;
output  [31:0] sw_data_3_V_din;
input   sw_data_3_V_full_n;
output   sw_data_3_V_write;
input  [127:0] rd_port_TDATA;
input   rd_port_TVALID;
output   rd_port_TREADY;
input  [15:0] rd_port_TKEEP;
input  [15:0] rd_port_TSTRB;
input  [0:0] rd_port_TLAST;
input  [15:0] n_mem_tuples;
output  [10:0] mem_req_buff_address0;
output   mem_req_buff_ce0;
input  [31:0] mem_req_buff_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rd_req_V_write;
reg rd_start;
reg rd_start_ap_vld;
reg tmp_dist_0_ce0;
reg tmp_dist_1_ce0;
reg tmp_dist_2_ce0;
reg tmp_dist_3_ce0;
reg tmp_dist_4_ce0;
reg tmp_dist_5_ce0;
reg tmp_dist_6_ce0;
reg tmp_dist_7_ce0;
reg sw_data_0_V_write;
reg sw_data_1_V_write;
reg sw_data_2_V_write;
reg sw_data_3_V_write;
reg rd_port_TREADY;
reg mem_req_buff_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    rd_req_V_blk_n;
wire    ap_CS_fsm_state4;
reg    sw_data_0_V_blk_n;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0;
reg   [0:0] or_ln217_reg_1168;
reg    sw_data_1_V_blk_n;
reg   [0:0] icmp_ln874_reg_1164;
reg    sw_data_2_V_blk_n;
reg    sw_data_3_V_blk_n;
reg    rd_port_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg   [7:0] srcDist_V_1_reg_412;
wire   [12:0] n_iter_fu_452_p3;
reg   [12:0] n_iter_reg_995;
wire  signed [13:0] sext_ln171_fu_466_p1;
reg  signed [13:0] sext_ln171_reg_1000;
wire   [0:0] icmp_ln171_fu_470_p2;
reg   [0:0] icmp_ln171_reg_1005;
wire   [4:0] select_ln174_fu_480_p3;
reg   [4:0] select_ln174_reg_1009;
wire   [12:0] i_1_fu_488_p2;
reg   [12:0] i_1_reg_1014;
wire    ap_CS_fsm_state2;
wire   [4:0] tail_fu_508_p3;
reg   [4:0] tail_reg_1022;
wire   [0:0] icmp_ln171_1_fu_494_p2;
wire   [10:0] mul_fu_519_p3;
reg   [10:0] mul_reg_1027;
wire   [4:0] j_2_fu_527_p2;
reg   [4:0] j_2_reg_1032;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln176_fu_537_p2;
reg   [127:0] rd_pkt_data_V_reg_1046;
reg    ap_block_state5_pp0_stage0_iter0;
wire    ap_block_state6_pp0_stage0_iter1;
wire    ap_block_state7_pp0_stage0_iter2;
reg    ap_block_state8_pp0_stage0_iter3;
reg    ap_block_pp0_stage0_11001;
reg   [127:0] rd_pkt_data_V_reg_1046_pp0_iter1_reg;
wire   [0:0] rd_pkt_last_V_fu_556_p1;
reg   [0:0] rd_pkt_last_V_reg_1053;
reg   [0:0] rd_pkt_last_V_reg_1053_pp0_iter1_reg;
reg   [0:0] rd_pkt_last_V_reg_1053_pp0_iter2_reg;
wire   [0:0] invld_flag_fu_570_p2;
reg   [0:0] invld_flag_reg_1057;
reg   [0:0] invld_flag_reg_1057_pp0_iter1_reg;
wire   [23:0] srcIdx_V_fu_576_p1;
reg   [23:0] srcIdx_V_reg_1071;
reg   [23:0] srcIdx_V_reg_1071_pp0_iter1_reg;
reg   [23:0] srcIdx_V_reg_1071_pp0_iter2_reg;
wire   [2:0] ret_fu_580_p1;
reg   [2:0] ret_reg_1076;
reg   [2:0] ret_2_reg_1127;
reg   [2:0] ret_2_reg_1127_pp0_iter1_reg;
reg   [63:0] tmp_dist_7_load_reg_1139;
wire   [63:0] select_ln195_5_fu_686_p3;
reg   [63:0] select_ln195_5_reg_1144;
wire   [0:0] icmp_ln195_6_fu_694_p2;
reg   [0:0] icmp_ln195_6_reg_1149;
wire   [7:0] srcDist_V_19_fu_922_p3;
reg   [7:0] srcDist_V_19_reg_1154;
reg    ap_enable_reg_pp0_iter2;
wire   [0:0] icmp_ln874_fu_929_p2;
wire   [0:0] or_ln217_fu_935_p2;
reg   [23:0] p_Result_2_reg_1172;
reg   [23:0] p_Result_3_reg_1177;
reg   [23:0] p_Result_4_reg_1182;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_enable_reg_pp0_iter1;
reg   [12:0] i_reg_378;
wire    ap_CS_fsm_state9;
reg   [7:0] srcDist_V_reg_389;
reg   [4:0] j_reg_401;
reg   [7:0] ap_phi_mux_srcDist_V_1_phi_fu_415_p4;
wire   [63:0] zext_ln177_fu_547_p1;
wire   [63:0] zext_ln534_fu_594_p1;
reg    ap_block_pp0_stage0_01001;
wire   [3:0] empty_fu_422_p1;
wire   [11:0] trunc_ln167_1_fu_432_p4;
wire   [12:0] zext_ln167_fu_442_p1;
wire   [0:0] icmp_ln167_fu_426_p2;
wire   [12:0] add_ln167_fu_446_p2;
wire   [12:0] sub_fu_460_p2;
wire   [4:0] zext_ln174_fu_476_p1;
wire   [13:0] zext_ln171_fu_499_p1;
wire   [0:0] icmp_ln174_fu_503_p2;
wire   [6:0] empty_56_fu_515_p1;
wire   [10:0] zext_ln176_fu_533_p1;
wire   [10:0] add_ln177_fu_542_p2;
wire   [7:0] p_Result_s_fu_560_p4;
wire   [11:0] ret_4_fu_584_p4;
wire   [0:0] icmp_ln195_fu_616_p2;
wire   [0:0] icmp_ln195_1_fu_629_p2;
wire   [63:0] select_ln195_fu_621_p3;
wire   [0:0] icmp_ln195_2_fu_642_p2;
wire   [63:0] select_ln195_1_fu_634_p3;
wire   [0:0] icmp_ln195_3_fu_655_p2;
wire   [63:0] select_ln195_2_fu_647_p3;
wire   [0:0] icmp_ln195_4_fu_668_p2;
wire   [63:0] select_ln195_3_fu_660_p3;
wire   [0:0] icmp_ln195_5_fu_681_p2;
wire   [63:0] select_ln195_4_fu_673_p3;
wire   [63:0] srcVal_V_fu_699_p3;
wire   [0:0] icmp_ln196_fu_778_p2;
wire   [0:0] and_ln196_fu_783_p2;
wire   [7:0] srcDist_V_9_fu_768_p4;
wire   [0:0] icmp_ln196_1_fu_796_p2;
wire   [0:0] and_ln196_1_fu_801_p2;
wire   [7:0] srcDist_V_8_fu_758_p4;
wire   [7:0] srcDist_V_10_fu_788_p3;
wire   [0:0] icmp_ln196_2_fu_814_p2;
wire   [0:0] and_ln196_2_fu_819_p2;
wire   [7:0] srcDist_V_7_fu_748_p4;
wire   [7:0] srcDist_V_11_fu_806_p3;
wire   [0:0] icmp_ln196_3_fu_832_p2;
wire   [0:0] and_ln196_3_fu_837_p2;
wire   [7:0] srcDist_V_6_fu_738_p4;
wire   [7:0] srcDist_V_12_fu_824_p3;
wire   [0:0] icmp_ln196_4_fu_850_p2;
wire   [0:0] and_ln196_4_fu_855_p2;
wire   [7:0] srcDist_V_5_fu_728_p4;
wire   [7:0] srcDist_V_13_fu_842_p3;
wire   [0:0] icmp_ln196_5_fu_868_p2;
wire   [0:0] and_ln196_5_fu_873_p2;
wire   [7:0] srcDist_V_4_fu_718_p4;
wire   [7:0] srcDist_V_14_fu_860_p3;
wire   [0:0] icmp_ln196_6_fu_886_p2;
wire   [0:0] and_ln196_6_fu_891_p2;
wire   [7:0] srcDist_V_3_fu_708_p4;
wire   [7:0] srcDist_V_15_fu_878_p3;
wire   [0:0] icmp_ln196_7_fu_904_p2;
wire   [0:0] and_ln196_7_fu_909_p2;
wire   [7:0] srcDist_V_2_fu_704_p1;
wire   [7:0] srcDist_V_16_fu_896_p3;
wire   [7:0] srcDist_V_17_fu_914_p3;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln171_fu_470_p2 == 1'd0) & (ap_start == 1'b1))) begin
        i_reg_378 <= 13'd0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        i_reg_378 <= i_1_reg_1014;
    end
end

always @ (posedge ap_clk) begin
    if (((rd_req_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        j_reg_401 <= j_2_reg_1032;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_1_fu_494_p2 == 1'd0) & (icmp_ln171_reg_1005 == 1'd0))) begin
        j_reg_401 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((rd_pkt_last_V_reg_1053_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        srcDist_V_1_reg_412 <= srcDist_V_19_reg_1154;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1))) begin
        srcDist_V_1_reg_412 <= srcDist_V_reg_389;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_reg_1005 == 1'd0))) begin
        i_1_reg_1014 <= i_1_fu_488_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln171_reg_1005 <= icmp_ln171_fu_470_p2;
        n_iter_reg_995 <= n_iter_fu_452_p3;
        sext_ln171_reg_1000 <= sext_ln171_fu_466_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((invld_flag_reg_1057 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        icmp_ln195_6_reg_1149 <= icmp_ln195_6_fu_694_p2;
        select_ln195_5_reg_1144 <= select_ln195_5_fu_686_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln874_reg_1164 <= icmp_ln874_fu_929_p2;
        or_ln217_reg_1168 <= or_ln217_fu_935_p2;
        rd_pkt_last_V_reg_1053_pp0_iter2_reg <= rd_pkt_last_V_reg_1053_pp0_iter1_reg;
        srcIdx_V_reg_1071_pp0_iter2_reg <= srcIdx_V_reg_1071_pp0_iter1_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        invld_flag_reg_1057 <= invld_flag_fu_570_p2;
        invld_flag_reg_1057_pp0_iter1_reg <= invld_flag_reg_1057;
        rd_pkt_data_V_reg_1046 <= rd_port_TDATA;
        rd_pkt_data_V_reg_1046_pp0_iter1_reg <= rd_pkt_data_V_reg_1046;
        rd_pkt_last_V_reg_1053 <= rd_port_TLAST;
        rd_pkt_last_V_reg_1053_pp0_iter1_reg <= rd_pkt_last_V_reg_1053;
        ret_2_reg_1127 <= {{rd_port_TDATA[5:3]}};
        ret_2_reg_1127_pp0_iter1_reg <= ret_2_reg_1127;
        ret_reg_1076 <= ret_fu_580_p1;
        srcIdx_V_reg_1071 <= srcIdx_V_fu_576_p1;
        srcIdx_V_reg_1071_pp0_iter1_reg <= srcIdx_V_reg_1071;
        tmp_dist_7_load_reg_1139 <= tmp_dist_7_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_2_reg_1032 <= j_2_fu_527_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln171_1_fu_494_p2 == 1'd0) & (icmp_ln171_reg_1005 == 1'd0))) begin
        mul_reg_1027[10 : 4] <= mul_fu_519_p3[10 : 4];
        tail_reg_1022 <= tail_fu_508_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln874_fu_929_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        p_Result_2_reg_1172 <= {{rd_pkt_data_V_reg_1046_pp0_iter1_reg[55:32]}};
        p_Result_3_reg_1177 <= {{rd_pkt_data_V_reg_1046_pp0_iter1_reg[87:64]}};
        p_Result_4_reg_1182 <= {{rd_pkt_data_V_reg_1046_pp0_iter1_reg[119:96]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln171_fu_470_p2 == 1'd0))) begin
        select_ln174_reg_1009 <= select_ln174_fu_480_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        srcDist_V_19_reg_1154 <= srcDist_V_19_fu_922_p3;
        srcDist_V_reg_389 <= srcDist_V_19_fu_922_p3;
    end
end

always @ (*) begin
    if (((rd_pkt_last_V_fu_556_p1 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state2) & ((icmp_ln171_1_fu_494_p2 == 1'd1) | (icmp_ln171_reg_1005 == 1'd1))))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((rd_pkt_last_V_reg_1053_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        ap_phi_mux_srcDist_V_1_phi_fu_415_p4 = srcDist_V_19_reg_1154;
    end else begin
        ap_phi_mux_srcDist_V_1_phi_fu_415_p4 = srcDist_V_1_reg_412;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln171_1_fu_494_p2 == 1'd1) | (icmp_ln171_reg_1005 == 1'd1)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mem_req_buff_ce0 = 1'b1;
    end else begin
        mem_req_buff_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        rd_port_TDATA_blk_n = rd_port_TVALID;
    end else begin
        rd_port_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        rd_port_TREADY = 1'b1;
    end else begin
        rd_port_TREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rd_req_V_blk_n = rd_req_V_full_n;
    end else begin
        rd_req_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((rd_req_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        rd_req_V_write = 1'b1;
    end else begin
        rd_req_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        rd_start = 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1))) begin
        rd_start = 1'd1;
    end else begin
        rd_start = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1)))) begin
        rd_start_ap_vld = 1'b1;
    end else begin
        rd_start_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((or_ln217_reg_1168 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_0_V_blk_n = sw_data_0_V_full_n;
    end else begin
        sw_data_0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((or_ln217_reg_1168 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_0_V_write = 1'b1;
    end else begin
        sw_data_0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_1_V_blk_n = sw_data_1_V_full_n;
    end else begin
        sw_data_1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_1_V_write = 1'b1;
    end else begin
        sw_data_1_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_2_V_blk_n = sw_data_2_V_full_n;
    end else begin
        sw_data_2_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_2_V_write = 1'b1;
    end else begin
        sw_data_2_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_3_V_blk_n = sw_data_3_V_full_n;
    end else begin
        sw_data_3_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln874_reg_1164 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sw_data_3_V_write = 1'b1;
    end else begin
        sw_data_3_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_0_ce0 = 1'b1;
    end else begin
        tmp_dist_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_1_ce0 = 1'b1;
    end else begin
        tmp_dist_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_2_ce0 = 1'b1;
    end else begin
        tmp_dist_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_3_ce0 = 1'b1;
    end else begin
        tmp_dist_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_4_ce0 = 1'b1;
    end else begin
        tmp_dist_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_5_ce0 = 1'b1;
    end else begin
        tmp_dist_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_6_ce0 = 1'b1;
    end else begin
        tmp_dist_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_dist_7_ce0 = 1'b1;
    end else begin
        tmp_dist_7_ce0 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln171_1_fu_494_p2 == 1'd1) | (icmp_ln171_reg_1005 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln176_fu_537_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((rd_req_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter2 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln167_fu_446_p2 = (zext_ln167_fu_442_p1 + 13'd1);

assign add_ln177_fu_542_p2 = (mul_reg_1027 + zext_ln176_fu_533_p1);

assign and_ln196_1_fu_801_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_1_fu_796_p2);

assign and_ln196_2_fu_819_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_2_fu_814_p2);

assign and_ln196_3_fu_837_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_3_fu_832_p2);

assign and_ln196_4_fu_855_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_4_fu_850_p2);

assign and_ln196_5_fu_873_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_5_fu_868_p2);

assign and_ln196_6_fu_891_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_6_fu_886_p2);

assign and_ln196_7_fu_909_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_7_fu_904_p2);

assign and_ln196_fu_783_p2 = (invld_flag_reg_1057_pp0_iter1_reg & icmp_ln196_fu_778_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd5];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((rd_port_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((sw_data_3_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_2_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_1_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_0_V_full_n == 1'b0) & (or_ln217_reg_1168 == 1'd0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((rd_port_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((sw_data_3_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_2_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_1_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_0_V_full_n == 1'b0) & (or_ln217_reg_1168 == 1'd0)))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((rd_port_TVALID == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((ap_enable_reg_pp0_iter3 == 1'b1) & (((sw_data_3_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_2_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_1_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_0_V_full_n == 1'b0) & (or_ln217_reg_1168 == 1'd0)))));
end

always @ (*) begin
    ap_block_state5_pp0_stage0_iter0 = (rd_port_TVALID == 1'b0);
end

assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state8_pp0_stage0_iter3 = (((sw_data_3_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_2_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_1_V_full_n == 1'b0) & (icmp_ln874_reg_1164 == 1'd0)) | ((sw_data_0_V_full_n == 1'b0) & (or_ln217_reg_1168 == 1'd0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign empty_56_fu_515_p1 = i_reg_378[6:0];

assign empty_fu_422_p1 = n_mem_tuples[3:0];

assign i_1_fu_488_p2 = (i_reg_378 + 13'd1);

assign icmp_ln167_fu_426_p2 = ((empty_fu_422_p1 == 4'd0) ? 1'b1 : 1'b0);

assign icmp_ln171_1_fu_494_p2 = ((i_reg_378 == n_iter_reg_995) ? 1'b1 : 1'b0);

assign icmp_ln171_fu_470_p2 = ((n_iter_fu_452_p3 == 13'd0) ? 1'b1 : 1'b0);

assign icmp_ln174_fu_503_p2 = ((zext_ln171_fu_499_p1 == sext_ln171_reg_1000) ? 1'b1 : 1'b0);

assign icmp_ln176_fu_537_p2 = ((j_reg_401 == tail_reg_1022) ? 1'b1 : 1'b0);

assign icmp_ln195_1_fu_629_p2 = ((ret_reg_1076 == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln195_2_fu_642_p2 = ((ret_reg_1076 == 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln195_3_fu_655_p2 = ((ret_reg_1076 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln195_4_fu_668_p2 = ((ret_reg_1076 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln195_5_fu_681_p2 = ((ret_reg_1076 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln195_6_fu_694_p2 = ((ret_reg_1076 == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln195_fu_616_p2 = ((ret_reg_1076 == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln196_1_fu_796_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln196_2_fu_814_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln196_3_fu_832_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln196_4_fu_850_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd3) ? 1'b1 : 1'b0);

assign icmp_ln196_5_fu_868_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd2) ? 1'b1 : 1'b0);

assign icmp_ln196_6_fu_886_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd1) ? 1'b1 : 1'b0);

assign icmp_ln196_7_fu_904_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd0) ? 1'b1 : 1'b0);

assign icmp_ln196_fu_778_p2 = ((ret_2_reg_1127_pp0_iter1_reg == 3'd7) ? 1'b1 : 1'b0);

assign icmp_ln874_fu_929_p2 = ((srcDist_V_19_fu_922_p3 == 8'd255) ? 1'b1 : 1'b0);

assign invld_flag_fu_570_p2 = ((p_Result_s_fu_560_p4 == 8'd0) ? 1'b1 : 1'b0);

assign j_2_fu_527_p2 = (j_reg_401 + 5'd1);

assign mem_req_buff_address0 = zext_ln177_fu_547_p1;

assign mul_fu_519_p3 = {{empty_56_fu_515_p1}, {4'd0}};

assign n_iter_fu_452_p3 = ((icmp_ln167_fu_426_p2[0:0] == 1'b1) ? zext_ln167_fu_442_p1 : add_ln167_fu_446_p2);

assign or_ln217_fu_935_p2 = (invld_flag_reg_1057_pp0_iter1_reg | icmp_ln874_fu_929_p2);

assign p_Result_s_fu_560_p4 = {{rd_port_TDATA[31:24]}};

assign rd_pkt_last_V_fu_556_p1 = rd_port_TLAST;

assign rd_req_V_din = mem_req_buff_q0;

assign ret_4_fu_584_p4 = {{rd_port_TDATA[17:6]}};

assign ret_fu_580_p1 = rd_port_TDATA[2:0];

assign select_ln174_fu_480_p3 = ((icmp_ln167_fu_426_p2[0:0] == 1'b1) ? 5'd16 : zext_ln174_fu_476_p1);

assign select_ln195_1_fu_634_p3 = ((icmp_ln195_1_fu_629_p2[0:0] == 1'b1) ? tmp_dist_2_q0 : select_ln195_fu_621_p3);

assign select_ln195_2_fu_647_p3 = ((icmp_ln195_2_fu_642_p2[0:0] == 1'b1) ? tmp_dist_3_q0 : select_ln195_1_fu_634_p3);

assign select_ln195_3_fu_660_p3 = ((icmp_ln195_3_fu_655_p2[0:0] == 1'b1) ? tmp_dist_4_q0 : select_ln195_2_fu_647_p3);

assign select_ln195_4_fu_673_p3 = ((icmp_ln195_4_fu_668_p2[0:0] == 1'b1) ? tmp_dist_5_q0 : select_ln195_3_fu_660_p3);

assign select_ln195_5_fu_686_p3 = ((icmp_ln195_5_fu_681_p2[0:0] == 1'b1) ? tmp_dist_6_q0 : select_ln195_4_fu_673_p3);

assign select_ln195_fu_621_p3 = ((icmp_ln195_fu_616_p2[0:0] == 1'b1) ? tmp_dist_1_q0 : tmp_dist_0_q0);

assign sext_ln171_fu_466_p1 = $signed(sub_fu_460_p2);

assign srcDist_V_10_fu_788_p3 = ((and_ln196_fu_783_p2[0:0] == 1'b1) ? srcDist_V_9_fu_768_p4 : ap_phi_mux_srcDist_V_1_phi_fu_415_p4);

assign srcDist_V_11_fu_806_p3 = ((and_ln196_1_fu_801_p2[0:0] == 1'b1) ? srcDist_V_8_fu_758_p4 : srcDist_V_10_fu_788_p3);

assign srcDist_V_12_fu_824_p3 = ((and_ln196_2_fu_819_p2[0:0] == 1'b1) ? srcDist_V_7_fu_748_p4 : srcDist_V_11_fu_806_p3);

assign srcDist_V_13_fu_842_p3 = ((and_ln196_3_fu_837_p2[0:0] == 1'b1) ? srcDist_V_6_fu_738_p4 : srcDist_V_12_fu_824_p3);

assign srcDist_V_14_fu_860_p3 = ((and_ln196_4_fu_855_p2[0:0] == 1'b1) ? srcDist_V_5_fu_728_p4 : srcDist_V_13_fu_842_p3);

assign srcDist_V_15_fu_878_p3 = ((and_ln196_5_fu_873_p2[0:0] == 1'b1) ? srcDist_V_4_fu_718_p4 : srcDist_V_14_fu_860_p3);

assign srcDist_V_16_fu_896_p3 = ((and_ln196_6_fu_891_p2[0:0] == 1'b1) ? srcDist_V_3_fu_708_p4 : srcDist_V_15_fu_878_p3);

assign srcDist_V_17_fu_914_p3 = ((and_ln196_7_fu_909_p2[0:0] == 1'b1) ? srcDist_V_2_fu_704_p1 : srcDist_V_16_fu_896_p3);

assign srcDist_V_19_fu_922_p3 = ((invld_flag_reg_1057_pp0_iter1_reg[0:0] == 1'b1) ? srcDist_V_17_fu_914_p3 : ap_phi_mux_srcDist_V_1_phi_fu_415_p4);

assign srcDist_V_2_fu_704_p1 = srcVal_V_fu_699_p3[7:0];

assign srcDist_V_3_fu_708_p4 = {{srcVal_V_fu_699_p3[15:8]}};

assign srcDist_V_4_fu_718_p4 = {{srcVal_V_fu_699_p3[23:16]}};

assign srcDist_V_5_fu_728_p4 = {{srcVal_V_fu_699_p3[31:24]}};

assign srcDist_V_6_fu_738_p4 = {{srcVal_V_fu_699_p3[39:32]}};

assign srcDist_V_7_fu_748_p4 = {{srcVal_V_fu_699_p3[47:40]}};

assign srcDist_V_8_fu_758_p4 = {{srcVal_V_fu_699_p3[55:48]}};

assign srcDist_V_9_fu_768_p4 = {{srcVal_V_fu_699_p3[63:56]}};

assign srcIdx_V_fu_576_p1 = rd_port_TDATA[23:0];

assign srcVal_V_fu_699_p3 = ((icmp_ln195_6_reg_1149[0:0] == 1'b1) ? tmp_dist_7_load_reg_1139 : select_ln195_5_reg_1144);

assign sub_fu_460_p2 = ($signed(n_iter_fu_452_p3) + $signed(13'd8191));

assign sw_data_0_V_din = {{srcDist_V_19_reg_1154}, {srcIdx_V_reg_1071_pp0_iter2_reg}};

assign sw_data_1_V_din = {{srcDist_V_19_reg_1154}, {p_Result_2_reg_1172}};

assign sw_data_2_V_din = {{srcDist_V_19_reg_1154}, {p_Result_3_reg_1177}};

assign sw_data_3_V_din = {{srcDist_V_19_reg_1154}, {p_Result_4_reg_1182}};

assign tail_fu_508_p3 = ((icmp_ln174_fu_503_p2[0:0] == 1'b1) ? select_ln174_reg_1009 : 5'd16);

assign tmp_dist_0_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_1_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_2_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_3_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_4_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_5_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_6_address0 = zext_ln534_fu_594_p1;

assign tmp_dist_7_address0 = zext_ln534_fu_594_p1;

assign trunc_ln167_1_fu_432_p4 = {{n_mem_tuples[15:4]}};

assign zext_ln167_fu_442_p1 = trunc_ln167_1_fu_432_p4;

assign zext_ln171_fu_499_p1 = i_reg_378;

assign zext_ln174_fu_476_p1 = empty_fu_422_p1;

assign zext_ln176_fu_533_p1 = j_reg_401;

assign zext_ln177_fu_547_p1 = add_ln177_fu_542_p2;

assign zext_ln534_fu_594_p1 = ret_4_fu_584_p4;

always @ (posedge ap_clk) begin
    mul_reg_1027[3:0] <= 4'b0000;
end

endmodule //BFS_Scatter_feed_network