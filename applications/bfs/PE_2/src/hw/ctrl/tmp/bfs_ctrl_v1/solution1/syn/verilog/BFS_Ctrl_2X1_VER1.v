// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="BFS_Ctrl_2X1_VER1_BFS_Ctrl_2X1_VER1,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcu280-fsvh2892-2L-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.739000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=44,HLS_SYN_LUT=214,HLS_VERSION=2020_2}" *)

module BFS_Ctrl_2X1_VER1 (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
	bsp_ap_start,
	bsp_ap_done,
	bsp_ap_idle,
	bsp_ap_ready,
        N_Vertex,
        resWrite,
        glblIterIdx,
        cnt_scatter_0,
        cnt_scatter_1,
        cnt_gather_0,
        cnt_gather_1,
        exist_0,
        exist_1
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input ap_rst_n; 
wire ap_rst; 
assign ap_rst = ~ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output bsp_ap_start;
input bsp_ap_done;
input bsp_ap_idle;
input bsp_ap_ready;

input  [31:0] N_Vertex;
output   resWrite;
output  [15:0] glblIterIdx;
input  [31:0] cnt_scatter_0;
input  [31:0] cnt_scatter_1;
input  [31:0] cnt_gather_0;
input  [31:0] cnt_gather_1;
input   exist_0;
input   exist_1;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    resWrite_1_data_reg;
reg    resWrite_1_data_in;
reg    resWrite_1_vld_reg;
reg    resWrite_1_vld_in;
reg    resWrite_1_ack_in;
reg   [15:0] glblIterIdx_1_data_reg;
reg    glblIterIdx_1_vld_reg;
reg    glblIterIdx_1_vld_in;
reg    glblIterIdx_1_ack_in;
reg   [15:0] iterIdx;
wire   [0:0] icmp_ln39_fu_157_p2;
reg   [0:0] icmp_ln39_reg_199;
wire    ap_CS_fsm_state3;
wire    grp_BFS_PE_fu_142_ap_start;
wire    grp_BFS_PE_fu_142_ap_done;
wire    grp_BFS_PE_fu_142_ap_idle;
wire    grp_BFS_PE_fu_142_ap_ready;
reg    grp_BFS_PE_fu_142_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [0:0] exist_0_read_read_fu_129_p2;
wire   [0:0] exist_1_read_read_fu_135_p2;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state7;
wire   [15:0] add_ln58_fu_180_p2;
wire    ap_CS_fsm_state5;
wire   [31:0] zext_ln39_fu_153_p1;
wire   [31:0] add_ln47_fu_162_p2;
wire   [31:0] add_ln47_1_fu_168_p2;
wire   [0:0] icmp_ln47_fu_174_p2;
reg    ap_block_state7;
reg   [6:0] ap_NS_fsm;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 resWrite_1_data_reg = 1'b0;
#0 resWrite_1_vld_reg = 1'b0;
#0 glblIterIdx_1_data_reg = 16'd0;
#0 glblIterIdx_1_vld_reg = 1'b0;
#0 iterIdx = 16'd0;
#0 grp_BFS_PE_fu_142_ap_start_reg = 1'b0;
end

assign bsp_ap_start = grp_BFS_PE_fu_142_ap_start;
assign grp_BFS_PE_fu_142_ap_done = bsp_ap_done;
assign grp_BFS_PE_fu_142_ap_idle = bsp_ap_idle;
assign grp_BFS_PE_fu_142_ap_ready = bsp_ap_ready;

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_BFS_PE_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state6) & ((icmp_ln39_reg_199 == 1'd0) | ((exist_1_read_read_fu_135_p2 == 1'd0) & (exist_0_read_read_fu_129_p2 == 1'd0)))) | ((icmp_ln39_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
            grp_BFS_PE_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_BFS_PE_fu_142_ap_ready == 1'b1)) begin
            grp_BFS_PE_fu_142_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (1'b1 == 1'b1) & (glblIterIdx_1_vld_in == 1'b1) & (glblIterIdx_1_vld_reg == 1'b1)) | (~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (glblIterIdx_1_vld_in == 1'b1) & (glblIterIdx_1_vld_reg == 1'b0)))) begin
        glblIterIdx_1_data_reg <= iterIdx;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln39_reg_199 <= icmp_ln39_fu_157_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln39_reg_199 == 1'd1) & (exist_0_read_read_fu_129_p2 == 1'd1)) | ((icmp_ln39_reg_199 == 1'd1) & (exist_1_read_read_fu_135_p2 == 1'd1))))) begin
        iterIdx <= add_ln58_fu_180_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (1'b1 == 1'b1) & (resWrite_1_vld_in == 1'b1) & (resWrite_1_vld_reg == 1'b1)) | (~((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) & (resWrite_1_vld_in == 1'b1) & (resWrite_1_vld_reg == 1'b0)))) begin
        resWrite_1_data_reg <= resWrite_1_data_in;
    end
