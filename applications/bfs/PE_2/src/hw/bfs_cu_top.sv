// ==============================================================
// GraFlex BSP CU Wrapper Module
// ==============================================================
`timescale 1 ns/1 ps

module BFS_CU_2X1_VER1 (
  input wire	ap_clk,
  input wire	ap_rst_n,
  input wire	ap_start,
  output wire	ap_done,
  output wire	ap_idle,
  output wire	ap_ready,
  input wire [128-1:0]	rd_port_TDATA,
  input wire	rd_port_TVALID,
  output wire	rd_port_TREADY,
  input wire [16-1:0]	rd_port_TKEEP,
  input wire [16-1:0]	rd_port_TSTRB,
  input wire	rd_port_TLAST,
  output wire [128-1:0]	wr_port_TDATA,
  output wire	wr_port_TVALID,
  input wire	wr_port_TREADY,
  output wire [16-1:0]	wr_port_TKEEP,
  output wire [16-1:0]	wr_port_TSTRB,
  output wire	wr_port_TLAST,
  output wire [32-1:0]	rd_req_V_din,
  input wire	rd_req_V_full_n,
  output wire	rd_req_V_write,
  output wire [64-1:0]	rd_baseAddr,
  output wire [64-1:0]	wr_baseAddr,
  output wire [16-1:0]	wr_len,
  output wire	rd_start,
  output wire	wr_start,
  input wire	wr_done,
  input wire [32-1:0]	root,
  input wire [32-1:0]	N_Vertex,
  input wire [33-1:0]	CSR_V,
  input wire [33-1:0]	CSR_E,
  input wire [33-1:0]	glbl_d,
  input  wire [32-1:0]	cycle_cnt,
  input wire [1-1:0]	resWrite,
  input wire [16-1:0]	glblIterIdx,
  output wire [32-1:0]	cnt_scatter,
  output wire [32-1:0]	cnt_gather,
  output wire [1-1:0]	exist,
  input wire	sw_ovld_0_0,
  input wire [32-1:0]	sw_odata_0_0,
  input wire	sw_ovld_0_1,
  input wire [32-1:0]	sw_odata_0_1,
  output wire	sw_ivld_0,
  output wire [32-1:0]	sw_idata_0,
  output wire	sw_bp_0,
  input wire	sw_ofw_0,
  input wire	sw_ovld_1_0,
  input wire [32-1:0]	sw_odata_1_0,
  input wire	sw_ovld_1_1,
  input wire [32-1:0]	sw_odata_1_1,
  output wire	sw_ivld_1,
  output wire [32-1:0]	sw_idata_1,
  output wire	sw_bp_1,
  input wire	sw_ofw_1,
  input wire	sw_ovld_2_0,
  input wire [32-1:0]	sw_odata_2_0,
  input wire	sw_ovld_2_1,
  input wire [32-1:0]	sw_odata_2_1,
  output wire	sw_ivld_2,
  output wire [32-1:0]	sw_idata_2,
  output wire	sw_bp_2,
  input wire	sw_ofw_2,
  input wire	sw_ovld_3_0,
  input wire [32-1:0]	sw_odata_3_0,
  input wire	sw_ovld_3_1,
  input wire [32-1:0]	sw_odata_3_1,
  output wire	sw_ivld_3,
  output wire [32-1:0]	sw_idata_3,
  output wire	sw_bp_3,
  input wire	sw_ofw_3,
  input wire [64-1:0][64-1:0]	tmp_dist_rdata0,
  input wire [64-1:0][64-1:0]	tmp_dist_rdata1,
  output wire [64-1:0][64-1:0]	tmp_dist_wdata0,
  output wire [64-1:0][64-1:0]	tmp_dist_wdata1,
  output wire [64-1:0][12-1:0]	tmp_dist_addr0,
  output wire [64-1:0][12-1:0]	tmp_dist_addr1,
  output wire [64-1:0]	tmp_dist_ce0,
  output wire [64-1:0]	tmp_dist_ce1,
  output wire [64-1:0][8-1:0]	tmp_dist_we0,
  output wire [64-1:0][8-1:0]	tmp_dist_we1,
  input wire [8-1:0]	peID
);

logic [64-1:0]	tmp_dist_s_wdata[0:64-1];
logic [64-1:0]	tmp_dist_g_wdata[0:64-1];
logic [12-1:0]	tmp_dist_s_addr[0:64-1];
logic [12-1:0]	tmp_dist_g_addr[0:64-1];
logic 	tmp_dist_s_ce[0:64-1];
logic 	tmp_dist_g_ce[0:64-1];
logic [8-1:0]	tmp_dist_g_we[0:64-1];
logic 	tmp_dist_s_we[0:64-1];
logic 	gather_ap_start[0:8-1];
logic 	gather_ap_done[0:8-1];
logic 	gather_rd_en[0:8-1];
logic 	gather_sw_vld[0:8-1];
logic [32-1:0]	fifo_din[0:8-1];
logic [32-1:0]	fifo_dout[0:8-1];
logic 	fifo_rd_en[0:8-1];
logic 	fifo_wr_en[0:8-1];
logic 	fifo_empty[0:8-1];
logic 	fifo_prog_full[0:8-1];
logic [32-1:0]	cnt_scatter_st0[0:8-1];
logic [32-1:0]	cnt_scatter_st1[0:2-1];
logic [32-1:0]	cnt_gather_st0[0:8-1];
logic [32-1:0]	cnt_gather_st1[0:2-1];
logic [1-1:0]	exist_gather[0:8-1];
logic	inv_ap_start_1d = 0;
logic	sw_ovld_1d[0:8-1];
logic [32-1:0]	sw_odata_1d[0:8-1];
logic	i_sw_ivld_0;
logic	i_sw_ivld_1;
logic	i_sw_ivld_2;
logic	i_sw_ivld_3;

BFS_Scatter scatter_pe_inst (
  .ap_clk	( ap_clk ),
  .ap_rst_n	( ap_rst_n ),
  .ap_start	( ap_start ),
  .ap_done	( ap_done ),
  .ap_idle	( ap_idle ),
  .ap_ready	( ap_ready ),
  .CSR_V	( CSR_V ),
  .CSR_E	( CSR_E ),
  .glbl_d	( glbl_d ),
  .rd_baseAddr	( rd_baseAddr ),
  .wr_baseAddr	( wr_baseAddr ),
  .rd_port_TDATA	( rd_port_TDATA ),
  .rd_port_TVALID	( rd_port_TVALID ),
  .rd_port_TREADY	( rd_port_TREADY ),
  .rd_port_TKEEP	( rd_port_TKEEP ),
  .rd_port_TSTRB	( rd_port_TSTRB ),
  .rd_port_TLAST	( rd_port_TLAST ),
  .wr_port_TDATA	( wr_port_TDATA ),
  .wr_port_TVALID	( wr_port_TVALID ),
  .wr_port_TREADY	( wr_port_TREADY ),
  .wr_port_TKEEP	( wr_port_TKEEP ),
  .wr_port_TSTRB	( wr_port_TSTRB ),
  .wr_port_TLAST	( wr_port_TLAST ),
  .rd_req_V_din	( rd_req_V_din ),
  .rd_req_V_full_n	( rd_req_V_full_n ),
  .rd_req_V_write	( rd_req_V_write ),
  .wr_len	( wr_len ),
  .rd_start	( rd_start ),
  .wr_start	( wr_start ),
  .N_Vertex	( N_Vertex ),
  .root	( root ),
  .peID	( peID ),
  .sw_data_0_V_din	( sw_idata_0 ),
  .sw_data_0_V_full_n	( ~sw_ofw_0 ),
  .sw_data_0_V_write	( i_sw_ivld_0 ),
  .sw_data_1_V_din	( sw_idata_1 ),
  .sw_data_1_V_full_n	( ~sw_ofw_1 ),
  .sw_data_1_V_write	( i_sw_ivld_1 ),
  .sw_data_2_V_din	( sw_idata_2 ),
  .sw_data_2_V_full_n	( ~sw_ofw_2 ),
  .sw_data_2_V_write	( i_sw_ivld_2 ),
  .sw_data_3_V_din	( sw_idata_3 ),
  .sw_data_3_V_full_n	( ~sw_ofw_3 ),
  .sw_data_3_V_write	( i_sw_ivld_3 ),
  .glblIterIdx	( glblIterIdx ),
  .cycle_cnt	( cycle_cnt ),
  .launch_recv	( launch_recv ),
  .resWrite	( resWrite ),
  .tmp_dist_0_address0	( tmp_dist_s_addr[0] ),
  .tmp_dist_0_ce0	( tmp_dist_s_ce[0] ),
  .tmp_dist_0_we0	( tmp_dist_s_we[0] ),
  .tmp_dist_0_d0	( tmp_dist_s_wdata[0] ),
  .tmp_dist_0_q0	( tmp_dist_rdata0[0] ),
  .tmp_dist_1_address0	( tmp_dist_s_addr[1] ),
  .tmp_dist_1_ce0	( tmp_dist_s_ce[1] ),
  .tmp_dist_1_we0	( tmp_dist_s_we[1] ),
  .tmp_dist_1_d0	( tmp_dist_s_wdata[1] ),
  .tmp_dist_1_q0	( tmp_dist_rdata0[1] ),
  .tmp_dist_2_address0	( tmp_dist_s_addr[2] ),
  .tmp_dist_2_ce0	( tmp_dist_s_ce[2] ),
  .tmp_dist_2_we0	( tmp_dist_s_we[2] ),
  .tmp_dist_2_d0	( tmp_dist_s_wdata[2] ),
  .tmp_dist_2_q0	( tmp_dist_rdata0[2] ),
  .tmp_dist_3_address0	( tmp_dist_s_addr[3] ),
  .tmp_dist_3_ce0	( tmp_dist_s_ce[3] ),
  .tmp_dist_3_we0	( tmp_dist_s_we[3] ),
  .tmp_dist_3_d0	( tmp_dist_s_wdata[3] ),
  .tmp_dist_3_q0	( tmp_dist_rdata0[3] ),
  .tmp_dist_4_address0	( tmp_dist_s_addr[4] ),
  .tmp_dist_4_ce0	( tmp_dist_s_ce[4] ),
  .tmp_dist_4_we0	( tmp_dist_s_we[4] ),
  .tmp_dist_4_d0	( tmp_dist_s_wdata[4] ),
  .tmp_dist_4_q0	( tmp_dist_rdata0[4] ),
  .tmp_dist_5_address0	( tmp_dist_s_addr[5] ),
  .tmp_dist_5_ce0	( tmp_dist_s_ce[5] ),
  .tmp_dist_5_we0	( tmp_dist_s_we[5] ),
  .tmp_dist_5_d0	( tmp_dist_s_wdata[5] ),
  .tmp_dist_5_q0	( tmp_dist_rdata0[5] ),
  .tmp_dist_6_address0	( tmp_dist_s_addr[6] ),
  .tmp_dist_6_ce0	( tmp_dist_s_ce[6] ),
  .tmp_dist_6_we0	( tmp_dist_s_we[6] ),
  .tmp_dist_6_d0	( tmp_dist_s_wdata[6] ),
  .tmp_dist_6_q0	( tmp_dist_rdata0[6] ),
  .tmp_dist_7_address0	( tmp_dist_s_addr[7] ),
  .tmp_dist_7_ce0	( tmp_dist_s_ce[7] ),
  .tmp_dist_7_we0	( tmp_dist_s_we[7] ),
  .tmp_dist_7_d0	( tmp_dist_s_wdata[7] ),
  .tmp_dist_7_q0	( tmp_dist_rdata0[7] ),
  .tmp_dist_8_address0	( tmp_dist_s_addr[8] ),
  .tmp_dist_8_ce0	( tmp_dist_s_ce[8] ),
  .tmp_dist_8_we0	( tmp_dist_s_we[8] ),
  .tmp_dist_8_d0	( tmp_dist_s_wdata[8] ),
  .tmp_dist_8_q0	( tmp_dist_rdata0[8] ),
  .tmp_dist_9_address0	( tmp_dist_s_addr[9] ),
  .tmp_dist_9_ce0	( tmp_dist_s_ce[9] ),
  .tmp_dist_9_we0	( tmp_dist_s_we[9] ),
  .tmp_dist_9_d0	( tmp_dist_s_wdata[9] ),
  .tmp_dist_9_q0	( tmp_dist_rdata0[9] ),
  .tmp_dist_10_address0	( tmp_dist_s_addr[10] ),
  .tmp_dist_10_ce0	( tmp_dist_s_ce[10] ),
  .tmp_dist_10_we0	( tmp_dist_s_we[10] ),
  .tmp_dist_10_d0	( tmp_dist_s_wdata[10] ),
  .tmp_dist_10_q0	( tmp_dist_rdata0[10] ),
  .tmp_dist_11_address0	( tmp_dist_s_addr[11] ),
  .tmp_dist_11_ce0	( tmp_dist_s_ce[11] ),
  .tmp_dist_11_we0	( tmp_dist_s_we[11] ),
  .tmp_dist_11_d0	( tmp_dist_s_wdata[11] ),
  .tmp_dist_11_q0	( tmp_dist_rdata0[11] ),
  .tmp_dist_12_address0	( tmp_dist_s_addr[12] ),
  .tmp_dist_12_ce0	( tmp_dist_s_ce[12] ),
  .tmp_dist_12_we0	( tmp_dist_s_we[12] ),
  .tmp_dist_12_d0	( tmp_dist_s_wdata[12] ),
  .tmp_dist_12_q0	( tmp_dist_rdata0[12] ),
  .tmp_dist_13_address0	( tmp_dist_s_addr[13] ),
  .tmp_dist_13_ce0	( tmp_dist_s_ce[13] ),
  .tmp_dist_13_we0	( tmp_dist_s_we[13] ),
  .tmp_dist_13_d0	( tmp_dist_s_wdata[13] ),
  .tmp_dist_13_q0	( tmp_dist_rdata0[13] ),
  .tmp_dist_14_address0	( tmp_dist_s_addr[14] ),
  .tmp_dist_14_ce0	( tmp_dist_s_ce[14] ),
  .tmp_dist_14_we0	( tmp_dist_s_we[14] ),
  .tmp_dist_14_d0	( tmp_dist_s_wdata[14] ),
  .tmp_dist_14_q0	( tmp_dist_rdata0[14] ),
  .tmp_dist_15_address0	( tmp_dist_s_addr[15] ),
  .tmp_dist_15_ce0	( tmp_dist_s_ce[15] ),
  .tmp_dist_15_we0	( tmp_dist_s_we[15] ),
  .tmp_dist_15_d0	( tmp_dist_s_wdata[15] ),
  .tmp_dist_15_q0	( tmp_dist_rdata0[15] ),
  .tmp_dist_16_address0	( tmp_dist_s_addr[16] ),
  .tmp_dist_16_ce0	( tmp_dist_s_ce[16] ),
  .tmp_dist_16_we0	( tmp_dist_s_we[16] ),
  .tmp_dist_16_d0	( tmp_dist_s_wdata[16] ),
  .tmp_dist_16_q0	( tmp_dist_rdata0[16] ),
  .tmp_dist_17_address0	( tmp_dist_s_addr[17] ),
  .tmp_dist_17_ce0	( tmp_dist_s_ce[17] ),
  .tmp_dist_17_we0	( tmp_dist_s_we[17] ),
  .tmp_dist_17_d0	( tmp_dist_s_wdata[17] ),
  .tmp_dist_17_q0	( tmp_dist_rdata0[17] ),
  .tmp_dist_18_address0	( tmp_dist_s_addr[18] ),
  .tmp_dist_18_ce0	( tmp_dist_s_ce[18] ),
  .tmp_dist_18_we0	( tmp_dist_s_we[18] ),
  .tmp_dist_18_d0	( tmp_dist_s_wdata[18] ),
  .tmp_dist_18_q0	( tmp_dist_rdata0[18] ),
  .tmp_dist_19_address0	( tmp_dist_s_addr[19] ),
  .tmp_dist_19_ce0	( tmp_dist_s_ce[19] ),
  .tmp_dist_19_we0	( tmp_dist_s_we[19] ),
  .tmp_dist_19_d0	( tmp_dist_s_wdata[19] ),
  .tmp_dist_19_q0	( tmp_dist_rdata0[19] ),
  .tmp_dist_20_address0	( tmp_dist_s_addr[20] ),
  .tmp_dist_20_ce0	( tmp_dist_s_ce[20] ),
  .tmp_dist_20_we0	( tmp_dist_s_we[20] ),
  .tmp_dist_20_d0	( tmp_dist_s_wdata[20] ),
  .tmp_dist_20_q0	( tmp_dist_rdata0[20] ),
  .tmp_dist_21_address0	( tmp_dist_s_addr[21] ),
  .tmp_dist_21_ce0	( tmp_dist_s_ce[21] ),
  .tmp_dist_21_we0	( tmp_dist_s_we[21] ),
  .tmp_dist_21_d0	( tmp_dist_s_wdata[21] ),
  .tmp_dist_21_q0	( tmp_dist_rdata0[21] ),
  .tmp_dist_22_address0	( tmp_dist_s_addr[22] ),
  .tmp_dist_22_ce0	( tmp_dist_s_ce[22] ),
  .tmp_dist_22_we0	( tmp_dist_s_we[22] ),
  .tmp_dist_22_d0	( tmp_dist_s_wdata[22] ),
  .tmp_dist_22_q0	( tmp_dist_rdata0[22] ),
  .tmp_dist_23_address0	( tmp_dist_s_addr[23] ),
  .tmp_dist_23_ce0	( tmp_dist_s_ce[23] ),
  .tmp_dist_23_we0	( tmp_dist_s_we[23] ),
  .tmp_dist_23_d0	( tmp_dist_s_wdata[23] ),
  .tmp_dist_23_q0	( tmp_dist_rdata0[23] ),
  .tmp_dist_24_address0	( tmp_dist_s_addr[24] ),
  .tmp_dist_24_ce0	( tmp_dist_s_ce[24] ),
  .tmp_dist_24_we0	( tmp_dist_s_we[24] ),
  .tmp_dist_24_d0	( tmp_dist_s_wdata[24] ),
  .tmp_dist_24_q0	( tmp_dist_rdata0[24] ),
  .tmp_dist_25_address0	( tmp_dist_s_addr[25] ),
  .tmp_dist_25_ce0	( tmp_dist_s_ce[25] ),
  .tmp_dist_25_we0	( tmp_dist_s_we[25] ),
  .tmp_dist_25_d0	( tmp_dist_s_wdata[25] ),
  .tmp_dist_25_q0	( tmp_dist_rdata0[25] ),
  .tmp_dist_26_address0	( tmp_dist_s_addr[26] ),
  .tmp_dist_26_ce0	( tmp_dist_s_ce[26] ),
  .tmp_dist_26_we0	( tmp_dist_s_we[26] ),
  .tmp_dist_26_d0	( tmp_dist_s_wdata[26] ),
  .tmp_dist_26_q0	( tmp_dist_rdata0[26] ),
  .tmp_dist_27_address0	( tmp_dist_s_addr[27] ),
  .tmp_dist_27_ce0	( tmp_dist_s_ce[27] ),
  .tmp_dist_27_we0	( tmp_dist_s_we[27] ),
  .tmp_dist_27_d0	( tmp_dist_s_wdata[27] ),
  .tmp_dist_27_q0	( tmp_dist_rdata0[27] ),
  .tmp_dist_28_address0	( tmp_dist_s_addr[28] ),
  .tmp_dist_28_ce0	( tmp_dist_s_ce[28] ),
  .tmp_dist_28_we0	( tmp_dist_s_we[28] ),
  .tmp_dist_28_d0	( tmp_dist_s_wdata[28] ),
  .tmp_dist_28_q0	( tmp_dist_rdata0[28] ),
  .tmp_dist_29_address0	( tmp_dist_s_addr[29] ),
  .tmp_dist_29_ce0	( tmp_dist_s_ce[29] ),
  .tmp_dist_29_we0	( tmp_dist_s_we[29] ),
  .tmp_dist_29_d0	( tmp_dist_s_wdata[29] ),
  .tmp_dist_29_q0	( tmp_dist_rdata0[29] ),
  .tmp_dist_30_address0	( tmp_dist_s_addr[30] ),
  .tmp_dist_30_ce0	( tmp_dist_s_ce[30] ),
  .tmp_dist_30_we0	( tmp_dist_s_we[30] ),
  .tmp_dist_30_d0	( tmp_dist_s_wdata[30] ),
  .tmp_dist_30_q0	( tmp_dist_rdata0[30] ),
  .tmp_dist_31_address0	( tmp_dist_s_addr[31] ),
  .tmp_dist_31_ce0	( tmp_dist_s_ce[31] ),
  .tmp_dist_31_we0	( tmp_dist_s_we[31] ),
  .tmp_dist_31_d0	( tmp_dist_s_wdata[31] ),
  .tmp_dist_31_q0	( tmp_dist_rdata0[31] ),
  .tmp_dist_32_address0	( tmp_dist_s_addr[32] ),
  .tmp_dist_32_ce0	( tmp_dist_s_ce[32] ),
  .tmp_dist_32_we0	( tmp_dist_s_we[32] ),
  .tmp_dist_32_d0	( tmp_dist_s_wdata[32] ),
  .tmp_dist_32_q0	( tmp_dist_rdata0[32] ),
  .tmp_dist_33_address0	( tmp_dist_s_addr[33] ),
  .tmp_dist_33_ce0	( tmp_dist_s_ce[33] ),
  .tmp_dist_33_we0	( tmp_dist_s_we[33] ),
  .tmp_dist_33_d0	( tmp_dist_s_wdata[33] ),
  .tmp_dist_33_q0	( tmp_dist_rdata0[33] ),
  .tmp_dist_34_address0	( tmp_dist_s_addr[34] ),
  .tmp_dist_34_ce0	( tmp_dist_s_ce[34] ),
  .tmp_dist_34_we0	( tmp_dist_s_we[34] ),
  .tmp_dist_34_d0	( tmp_dist_s_wdata[34] ),
  .tmp_dist_34_q0	( tmp_dist_rdata0[34] ),
  .tmp_dist_35_address0	( tmp_dist_s_addr[35] ),
  .tmp_dist_35_ce0	( tmp_dist_s_ce[35] ),
  .tmp_dist_35_we0	( tmp_dist_s_we[35] ),
  .tmp_dist_35_d0	( tmp_dist_s_wdata[35] ),
  .tmp_dist_35_q0	( tmp_dist_rdata0[35] ),
  .tmp_dist_36_address0	( tmp_dist_s_addr[36] ),
  .tmp_dist_36_ce0	( tmp_dist_s_ce[36] ),
  .tmp_dist_36_we0	( tmp_dist_s_we[36] ),
  .tmp_dist_36_d0	( tmp_dist_s_wdata[36] ),
  .tmp_dist_36_q0	( tmp_dist_rdata0[36] ),
  .tmp_dist_37_address0	( tmp_dist_s_addr[37] ),
  .tmp_dist_37_ce0	( tmp_dist_s_ce[37] ),
  .tmp_dist_37_we0	( tmp_dist_s_we[37] ),
  .tmp_dist_37_d0	( tmp_dist_s_wdata[37] ),
  .tmp_dist_37_q0	( tmp_dist_rdata0[37] ),
  .tmp_dist_38_address0	( tmp_dist_s_addr[38] ),
  .tmp_dist_38_ce0	( tmp_dist_s_ce[38] ),
  .tmp_dist_38_we0	( tmp_dist_s_we[38] ),
  .tmp_dist_38_d0	( tmp_dist_s_wdata[38] ),
  .tmp_dist_38_q0	( tmp_dist_rdata0[38] ),
  .tmp_dist_39_address0	( tmp_dist_s_addr[39] ),
  .tmp_dist_39_ce0	( tmp_dist_s_ce[39] ),
  .tmp_dist_39_we0	( tmp_dist_s_we[39] ),
  .tmp_dist_39_d0	( tmp_dist_s_wdata[39] ),
  .tmp_dist_39_q0	( tmp_dist_rdata0[39] ),
  .tmp_dist_40_address0	( tmp_dist_s_addr[40] ),
  .tmp_dist_40_ce0	( tmp_dist_s_ce[40] ),
  .tmp_dist_40_we0	( tmp_dist_s_we[40] ),
  .tmp_dist_40_d0	( tmp_dist_s_wdata[40] ),
  .tmp_dist_40_q0	( tmp_dist_rdata0[40] ),
  .tmp_dist_41_address0	( tmp_dist_s_addr[41] ),
  .tmp_dist_41_ce0	( tmp_dist_s_ce[41] ),
  .tmp_dist_41_we0	( tmp_dist_s_we[41] ),
  .tmp_dist_41_d0	( tmp_dist_s_wdata[41] ),
  .tmp_dist_41_q0	( tmp_dist_rdata0[41] ),
  .tmp_dist_42_address0	( tmp_dist_s_addr[42] ),
  .tmp_dist_42_ce0	( tmp_dist_s_ce[42] ),
  .tmp_dist_42_we0	( tmp_dist_s_we[42] ),
  .tmp_dist_42_d0	( tmp_dist_s_wdata[42] ),
  .tmp_dist_42_q0	( tmp_dist_rdata0[42] ),
  .tmp_dist_43_address0	( tmp_dist_s_addr[43] ),
  .tmp_dist_43_ce0	( tmp_dist_s_ce[43] ),
  .tmp_dist_43_we0	( tmp_dist_s_we[43] ),
  .tmp_dist_43_d0	( tmp_dist_s_wdata[43] ),
  .tmp_dist_43_q0	( tmp_dist_rdata0[43] ),
  .tmp_dist_44_address0	( tmp_dist_s_addr[44] ),
  .tmp_dist_44_ce0	( tmp_dist_s_ce[44] ),
  .tmp_dist_44_we0	( tmp_dist_s_we[44] ),
  .tmp_dist_44_d0	( tmp_dist_s_wdata[44] ),
  .tmp_dist_44_q0	( tmp_dist_rdata0[44] ),
  .tmp_dist_45_address0	( tmp_dist_s_addr[45] ),
  .tmp_dist_45_ce0	( tmp_dist_s_ce[45] ),
  .tmp_dist_45_we0	( tmp_dist_s_we[45] ),
  .tmp_dist_45_d0	( tmp_dist_s_wdata[45] ),
  .tmp_dist_45_q0	( tmp_dist_rdata0[45] ),
  .tmp_dist_46_address0	( tmp_dist_s_addr[46] ),
  .tmp_dist_46_ce0	( tmp_dist_s_ce[46] ),
  .tmp_dist_46_we0	( tmp_dist_s_we[46] ),
  .tmp_dist_46_d0	( tmp_dist_s_wdata[46] ),
  .tmp_dist_46_q0	( tmp_dist_rdata0[46] ),
  .tmp_dist_47_address0	( tmp_dist_s_addr[47] ),
  .tmp_dist_47_ce0	( tmp_dist_s_ce[47] ),
  .tmp_dist_47_we0	( tmp_dist_s_we[47] ),
  .tmp_dist_47_d0	( tmp_dist_s_wdata[47] ),
  .tmp_dist_47_q0	( tmp_dist_rdata0[47] ),
  .tmp_dist_48_address0	( tmp_dist_s_addr[48] ),
  .tmp_dist_48_ce0	( tmp_dist_s_ce[48] ),
  .tmp_dist_48_we0	( tmp_dist_s_we[48] ),
  .tmp_dist_48_d0	( tmp_dist_s_wdata[48] ),
  .tmp_dist_48_q0	( tmp_dist_rdata0[48] ),
  .tmp_dist_49_address0	( tmp_dist_s_addr[49] ),
  .tmp_dist_49_ce0	( tmp_dist_s_ce[49] ),
  .tmp_dist_49_we0	( tmp_dist_s_we[49] ),
  .tmp_dist_49_d0	( tmp_dist_s_wdata[49] ),
  .tmp_dist_49_q0	( tmp_dist_rdata0[49] ),
  .tmp_dist_50_address0	( tmp_dist_s_addr[50] ),
  .tmp_dist_50_ce0	( tmp_dist_s_ce[50] ),
  .tmp_dist_50_we0	( tmp_dist_s_we[50] ),
  .tmp_dist_50_d0	( tmp_dist_s_wdata[50] ),
  .tmp_dist_50_q0	( tmp_dist_rdata0[50] ),
  .tmp_dist_51_address0	( tmp_dist_s_addr[51] ),
  .tmp_dist_51_ce0	( tmp_dist_s_ce[51] ),
  .tmp_dist_51_we0	( tmp_dist_s_we[51] ),
  .tmp_dist_51_d0	( tmp_dist_s_wdata[51] ),
  .tmp_dist_51_q0	( tmp_dist_rdata0[51] ),
  .tmp_dist_52_address0	( tmp_dist_s_addr[52] ),
  .tmp_dist_52_ce0	( tmp_dist_s_ce[52] ),
  .tmp_dist_52_we0	( tmp_dist_s_we[52] ),
  .tmp_dist_52_d0	( tmp_dist_s_wdata[52] ),
  .tmp_dist_52_q0	( tmp_dist_rdata0[52] ),
  .tmp_dist_53_address0	( tmp_dist_s_addr[53] ),
  .tmp_dist_53_ce0	( tmp_dist_s_ce[53] ),
  .tmp_dist_53_we0	( tmp_dist_s_we[53] ),
  .tmp_dist_53_d0	( tmp_dist_s_wdata[53] ),
  .tmp_dist_53_q0	( tmp_dist_rdata0[53] ),
  .tmp_dist_54_address0	( tmp_dist_s_addr[54] ),
  .tmp_dist_54_ce0	( tmp_dist_s_ce[54] ),
  .tmp_dist_54_we0	( tmp_dist_s_we[54] ),
  .tmp_dist_54_d0	( tmp_dist_s_wdata[54] ),
  .tmp_dist_54_q0	( tmp_dist_rdata0[54] ),
  .tmp_dist_55_address0	( tmp_dist_s_addr[55] ),
  .tmp_dist_55_ce0	( tmp_dist_s_ce[55] ),
  .tmp_dist_55_we0	( tmp_dist_s_we[55] ),
  .tmp_dist_55_d0	( tmp_dist_s_wdata[55] ),
  .tmp_dist_55_q0	( tmp_dist_rdata0[55] ),
  .tmp_dist_56_address0	( tmp_dist_s_addr[56] ),
  .tmp_dist_56_ce0	( tmp_dist_s_ce[56] ),
  .tmp_dist_56_we0	( tmp_dist_s_we[56] ),
  .tmp_dist_56_d0	( tmp_dist_s_wdata[56] ),
  .tmp_dist_56_q0	( tmp_dist_rdata0[56] ),
  .tmp_dist_57_address0	( tmp_dist_s_addr[57] ),
  .tmp_dist_57_ce0	( tmp_dist_s_ce[57] ),
  .tmp_dist_57_we0	( tmp_dist_s_we[57] ),
  .tmp_dist_57_d0	( tmp_dist_s_wdata[57] ),
  .tmp_dist_57_q0	( tmp_dist_rdata0[57] ),
  .tmp_dist_58_address0	( tmp_dist_s_addr[58] ),
  .tmp_dist_58_ce0	( tmp_dist_s_ce[58] ),
  .tmp_dist_58_we0	( tmp_dist_s_we[58] ),
  .tmp_dist_58_d0	( tmp_dist_s_wdata[58] ),
  .tmp_dist_58_q0	( tmp_dist_rdata0[58] ),
  .tmp_dist_59_address0	( tmp_dist_s_addr[59] ),
  .tmp_dist_59_ce0	( tmp_dist_s_ce[59] ),
  .tmp_dist_59_we0	( tmp_dist_s_we[59] ),
  .tmp_dist_59_d0	( tmp_dist_s_wdata[59] ),
  .tmp_dist_59_q0	( tmp_dist_rdata0[59] ),
  .tmp_dist_60_address0	( tmp_dist_s_addr[60] ),
  .tmp_dist_60_ce0	( tmp_dist_s_ce[60] ),
  .tmp_dist_60_we0	( tmp_dist_s_we[60] ),
  .tmp_dist_60_d0	( tmp_dist_s_wdata[60] ),
  .tmp_dist_60_q0	( tmp_dist_rdata0[60] ),
  .tmp_dist_61_address0	( tmp_dist_s_addr[61] ),
  .tmp_dist_61_ce0	( tmp_dist_s_ce[61] ),
  .tmp_dist_61_we0	( tmp_dist_s_we[61] ),
  .tmp_dist_61_d0	( tmp_dist_s_wdata[61] ),
  .tmp_dist_61_q0	( tmp_dist_rdata0[61] ),
  .tmp_dist_62_address0	( tmp_dist_s_addr[62] ),
  .tmp_dist_62_ce0	( tmp_dist_s_ce[62] ),
  .tmp_dist_62_we0	( tmp_dist_s_we[62] ),
  .tmp_dist_62_d0	( tmp_dist_s_wdata[62] ),
  .tmp_dist_62_q0	( tmp_dist_rdata0[62] ),
  .tmp_dist_63_address0	( tmp_dist_s_addr[63] ),
  .tmp_dist_63_ce0	( tmp_dist_s_ce[63] ),
  .tmp_dist_63_we0	( tmp_dist_s_we[63] ),
  .tmp_dist_63_d0	( tmp_dist_s_wdata[63] ),
  .tmp_dist_63_q0	( tmp_dist_rdata0[63] )
);

Cnt_Hdr ct_0 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .sw_vld(sw_ivld_0), .pe_cnt(cnt_scatter_st0[0]));
Cnt_Hdr ct_1 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .sw_vld(sw_ivld_1), .pe_cnt(cnt_scatter_st0[1]));
Cnt_Hdr ct_2 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .sw_vld(sw_ivld_2), .pe_cnt(cnt_scatter_st0[2]));
Cnt_Hdr ct_3 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .sw_vld(sw_ivld_3), .pe_cnt(cnt_scatter_st0[3]));

Start_Hdr st_0 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[0]), .pe_done(gather_ap_done[0]), .pe_start(gather_ap_start[0]), .pe_cnt(cnt_gather_st0[0]));
Start_Hdr st_1 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[1]), .pe_done(gather_ap_done[1]), .pe_start(gather_ap_start[1]), .pe_cnt(cnt_gather_st0[1]));
Start_Hdr st_2 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[2]), .pe_done(gather_ap_done[2]), .pe_start(gather_ap_start[2]), .pe_cnt(cnt_gather_st0[2]));
Start_Hdr st_3 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[3]), .pe_done(gather_ap_done[3]), .pe_start(gather_ap_start[3]), .pe_cnt(cnt_gather_st0[3]));
Start_Hdr st_4 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[4]), .pe_done(gather_ap_done[4]), .pe_start(gather_ap_start[4]), .pe_cnt(cnt_gather_st0[4]));
Start_Hdr st_5 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[5]), .pe_done(gather_ap_done[5]), .pe_start(gather_ap_start[5]), .pe_cnt(cnt_gather_st0[5]));
Start_Hdr st_6 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[6]), .pe_done(gather_ap_done[6]), .pe_start(gather_ap_start[6]), .pe_cnt(cnt_gather_st0[6]));
Start_Hdr st_7 (.clk(ap_clk), .rst_n(ap_rst_n), .sys_start(ap_start), .ap_start(gather_sw_vld[7]), .pe_done(gather_ap_done[7]), .pe_start(gather_ap_start[7]), .pe_cnt(cnt_gather_st0[7]));

always @(posedge ap_clk) begin
  cnt_scatter_st1[0] <= cnt_scatter_st0[0] + cnt_scatter_st0[1] + cnt_scatter_st0[2] + cnt_scatter_st0[3];
  cnt_gather_st1[0] <= cnt_gather_st0[0] + cnt_gather_st0[1] + cnt_gather_st0[2] + cnt_gather_st0[3];
  cnt_gather_st1[1] <= cnt_gather_st0[4] + cnt_gather_st0[5] + cnt_gather_st0[6] + cnt_gather_st0[7];
end
assign cnt_scatter = cnt_scatter_st1[0];
assign cnt_gather = cnt_gather_st1[0] + cnt_gather_st1[1];

genvar fifoIdx;
generate
  for (fifoIdx=0; fifoIdx<8; fifoIdx=fifoIdx+1)
  begin : gen_gather_fifo
    FIFO_D32 # (
      .DATA_WIDTH ( 32 ),
      .EMPTY_TH   ( 3  ),
      .FULL_TH    ( 25 )
    ) inst_gather_fifo_U (
      .clk	( ap_clk    ),
      .rst	( ~ap_rst_n ),
      .rd_en	( fifo_rd_en[fifoIdx] ),
      .wr_en	( fifo_wr_en[fifoIdx] ),
      .din	( fifo_din[fifoIdx] ),
      .dout	( fifo_dout[fifoIdx] ),
      .empty	( fifo_empty[fifoIdx] ),
      .prog_full( fifo_prog_full[fifoIdx] )
    );

    assign fifo_din[fifoIdx] = sw_odata_1d[fifoIdx];
    assign fifo_wr_en[fifoIdx] = sw_ovld_1d[fifoIdx];
    assign fifo_rd_en[fifoIdx] = (~fifo_empty[fifoIdx]) & gather_rd_en[fifoIdx];
    assign gather_sw_vld[fifoIdx] = fifo_rd_en[fifoIdx] & gather_rd_en[fifoIdx];
  end
endgenerate

assign sw_ivld_0 = i_sw_ivld_0 & (sw_idata_0[21:0]!=22'd4194303);
assign sw_ivld_1 = i_sw_ivld_1 & (sw_idata_1[21:0]!=22'd4194303);
assign sw_ivld_2 = i_sw_ivld_2 & (sw_idata_2[21:0]!=22'd4194303);
assign sw_ivld_3 = i_sw_ivld_3 & (sw_idata_3[21:0]!=22'd4194303);

assign sw_bp_0 = fifo_prog_full[0] | fifo_prog_full[4];
assign sw_bp_1 = fifo_prog_full[1] | fifo_prog_full[5];
assign sw_bp_2 = fifo_prog_full[2] | fifo_prog_full[6];
assign sw_bp_3 = fifo_prog_full[3] | fifo_prog_full[7];

always @(posedge ap_clk) begin
  inv_ap_start_1d <= ~ap_start;
  sw_ovld_1d[0] <= sw_ovld_0_0;
  sw_odata_1d[0] <= sw_odata_0_0;
  sw_ovld_1d[1] <= sw_ovld_0_1;
  sw_odata_1d[1] <= sw_odata_0_1;
  sw_ovld_1d[2] <= sw_ovld_1_0;
  sw_odata_1d[2] <= sw_odata_1_0;
  sw_ovld_1d[3] <= sw_ovld_1_1;
  sw_odata_1d[3] <= sw_odata_1_1;
  sw_ovld_1d[4] <= sw_ovld_2_0;
  sw_odata_1d[4] <= sw_odata_2_0;
  sw_ovld_1d[5] <= sw_ovld_2_1;
  sw_odata_1d[5] <= sw_odata_2_1;
  sw_ovld_1d[6] <= sw_ovld_3_0;
  sw_odata_1d[6] <= sw_odata_3_0;
  sw_ovld_1d[7] <= sw_ovld_3_1;
  sw_odata_1d[7] <= sw_odata_3_1;
end

genvar gatherIdx;
generate
  for (gatherIdx=0; gatherIdx<8; gatherIdx=gatherIdx+1)
  begin : gen_gather_pe
  BFS_Gather inst_gather_pe_U (
    .ap_clk	( ap_clk ),
    .ap_rst	( ~ap_rst_n ),
    .ap_start	( gather_ap_start[gatherIdx] ),
    .ap_done	( gather_ap_done[gatherIdx] ),
    .ap_idle	( gather_rd_en[gatherIdx] ),
    .peID	( peID ),
    .sw_data	( fifo_dout[gatherIdx] ),
    .exist	( exist_gather[gatherIdx] ),
      .tmp_dist_0_address0	( tmp_dist_g_addr[0+gatherIdx] ),
      .tmp_dist_0_ce0	( tmp_dist_g_ce[0+gatherIdx] ),
      .tmp_dist_0_we0	( tmp_dist_g_we[0+gatherIdx] ),
      .tmp_dist_0_d0	( tmp_dist_g_wdata[0+gatherIdx] ),
      .tmp_dist_0_q0	( tmp_dist_rdata1[0+gatherIdx] ),
      .tmp_dist_1_address0	( tmp_dist_g_addr[8+gatherIdx] ),
      .tmp_dist_1_ce0	( tmp_dist_g_ce[8+gatherIdx] ),
      .tmp_dist_1_we0	( tmp_dist_g_we[8+gatherIdx] ),
      .tmp_dist_1_d0	( tmp_dist_g_wdata[8+gatherIdx] ),
      .tmp_dist_1_q0	( tmp_dist_rdata1[8+gatherIdx] ),
      .tmp_dist_2_address0	( tmp_dist_g_addr[16+gatherIdx] ),
      .tmp_dist_2_ce0	( tmp_dist_g_ce[16+gatherIdx] ),
      .tmp_dist_2_we0	( tmp_dist_g_we[16+gatherIdx] ),
      .tmp_dist_2_d0	( tmp_dist_g_wdata[16+gatherIdx] ),
      .tmp_dist_2_q0	( tmp_dist_rdata1[16+gatherIdx] ),
      .tmp_dist_3_address0	( tmp_dist_g_addr[24+gatherIdx] ),
      .tmp_dist_3_ce0	( tmp_dist_g_ce[24+gatherIdx] ),
      .tmp_dist_3_we0	( tmp_dist_g_we[24+gatherIdx] ),
      .tmp_dist_3_d0	( tmp_dist_g_wdata[24+gatherIdx] ),
      .tmp_dist_3_q0	( tmp_dist_rdata1[24+gatherIdx] ),
      .tmp_dist_4_address0	( tmp_dist_g_addr[32+gatherIdx] ),
      .tmp_dist_4_ce0	( tmp_dist_g_ce[32+gatherIdx] ),
      .tmp_dist_4_we0	( tmp_dist_g_we[32+gatherIdx] ),
      .tmp_dist_4_d0	( tmp_dist_g_wdata[32+gatherIdx] ),
      .tmp_dist_4_q0	( tmp_dist_rdata1[32+gatherIdx] ),
      .tmp_dist_5_address0	( tmp_dist_g_addr[40+gatherIdx] ),
      .tmp_dist_5_ce0	( tmp_dist_g_ce[40+gatherIdx] ),
      .tmp_dist_5_we0	( tmp_dist_g_we[40+gatherIdx] ),
      .tmp_dist_5_d0	( tmp_dist_g_wdata[40+gatherIdx] ),
      .tmp_dist_5_q0	( tmp_dist_rdata1[40+gatherIdx] ),
      .tmp_dist_6_address0	( tmp_dist_g_addr[48+gatherIdx] ),
      .tmp_dist_6_ce0	( tmp_dist_g_ce[48+gatherIdx] ),
      .tmp_dist_6_we0	( tmp_dist_g_we[48+gatherIdx] ),
      .tmp_dist_6_d0	( tmp_dist_g_wdata[48+gatherIdx] ),
      .tmp_dist_6_q0	( tmp_dist_rdata1[48+gatherIdx] ),
      .tmp_dist_7_address0	( tmp_dist_g_addr[56+gatherIdx] ),
      .tmp_dist_7_ce0	( tmp_dist_g_ce[56+gatherIdx] ),
      .tmp_dist_7_we0	( tmp_dist_g_we[56+gatherIdx] ),
      .tmp_dist_7_d0	( tmp_dist_g_wdata[56+gatherIdx] ),
      .tmp_dist_7_q0	( tmp_dist_rdata1[56+gatherIdx] ),
    .ap_ready	()
    );
  end
endgenerate

assign exist = (exist_gather[0] | exist_gather[1] | exist_gather[2] | exist_gather[3] | exist_gather[4] | exist_gather[5] | exist_gather[6] | exist_gather[7]);

genvar tmp_dist_idx;
generate
  for (tmp_dist_idx=0; tmp_dist_idx<64; tmp_dist_idx=tmp_dist_idx+1)
  begin : tmp_dist_ram_mux_logic
    assign tmp_dist_ce0[tmp_dist_idx] = tmp_dist_s_ce[tmp_dist_idx];
    assign tmp_dist_we0[tmp_dist_idx] = {8{tmp_dist_s_we[tmp_dist_idx]}};
    assign tmp_dist_addr0[tmp_dist_idx] = tmp_dist_s_addr[tmp_dist_idx];
    assign tmp_dist_wdata0[tmp_dist_idx] = tmp_dist_s_wdata[tmp_dist_idx];
    assign tmp_dist_ce1[tmp_dist_idx] = tmp_dist_g_ce[tmp_dist_idx];
    assign tmp_dist_we1[tmp_dist_idx] = tmp_dist_g_we[tmp_dist_idx];
    assign tmp_dist_addr1[tmp_dist_idx] = tmp_dist_g_addr[tmp_dist_idx];
    assign tmp_dist_wdata1[tmp_dist_idx] = tmp_dist_g_wdata[tmp_dist_idx];
  end
endgenerate

endmodule
