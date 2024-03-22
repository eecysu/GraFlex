// ==============================================================
// GraFlex BSP CU Wrapper Module
// ==============================================================
`timescale 1 ns/1 ps

module BFS_CU_32X1_VER1 (
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
  input wire [8-1:0][64-1:0]	tmp_dist_rdata0,
  input wire [8-1:0][64-1:0]	tmp_dist_rdata1,
  output wire [8-1:0][64-1:0]	tmp_dist_wdata0,
  output wire [8-1:0][64-1:0]	tmp_dist_wdata1,
  output wire [8-1:0][12-1:0]	tmp_dist_addr0,
  output wire [8-1:0][12-1:0]	tmp_dist_addr1,
  output wire [8-1:0]	tmp_dist_ce0,
  output wire [8-1:0]	tmp_dist_ce1,
  output wire [8-1:0][8-1:0]	tmp_dist_we0,
  output wire [8-1:0][8-1:0]	tmp_dist_we1,
  input wire [8-1:0]	peID
);

logic [64-1:0]	tmp_dist_s_wdata[0:8-1];
logic [64-1:0]	tmp_dist_g_wdata[0:8-1];
logic [12-1:0]	tmp_dist_s_addr[0:8-1];
logic [12-1:0]	tmp_dist_g_addr[0:8-1];
logic 	tmp_dist_s_ce[0:8-1];
logic 	tmp_dist_g_ce[0:8-1];
logic [8-1:0]	tmp_dist_g_we[0:8-1];
logic 	tmp_dist_s_we[0:8-1];
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
  .tmp_dist_7_q0	( tmp_dist_rdata0[7] )
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
      .FULL_TH    ( 22 )
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
  sw_ovld_1d[4] <= sw_ovld_0_1;
  sw_odata_1d[4] <= sw_odata_0_1;
  sw_ovld_1d[1] <= sw_ovld_1_0;
  sw_odata_1d[1] <= sw_odata_1_0;
  sw_ovld_1d[5] <= sw_ovld_1_1;
  sw_odata_1d[5] <= sw_odata_1_1;
  sw_ovld_1d[2] <= sw_ovld_2_0;
  sw_odata_1d[2] <= sw_odata_2_0;
  sw_ovld_1d[6] <= sw_ovld_2_1;
  sw_odata_1d[6] <= sw_odata_2_1;
  sw_ovld_1d[3] <= sw_ovld_3_0;
  sw_odata_1d[3] <= sw_odata_3_0;
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
      .tmp_dist_address0	( tmp_dist_g_addr[gatherIdx] ),
      .tmp_dist_ce0	( tmp_dist_g_ce[gatherIdx] ),
      .tmp_dist_we0	( tmp_dist_g_we[gatherIdx] ),
      .tmp_dist_d0	( tmp_dist_g_wdata[gatherIdx] ),
      .tmp_dist_q0	( tmp_dist_rdata1[gatherIdx] ),
    .ap_ready	()
    );
  end
endgenerate

assign exist = (exist_gather[0] | exist_gather[1] | exist_gather[2] | exist_gather[3] | exist_gather[4] | exist_gather[5] | exist_gather[6] | exist_gather[7]);

genvar tmp_dist_idx;
generate
  for (tmp_dist_idx=0; tmp_dist_idx<8; tmp_dist_idx=tmp_dist_idx+1)
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