end

always @ (*) begin
    if ((~((glblIterIdx_1_ack_in == 1'b0) | (resWrite_1_ack_in == 1'b0) | (grp_BFS_PE_fu_142_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
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
    if ((~((glblIterIdx_1_ack_in == 1'b0) | (resWrite_1_ack_in == 1'b0) | (grp_BFS_PE_fu_142_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((glblIterIdx_1_vld_reg == 1'b0) | ((1'b1 == 1'b1) & (glblIterIdx_1_vld_reg == 1'b1)))) begin
        glblIterIdx_1_ack_in = 1'b1;
    end else begin
        glblIterIdx_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln39_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        glblIterIdx_1_vld_in = 1'b1;
    end else begin
        glblIterIdx_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((resWrite_1_vld_reg == 1'b0) | ((1'b1 == 1'b1) & (resWrite_1_vld_reg == 1'b1)))) begin
        resWrite_1_ack_in = 1'b1;
    end else begin
        resWrite_1_ack_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln39_reg_199 == 1'd0) | ((exist_1_read_read_fu_135_p2 == 1'd0) & (exist_0_read_read_fu_129_p2 == 1'd0))))) begin
        resWrite_1_data_in = 1'd1;
    end else if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((icmp_ln39_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        resWrite_1_data_in = 1'd0;
    end else begin
        resWrite_1_data_in = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)) | ((1'b1 == ap_CS_fsm_state6) & ((icmp_ln39_reg_199 == 1'd0) | ((exist_1_read_read_fu_135_p2 == 1'd0) & (exist_0_read_read_fu_129_p2 == 1'd0)))) | ((icmp_ln39_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)))) begin
        resWrite_1_vld_in = 1'b1;
    end else begin
        resWrite_1_vld_in = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln39_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_BFS_PE_fu_142_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln47_fu_174_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (((icmp_ln39_reg_199 == 1'd1) & (exist_0_read_read_fu_129_p2 == 1'd1)) | ((icmp_ln39_reg_199 == 1'd1) & (exist_1_read_read_fu_135_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            if ((~((glblIterIdx_1_ack_in == 1'b0) | (resWrite_1_ack_in == 1'b0) | (grp_BFS_PE_fu_142_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln47_1_fu_168_p2 = (cnt_scatter_1 + cnt_scatter_0);

assign add_ln47_fu_162_p2 = (cnt_gather_1 + cnt_gather_0);

assign add_ln58_fu_180_p2 = (iterIdx + 16'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state7 = ((glblIterIdx_1_ack_in == 1'b0) | (resWrite_1_ack_in == 1'b0));
end

assign exist_0_read_read_fu_129_p2 = exist_0;

assign exist_1_read_read_fu_135_p2 = exist_1;

assign glblIterIdx = glblIterIdx_1_data_reg;

assign grp_BFS_PE_fu_142_ap_start = grp_BFS_PE_fu_142_ap_start_reg;

assign icmp_ln39_fu_157_p2 = ((zext_ln39_fu_153_p1 < N_Vertex) ? 1'b1 : 1'b0);

assign icmp_ln47_fu_174_p2 = ((add_ln47_fu_162_p2 == add_ln47_1_fu_168_p2) ? 1'b1 : 1'b0);

assign resWrite = resWrite_1_data_reg;

assign zext_ln39_fu_153_p1 = iterIdx;

endmodule //BFS_Ctrl_2X1_VER1