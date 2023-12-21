; ModuleID = '/Zodiac/GraFlex/ArtifactEvaluation/figure8/BFS_Scalability/PE_2/src/hw/scatter/bfs_scatter_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_int.31 = type { %struct.ap_int_base.29 }
%struct.ap_int_base.29 = type { %struct.ssdm_int.30 }
%struct.ssdm_int.30 = type { i33 }
%"class.hls::stream" = type { %"struct.hls::axis" }
%"struct.hls::axis" = type { %struct.ap_uint, %struct.ap_uint.0, %struct.ap_uint.0, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3, %struct.ap_uint.3 }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i128 }
%struct.ap_uint.0 = type { %struct.ap_int_base.1 }
%struct.ap_int_base.1 = type { %struct.ssdm_int.2 }
%struct.ssdm_int.2 = type { i16 }
%struct.ap_uint.3 = type { %struct.ap_int_base.4 }
%struct.ap_int_base.4 = type { %struct.ssdm_int.5 }
%struct.ssdm_int.5 = type { i1 }
%"class.hls::stream.9" = type { i32 }
%struct.ap_uint.6 = type { %struct.ap_int_base.7 }
%struct.ap_int_base.7 = type { %struct.ssdm_int.8 }
%struct.ssdm_int.8 = type { i64 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_BFS_Scatter_ir(%struct.ap_int.31* nocapture readonly %CSR_V, %struct.ap_int.31* nocapture readonly %CSR_E, %struct.ap_int.31* nocapture readonly %glbl_d, i64* %rd_baseAddr, i64* %wr_baseAddr, %"class.hls::stream"* %rd_port, %"class.hls::stream"* %wr_port, %"class.hls::stream.9"* %rd_req, i16* %wr_len, i1* %rd_start, i1* %wr_start, i32 %N_Vertex, i32 %root, i8 %peID, %"class.hls::stream.9"* %sw_data_0, %"class.hls::stream.9"* %sw_data_1, %"class.hls::stream.9"* %sw_data_2, %"class.hls::stream.9"* %sw_data_3, i16* %glblIterIdx, i32* %cycle_cnt, i1* %launch_recv, i1 %resWrite, [4096 x %struct.ap_uint.6]* %tmp_dist) local_unnamed_addr #1 {
entry:
  %rd_baseAddr_copy = alloca i64, align 512
  %wr_baseAddr_copy = alloca i64, align 512
  %rd_port_copy = alloca %"class.hls::stream", align 512
  %wr_port_copy = alloca %"class.hls::stream", align 512
  %rd_req_copy1 = alloca %"class.hls::stream.9", align 512
  %wr_len_copy = alloca i16, align 512
  %rd_start_copy = alloca i1, align 512
  %wr_start_copy = alloca i1, align 512
  %sw_data_0_copy2 = alloca %"class.hls::stream.9", align 512
  %sw_data_1_copy3 = alloca %"class.hls::stream.9", align 512
  %sw_data_2_copy4 = alloca %"class.hls::stream.9", align 512
  %sw_data_3_copy5 = alloca %"class.hls::stream.9", align 512
  %glblIterIdx_copy = alloca i16, align 512
  %cycle_cnt_copy = alloca i32, align 512
  %launch_recv_copy = alloca i1, align 512
  %malloccall_0 = call i8* @malloc(i64 32768)
  %malloccall_1 = call i8* @malloc(i64 32768)
  %malloccall_2 = call i8* @malloc(i64 32768)
  %malloccall_3 = call i8* @malloc(i64 32768)
  %malloccall_4 = call i8* @malloc(i64 32768)
  %malloccall_5 = call i8* @malloc(i64 32768)
  %malloccall_6 = call i8* @malloc(i64 32768)
  %malloccall_7 = call i8* @malloc(i64 32768)
  %malloccall_8 = call i8* @malloc(i64 32768)
  %malloccall_9 = call i8* @malloc(i64 32768)
  %malloccall_10 = call i8* @malloc(i64 32768)
  %malloccall_11 = call i8* @malloc(i64 32768)
  %malloccall_12 = call i8* @malloc(i64 32768)
  %malloccall_13 = call i8* @malloc(i64 32768)
  %malloccall_14 = call i8* @malloc(i64 32768)
  %malloccall_15 = call i8* @malloc(i64 32768)
  %malloccall_16 = call i8* @malloc(i64 32768)
  %malloccall_17 = call i8* @malloc(i64 32768)
  %malloccall_18 = call i8* @malloc(i64 32768)
  %malloccall_19 = call i8* @malloc(i64 32768)
  %malloccall_20 = call i8* @malloc(i64 32768)
  %malloccall_21 = call i8* @malloc(i64 32768)
  %malloccall_22 = call i8* @malloc(i64 32768)
  %malloccall_23 = call i8* @malloc(i64 32768)
  %malloccall_24 = call i8* @malloc(i64 32768)
  %malloccall_25 = call i8* @malloc(i64 32768)
  %malloccall_26 = call i8* @malloc(i64 32768)
  %malloccall_27 = call i8* @malloc(i64 32768)
  %malloccall_28 = call i8* @malloc(i64 32768)
  %malloccall_29 = call i8* @malloc(i64 32768)
  %malloccall_30 = call i8* @malloc(i64 32768)
  %malloccall_31 = call i8* @malloc(i64 32768)
  %malloccall_32 = call i8* @malloc(i64 32768)
  %malloccall_33 = call i8* @malloc(i64 32768)
  %malloccall_34 = call i8* @malloc(i64 32768)
  %malloccall_35 = call i8* @malloc(i64 32768)
  %malloccall_36 = call i8* @malloc(i64 32768)
  %malloccall_37 = call i8* @malloc(i64 32768)
  %malloccall_38 = call i8* @malloc(i64 32768)
  %malloccall_39 = call i8* @malloc(i64 32768)
  %malloccall_40 = call i8* @malloc(i64 32768)
  %malloccall_41 = call i8* @malloc(i64 32768)
  %malloccall_42 = call i8* @malloc(i64 32768)
  %malloccall_43 = call i8* @malloc(i64 32768)
  %malloccall_44 = call i8* @malloc(i64 32768)
  %malloccall_45 = call i8* @malloc(i64 32768)
  %malloccall_46 = call i8* @malloc(i64 32768)
  %malloccall_47 = call i8* @malloc(i64 32768)
  %malloccall_48 = call i8* @malloc(i64 32768)
  %malloccall_49 = call i8* @malloc(i64 32768)
  %malloccall_50 = call i8* @malloc(i64 32768)
  %malloccall_51 = call i8* @malloc(i64 32768)
  %malloccall_52 = call i8* @malloc(i64 32768)
  %malloccall_53 = call i8* @malloc(i64 32768)
  %malloccall_54 = call i8* @malloc(i64 32768)
  %malloccall_55 = call i8* @malloc(i64 32768)
  %malloccall_56 = call i8* @malloc(i64 32768)
  %malloccall_57 = call i8* @malloc(i64 32768)
  %malloccall_58 = call i8* @malloc(i64 32768)
  %malloccall_59 = call i8* @malloc(i64 32768)
  %malloccall_60 = call i8* @malloc(i64 32768)
  %malloccall_61 = call i8* @malloc(i64 32768)
  %malloccall_62 = call i8* @malloc(i64 32768)
  %malloccall_63 = call i8* @malloc(i64 32768)
  %tmp_dist_copy_0 = bitcast i8* %malloccall_0 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_1 = bitcast i8* %malloccall_1 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_2 = bitcast i8* %malloccall_2 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_3 = bitcast i8* %malloccall_3 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_4 = bitcast i8* %malloccall_4 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_5 = bitcast i8* %malloccall_5 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_6 = bitcast i8* %malloccall_6 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_7 = bitcast i8* %malloccall_7 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_8 = bitcast i8* %malloccall_8 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_9 = bitcast i8* %malloccall_9 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_10 = bitcast i8* %malloccall_10 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_11 = bitcast i8* %malloccall_11 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_12 = bitcast i8* %malloccall_12 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_13 = bitcast i8* %malloccall_13 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_14 = bitcast i8* %malloccall_14 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_15 = bitcast i8* %malloccall_15 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_16 = bitcast i8* %malloccall_16 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_17 = bitcast i8* %malloccall_17 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_18 = bitcast i8* %malloccall_18 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_19 = bitcast i8* %malloccall_19 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_20 = bitcast i8* %malloccall_20 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_21 = bitcast i8* %malloccall_21 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_22 = bitcast i8* %malloccall_22 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_23 = bitcast i8* %malloccall_23 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_24 = bitcast i8* %malloccall_24 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_25 = bitcast i8* %malloccall_25 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_26 = bitcast i8* %malloccall_26 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_27 = bitcast i8* %malloccall_27 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_28 = bitcast i8* %malloccall_28 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_29 = bitcast i8* %malloccall_29 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_30 = bitcast i8* %malloccall_30 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_31 = bitcast i8* %malloccall_31 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_32 = bitcast i8* %malloccall_32 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_33 = bitcast i8* %malloccall_33 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_34 = bitcast i8* %malloccall_34 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_35 = bitcast i8* %malloccall_35 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_36 = bitcast i8* %malloccall_36 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_37 = bitcast i8* %malloccall_37 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_38 = bitcast i8* %malloccall_38 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_39 = bitcast i8* %malloccall_39 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_40 = bitcast i8* %malloccall_40 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_41 = bitcast i8* %malloccall_41 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_42 = bitcast i8* %malloccall_42 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_43 = bitcast i8* %malloccall_43 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_44 = bitcast i8* %malloccall_44 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_45 = bitcast i8* %malloccall_45 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_46 = bitcast i8* %malloccall_46 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_47 = bitcast i8* %malloccall_47 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_48 = bitcast i8* %malloccall_48 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_49 = bitcast i8* %malloccall_49 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_50 = bitcast i8* %malloccall_50 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_51 = bitcast i8* %malloccall_51 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_52 = bitcast i8* %malloccall_52 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_53 = bitcast i8* %malloccall_53 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_54 = bitcast i8* %malloccall_54 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_55 = bitcast i8* %malloccall_55 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_56 = bitcast i8* %malloccall_56 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_57 = bitcast i8* %malloccall_57 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_58 = bitcast i8* %malloccall_58 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_59 = bitcast i8* %malloccall_59 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_60 = bitcast i8* %malloccall_60 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_61 = bitcast i8* %malloccall_61 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_62 = bitcast i8* %malloccall_62 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_63 = bitcast i8* %malloccall_63 to [4096 x %struct.ap_uint.6]*
  %0 = bitcast [4096 x %struct.ap_uint.6]* %tmp_dist to [64 x [4096 x %struct.ap_uint.6]]*
  call void @copy_in(i64* %rd_baseAddr, i64* nonnull align 512 %rd_baseAddr_copy, i64* %wr_baseAddr, i64* nonnull align 512 %wr_baseAddr_copy, %"class.hls::stream"* %rd_port, %"class.hls::stream"* nonnull align 512 %rd_port_copy, %"class.hls::stream"* %wr_port, %"class.hls::stream"* nonnull align 512 %wr_port_copy, %"class.hls::stream.9"* %rd_req, %"class.hls::stream.9"* nonnull align 512 %rd_req_copy1, i16* %wr_len, i16* nonnull align 512 %wr_len_copy, i1* %rd_start, i1* nonnull align 512 %rd_start_copy, i1* %wr_start, i1* nonnull align 512 %wr_start_copy, %"class.hls::stream.9"* %sw_data_0, %"class.hls::stream.9"* nonnull align 512 %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1, %"class.hls::stream.9"* nonnull align 512 %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2, %"class.hls::stream.9"* nonnull align 512 %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3, %"class.hls::stream.9"* nonnull align 512 %sw_data_3_copy5, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cycle_cnt, i32* nonnull align 512 %cycle_cnt_copy, i1* %launch_recv, i1* nonnull align 512 %launch_recv_copy, [64 x [4096 x %struct.ap_uint.6]]* %0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_8, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_9, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_10, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_11, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_12, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_13, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_14, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_15, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_16, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_17, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_18, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_19, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_20, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_21, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_22, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_23, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_24, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_25, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_26, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_27, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_28, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_29, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_30, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_31, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_32, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_33, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_34, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_35, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_36, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_37, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_38, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_39, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_40, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_41, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_42, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_43, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_44, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_45, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_46, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_47, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_48, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_49, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_50, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_51, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_52, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_53, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_54, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_55, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_56, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_57, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_58, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_59, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_60, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_61, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_62, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_63)
  call void @apatb_BFS_Scatter_hw(%struct.ap_int.31* %CSR_V, %struct.ap_int.31* %CSR_E, %struct.ap_int.31* %glbl_d, i64* %rd_baseAddr_copy, i64* %wr_baseAddr_copy, %"class.hls::stream"* %rd_port_copy, %"class.hls::stream"* %wr_port_copy, %"class.hls::stream.9"* %rd_req_copy1, i16* %wr_len_copy, i1* %rd_start_copy, i1* %wr_start_copy, i32 %N_Vertex, i32 %root, i8 %peID, %"class.hls::stream.9"* %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3_copy5, i16* %glblIterIdx_copy, i32* %cycle_cnt_copy, i1* %launch_recv_copy, i1 %resWrite, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_8, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_9, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_10, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_11, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_12, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_13, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_14, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_15, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_16, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_17, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_18, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_19, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_20, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_21, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_22, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_23, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_24, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_25, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_26, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_27, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_28, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_29, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_30, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_31, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_32, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_33, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_34, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_35, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_36, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_37, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_38, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_39, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_40, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_41, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_42, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_43, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_44, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_45, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_46, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_47, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_48, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_49, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_50, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_51, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_52, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_53, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_54, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_55, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_56, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_57, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_58, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_59, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_60, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_61, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_62, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_63)
  call void @copy_out(i64* %rd_baseAddr, i64* nonnull align 512 %rd_baseAddr_copy, i64* %wr_baseAddr, i64* nonnull align 512 %wr_baseAddr_copy, %"class.hls::stream"* %rd_port, %"class.hls::stream"* nonnull align 512 %rd_port_copy, %"class.hls::stream"* %wr_port, %"class.hls::stream"* nonnull align 512 %wr_port_copy, %"class.hls::stream.9"* %rd_req, %"class.hls::stream.9"* nonnull align 512 %rd_req_copy1, i16* %wr_len, i16* nonnull align 512 %wr_len_copy, i1* %rd_start, i1* nonnull align 512 %rd_start_copy, i1* %wr_start, i1* nonnull align 512 %wr_start_copy, %"class.hls::stream.9"* %sw_data_0, %"class.hls::stream.9"* nonnull align 512 %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1, %"class.hls::stream.9"* nonnull align 512 %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2, %"class.hls::stream.9"* nonnull align 512 %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3, %"class.hls::stream.9"* nonnull align 512 %sw_data_3_copy5, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cycle_cnt, i32* nonnull align 512 %cycle_cnt_copy, i1* %launch_recv, i1* nonnull align 512 %launch_recv_copy, [64 x [4096 x %struct.ap_uint.6]]* %0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_8, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_9, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_10, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_11, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_12, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_13, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_14, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_15, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_16, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_17, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_18, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_19, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_20, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_21, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_22, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_23, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_24, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_25, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_26, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_27, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_28, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_29, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_30, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_31, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_32, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_33, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_34, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_35, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_36, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_37, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_38, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_39, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_40, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_41, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_42, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_43, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_44, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_45, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_46, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_47, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_48, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_49, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_50, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_51, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_52, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_53, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_54, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_55, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_56, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_57, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_58, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_59, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_60, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_61, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_62, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_63)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  call void @free(i8* %malloccall_8)
  call void @free(i8* %malloccall_9)
  call void @free(i8* %malloccall_10)
  call void @free(i8* %malloccall_11)
  call void @free(i8* %malloccall_12)
  call void @free(i8* %malloccall_13)
  call void @free(i8* %malloccall_14)
  call void @free(i8* %malloccall_15)
  call void @free(i8* %malloccall_16)
  call void @free(i8* %malloccall_17)
  call void @free(i8* %malloccall_18)
  call void @free(i8* %malloccall_19)
  call void @free(i8* %malloccall_20)
  call void @free(i8* %malloccall_21)
  call void @free(i8* %malloccall_22)
  call void @free(i8* %malloccall_23)
  call void @free(i8* %malloccall_24)
  call void @free(i8* %malloccall_25)
  call void @free(i8* %malloccall_26)
  call void @free(i8* %malloccall_27)
  call void @free(i8* %malloccall_28)
  call void @free(i8* %malloccall_29)
  call void @free(i8* %malloccall_30)
  call void @free(i8* %malloccall_31)
  call void @free(i8* %malloccall_32)
  call void @free(i8* %malloccall_33)
  call void @free(i8* %malloccall_34)
  call void @free(i8* %malloccall_35)
  call void @free(i8* %malloccall_36)
  call void @free(i8* %malloccall_37)
  call void @free(i8* %malloccall_38)
  call void @free(i8* %malloccall_39)
  call void @free(i8* %malloccall_40)
  call void @free(i8* %malloccall_41)
  call void @free(i8* %malloccall_42)
  call void @free(i8* %malloccall_43)
  call void @free(i8* %malloccall_44)
  call void @free(i8* %malloccall_45)
  call void @free(i8* %malloccall_46)
  call void @free(i8* %malloccall_47)
  call void @free(i8* %malloccall_48)
  call void @free(i8* %malloccall_49)
  call void @free(i8* %malloccall_50)
  call void @free(i8* %malloccall_51)
  call void @free(i8* %malloccall_52)
  call void @free(i8* %malloccall_53)
  call void @free(i8* %malloccall_54)
  call void @free(i8* %malloccall_55)
  call void @free(i8* %malloccall_56)
  call void @free(i8* %malloccall_57)
  call void @free(i8* %malloccall_58)
  call void @free(i8* %malloccall_59)
  call void @free(i8* %malloccall_60)
  call void @free(i8* %malloccall_61)
  call void @free(i8* %malloccall_62)
  call void @free(i8* %malloccall_63)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i64(i64* noalias align 512, i64* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i64* %0 to i8*
  %6 = bitcast i64* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 8, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias align 512, %"class.hls::stream"* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream"* %0, null
  %3 = icmp eq %"class.hls::stream"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_32(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* nonnull align 512 %0, %"class.hls::stream"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %.0.02 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0
  %.01.03 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* align 512 %.01.03, %struct.ap_uint* %.0.02)
  br label %19

; <label>:11:                                     ; preds = %8
  %.0.0.04 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0
  %.01.0.05 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* align 512 %.01.0.05, %struct.ap_int_base* %.0.0.04)
  br label %19

; <label>:14:                                     ; preds = %11
  %.0.0.0.06 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 0, i32 0, i32 0
  %.01.0.0.07 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_16(i8* %5)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %14
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* align 512 %.01.0.0.07, %struct.ssdm_int* %.0.0.0.06)
  br label %19

; <label>:17:                                     ; preds = %14
  %18 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 %5, i64 16, i1 false)
  br label %19

; <label>:19:                                     ; preds = %17, %16, %13, %10
  %.0.110 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1
  %.01.111 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1
  %20 = bitcast %struct.ap_uint.0* %.0.110 to i8*
  %21 = call i1 @fpga_fifo_exist_2(i8* %20)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* align 16 %.01.111, %struct.ap_uint.0* %.0.110)
  br label %34

; <label>:23:                                     ; preds = %19
  %.0.1.012 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0
  %.01.1.013 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0
  %24 = bitcast %struct.ap_int_base.1* %.0.1.012 to i8*
  %25 = call i1 @fpga_fifo_exist_2(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* align 16 %.01.1.013, %struct.ap_int_base.1* %.0.1.012)
  br label %34

; <label>:27:                                     ; preds = %23
  %.0.1.0.014 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0
  %.01.1.0.015 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0
  %28 = bitcast %struct.ssdm_int.2* %.0.1.0.014 to i8*
  %29 = call i1 @fpga_fifo_exist_2(i8* %28)
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* align 16 %.01.1.0.015, %struct.ssdm_int.2* %.0.1.0.014)
  br label %34

; <label>:31:                                     ; preds = %27
  %.01.1.0.0.017.gep59 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %32 = bitcast i16* %.01.1.0.0.017.gep59 to i8*
  %.0.1.0.0.016.gep60 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %33 = bitcast i16* %.0.1.0.0.016.gep60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 2, i1 false)
  br label %34

; <label>:34:                                     ; preds = %31, %30, %26, %22
  %.0.218 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2
  %.01.219 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2
  %35 = bitcast %struct.ap_uint.0* %.0.218 to i8*
  %36 = call i1 @fpga_fifo_exist_2(i8* %35)
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %.01.219, %struct.ap_uint.0* %.0.218)
  br label %49

; <label>:38:                                     ; preds = %34
  %.0.2.020 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0
  %.01.2.021 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0
  %39 = bitcast %struct.ap_int_base.1* %.0.2.020 to i8*
  %40 = call i1 @fpga_fifo_exist_2(i8* %39)
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %38
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* %.01.2.021, %struct.ap_int_base.1* %.0.2.020)
  br label %49

; <label>:42:                                     ; preds = %38
  %.0.2.0.022 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0
  %.01.2.0.023 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0
  %43 = bitcast %struct.ssdm_int.2* %.0.2.0.022 to i8*
  %44 = call i1 @fpga_fifo_exist_2(i8* %43)
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* %.01.2.0.023, %struct.ssdm_int.2* %.0.2.0.022)
  br label %49

; <label>:46:                                     ; preds = %42
  %.01.2.0.0.025.gep61 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %47 = bitcast i16* %.01.2.0.0.025.gep61 to i8*
  %.0.2.0.0.024.gep62 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0
  %48 = bitcast i16* %.0.2.0.0.024.gep62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 2, i1 false)
  br label %49

; <label>:49:                                     ; preds = %46, %45, %41, %37
  %.0.326 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3
  %.01.327 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3
  %50 = bitcast %struct.ap_uint.3* %.0.326 to i8*
  %51 = call i1 @fpga_fifo_exist_1(i8* %50)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.327, %struct.ap_uint.3* %.0.326)
  br label %64

; <label>:53:                                     ; preds = %49
  %.0.3.028 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0
  %.01.3.029 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0
  %54 = bitcast %struct.ap_int_base.4* %.0.3.028 to i8*
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %53
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.3.029, %struct.ap_int_base.4* %.0.3.028)
  br label %64

; <label>:57:                                     ; preds = %53
  %.0.3.0.030 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0
  %.01.3.0.031 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0
  %58 = bitcast %struct.ssdm_int.5* %.0.3.0.030 to i8*
  %59 = call i1 @fpga_fifo_exist_1(i8* %58)
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.3.0.031, %struct.ssdm_int.5* %.0.3.0.030)
  br label %64

; <label>:61:                                     ; preds = %57
  %.01.3.0.0.033.gep63 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %62 = bitcast i1* %.01.3.0.0.033.gep63 to i8*
  %.0.3.0.0.032.gep64 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0
  %63 = bitcast i1* %.0.3.0.0.032.gep64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %62, i8* align 1 %63, i64 1, i1 false)
  br label %64

; <label>:64:                                     ; preds = %61, %60, %56, %52
  %.0.434 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4
  %.01.435 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4
  %65 = bitcast %struct.ap_uint.3* %.0.434 to i8*
  %66 = call i1 @fpga_fifo_exist_1(i8* %65)
  br i1 %66, label %67, label %68

; <label>:67:                                     ; preds = %64
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.435, %struct.ap_uint.3* %.0.434)
  br label %79

; <label>:68:                                     ; preds = %64
  %.0.4.036 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0
  %.01.4.037 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0
  %69 = bitcast %struct.ap_int_base.4* %.0.4.036 to i8*
  %70 = call i1 @fpga_fifo_exist_1(i8* %69)
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.4.037, %struct.ap_int_base.4* %.0.4.036)
  br label %79

; <label>:72:                                     ; preds = %68
  %.0.4.0.038 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0
  %.01.4.0.039 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0
  %73 = bitcast %struct.ssdm_int.5* %.0.4.0.038 to i8*
  %74 = call i1 @fpga_fifo_exist_1(i8* %73)
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.4.0.039, %struct.ssdm_int.5* %.0.4.0.038)
  br label %79

; <label>:76:                                     ; preds = %72
  %.01.4.0.0.041.gep65 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %77 = bitcast i1* %.01.4.0.0.041.gep65 to i8*
  %.0.4.0.0.040.gep66 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 4, i32 0, i32 0, i32 0
  %78 = bitcast i1* %.0.4.0.0.040.gep66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %77, i8* align 1 %78, i64 1, i1 false)
  br label %79

; <label>:79:                                     ; preds = %76, %75, %71, %67
  %.0.542 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5
  %.01.543 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5
  %80 = bitcast %struct.ap_uint.3* %.0.542 to i8*
  %81 = call i1 @fpga_fifo_exist_1(i8* %80)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %79
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.543, %struct.ap_uint.3* %.0.542)
  br label %94

; <label>:83:                                     ; preds = %79
  %.0.5.044 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0
  %.01.5.045 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0
  %84 = bitcast %struct.ap_int_base.4* %.0.5.044 to i8*
  %85 = call i1 @fpga_fifo_exist_1(i8* %84)
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %83
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.5.045, %struct.ap_int_base.4* %.0.5.044)
  br label %94

; <label>:87:                                     ; preds = %83
  %.0.5.0.046 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0
  %.01.5.0.047 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0
  %88 = bitcast %struct.ssdm_int.5* %.0.5.0.046 to i8*
  %89 = call i1 @fpga_fifo_exist_1(i8* %88)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %87
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.5.0.047, %struct.ssdm_int.5* %.0.5.0.046)
  br label %94

; <label>:91:                                     ; preds = %87
  %.01.5.0.0.049.gep67 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %92 = bitcast i1* %.01.5.0.0.049.gep67 to i8*
  %.0.5.0.0.048.gep68 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0
  %93 = bitcast i1* %.0.5.0.0.048.gep68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %92, i8* align 1 %93, i64 1, i1 false)
  br label %94

; <label>:94:                                     ; preds = %91, %90, %86, %82
  %.0.650 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6
  %.01.651 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6
  %95 = bitcast %struct.ap_uint.3* %.0.650 to i8*
  %96 = call i1 @fpga_fifo_exist_1(i8* %95)
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  call fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* %.01.651, %struct.ap_uint.3* %.0.650)
  br label %ret

; <label>:98:                                     ; preds = %94
  %.0.6.052 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0
  %.01.6.053 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0
  %99 = bitcast %struct.ap_int_base.4* %.0.6.052 to i8*
  %100 = call i1 @fpga_fifo_exist_1(i8* %99)
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* %.01.6.053, %struct.ap_int_base.4* %.0.6.052)
  br label %ret

; <label>:102:                                    ; preds = %98
  %.0.6.0.054 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0
  %.01.6.0.055 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0
  %103 = bitcast %struct.ssdm_int.5* %.0.6.0.054 to i8*
  %104 = call i1 @fpga_fifo_exist_1(i8* %103)
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %102
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* %.01.6.0.055, %struct.ssdm_int.5* %.0.6.0.054)
  br label %ret

; <label>:106:                                    ; preds = %102
  %.01.6.0.0.057.gep69 = getelementptr %"class.hls::stream", %"class.hls::stream"* %0, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %107 = bitcast i1* %.01.6.0.0.057.gep69 to i8*
  %.0.6.0.0.056.gep70 = getelementptr %"class.hls::stream", %"class.hls::stream"* %1, i32 0, i32 0, i32 6, i32 0, i32 0, i32 0
  %108 = bitcast i1* %.0.6.0.0.056.gep70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %107, i8* align 1 %108, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %106, %105, %101, %97, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_32(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream"(%"class.hls::stream"* noalias nocapture align 512, %"class.hls::stream"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_32(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream"* %2 to i8*
  %6 = bitcast %"class.hls::stream"* %1 to i8*
  call void @fpga_fifo_pop_32(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream", %"class.hls::stream"* %2
  %8 = bitcast %"class.hls::stream"* %2 to i8*
  %9 = bitcast %"class.hls::stream"* %0 to i8*
  call void @fpga_fifo_push_32(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream"* %1 to i8*
  %11 = bitcast %"class.hls::stream"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 32, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_16(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture align 512, %struct.ap_uint* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture align 512, %struct.ap_int_base* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture align 512, %struct.ssdm_int* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_16(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_16(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_16(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 16, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture, %struct.ap_uint.0* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.1(%struct.ap_int_base.1* noalias nocapture, %struct.ap_int_base.1* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_int_base.1
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.1* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.1* %2 to i8*
  %6 = bitcast %struct.ap_int_base.1* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.1, %struct.ap_int_base.1* %2
  %8 = bitcast %struct.ap_int_base.1* %2 to i8*
  %9 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.1* %1 to i8*
  %11 = bitcast %struct.ap_int_base.1* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.2(%struct.ssdm_int.2* noalias nocapture, %struct.ssdm_int.2* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ssdm_int.2
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.2* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.2* %2 to i8*
  %6 = bitcast %struct.ssdm_int.2* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.2, %struct.ssdm_int.2* %2
  %8 = bitcast %struct.ssdm_int.2* %2 to i8*
  %9 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !12

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.2* %1 to i8*
  %11 = bitcast %struct.ssdm_int.2* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.3(%struct.ap_uint.3* noalias nocapture, %struct.ap_uint.3* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_uint.3
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.3* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.3* %2 to i8*
  %6 = bitcast %struct.ap_uint.3* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.3, %struct.ap_uint.3* %2
  %8 = bitcast %struct.ap_uint.3* %2 to i8*
  %9 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !13

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.3* %1 to i8*
  %11 = bitcast %struct.ap_uint.3* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.4(%struct.ap_int_base.4* noalias nocapture, %struct.ap_int_base.4* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_int_base.4
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.4* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.4* %2 to i8*
  %6 = bitcast %struct.ap_int_base.4* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.4, %struct.ap_int_base.4* %2
  %8 = bitcast %struct.ap_int_base.4* %2 to i8*
  %9 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !14

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.4* %1 to i8*
  %11 = bitcast %struct.ap_int_base.4* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.5(%struct.ssdm_int.5* noalias nocapture, %struct.ssdm_int.5* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ssdm_int.5
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.5* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.5* %2 to i8*
  %6 = bitcast %struct.ssdm_int.5* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.5, %struct.ssdm_int.5* %2
  %8 = bitcast %struct.ssdm_int.5* %2 to i8*
  %9 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !15

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.5* %1 to i8*
  %11 = bitcast %struct.ssdm_int.5* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* noalias align 512, %"class.hls::stream.9"* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq %"class.hls::stream.9"* %0, null
  %3 = icmp eq %"class.hls::stream.9"* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast %"class.hls::stream.9"* %1 to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %copy
  call fastcc void @"streamcpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* nonnull align 512 %0, %"class.hls::stream.9"* nonnull %1)
  br label %ret

; <label>:8:                                      ; preds = %copy
  %9 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %5, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %8, %7, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @"streamcpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* noalias nocapture align 512, %"class.hls::stream.9"* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %"class.hls::stream.9"
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %"class.hls::stream.9"* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %"class.hls::stream.9"* %2 to i8*
  %6 = bitcast %"class.hls::stream.9"* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %"class.hls::stream.9", %"class.hls::stream.9"* %2
  %8 = bitcast %"class.hls::stream.9"* %2 to i8*
  %9 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !16

ret:                                              ; preds = %empty
  %10 = bitcast %"class.hls::stream.9"* %1 to i8*
  %11 = bitcast %"class.hls::stream.9"* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512, i16* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i16* %0 to i8*
  %6 = bitcast i16* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %0 to i8*
  %6 = bitcast i1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare i1 @fpga_fifo_exist_8(i8*) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* noalias nocapture "orig.arg.no"="0", %struct.ap_uint.6* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ap_uint.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.6* %2 to i8*
  %6 = bitcast %struct.ap_uint.6* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.6, %struct.ap_uint.6* %2
  %8 = bitcast %struct.ap_uint.6* %2 to i8*
  %9 = bitcast %struct.ap_uint.6* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.6* %1 to i8*
  %11 = bitcast %struct.ap_uint.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base.7* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ap_int_base.7
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.7* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.7* %2 to i8*
  %6 = bitcast %struct.ap_int_base.7* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.7, %struct.ap_int_base.7* %2
  %8 = bitcast %struct.ap_int_base.7* %2 to i8*
  %9 = bitcast %struct.ap_int_base.7* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.7* %1 to i8*
  %11 = bitcast %struct.ap_int_base.7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int.8* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ssdm_int.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.8* %2 to i8*
  %6 = bitcast %struct.ssdm_int.8* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.8, %struct.ssdm_int.8* %2
  %8 = bitcast %struct.ssdm_int.8* %2 to i8*
  %9 = bitcast %struct.ssdm_int.8* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.8* %1 to i8*
  %11 = bitcast %struct.ssdm_int.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a64a4096struct.ap_uint.6.29.36([4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_7, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_8, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_9, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_10, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_11, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_12, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_13, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_14, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_15, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_16, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_17, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_18, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_19, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_20, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_21, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_22, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_23, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_24, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_25, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_26, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_27, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_28, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_29, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_30, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_31, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_32, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_33, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_34, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_35, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_36, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_37, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_38, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_39, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_40, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_41, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_42, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_43, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_44, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_45, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_46, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_47, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_48, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_49, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_50, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_51, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_52, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_53, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_54, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_55, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_56, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_57, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_58, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_59, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_60, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_61, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_62, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_63, [64 x [4096 x %struct.ap_uint.6]]* noalias "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [4096 x %struct.ap_uint.6]* %_0, null
  %2 = icmp eq [64 x [4096 x %struct.ap_uint.6]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %dst.addr57_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317
  %dst.addr57_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317
  %dst.addr57_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317
  %dst.addr57_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317
  %dst.addr57_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317
  %dst.addr57_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317
  %dst.addr57_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317
  %dst.addr57_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317
  %dst.addr57_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317
  %dst.addr57_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317
  %dst.addr57_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317
  %dst.addr57_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317
  %dst.addr57_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317
  %dst.addr57_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317
  %dst.addr57_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317
  %dst.addr57_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317
  %dst.addr57_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317
  %dst.addr57_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317
  %dst.addr57_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317
  %dst.addr57_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317
  %dst.addr57_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317
  %dst.addr57_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317
  %dst.addr57_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317
  %dst.addr57_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317
  %dst.addr57_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317
  %dst.addr57_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317
  %dst.addr57_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317
  %dst.addr57_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317
  %dst.addr57_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317
  %dst.addr57_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317
  %dst.addr57_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317
  %dst.addr57_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317
  %dst.addr57_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317
  %dst.addr57_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317
  %dst.addr57_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317
  %dst.addr57_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317
  %dst.addr57_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317
  %dst.addr57_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317
  %dst.addr57_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317
  %dst.addr57_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317
  %dst.addr57_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317
  %dst.addr57_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317
  %dst.addr57_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317
  %dst.addr57_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317
  %dst.addr57_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317
  %dst.addr57_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317
  %dst.addr57_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317
  %dst.addr57_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317
  %dst.addr57_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317
  %dst.addr57_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317
  %dst.addr57_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317
  %dst.addr57_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317
  %dst.addr57_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317
  %dst.addr57_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317
  %dst.addr57_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317
  %dst.addr57_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317
  %dst.addr57_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317
  %dst.addr57_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317
  %dst.addr57_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317
  %dst.addr57_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317
  %dst.addr57_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317
  %dst.addr57_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317
  %dst.addr57_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317
  %dst.addr57_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317
  %src.addr68 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %4 = bitcast %struct.ap_uint.6* %src.addr68 to i8*
  %5 = call i1 @fpga_fifo_exist_8(i8* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %for.loop2
  switch i64 %for.loop.idx18, label %dst.addr57.default [
    i64 0, label %dst.addr57.case.0
    i64 1, label %dst.addr57.case.1
    i64 2, label %dst.addr57.case.2
    i64 3, label %dst.addr57.case.3
    i64 4, label %dst.addr57.case.4
    i64 5, label %dst.addr57.case.5
    i64 6, label %dst.addr57.case.6
    i64 7, label %dst.addr57.case.7
    i64 8, label %dst.addr57.case.8
    i64 9, label %dst.addr57.case.9
    i64 10, label %dst.addr57.case.10
    i64 11, label %dst.addr57.case.11
    i64 12, label %dst.addr57.case.12
    i64 13, label %dst.addr57.case.13
    i64 14, label %dst.addr57.case.14
    i64 15, label %dst.addr57.case.15
    i64 16, label %dst.addr57.case.16
    i64 17, label %dst.addr57.case.17
    i64 18, label %dst.addr57.case.18
    i64 19, label %dst.addr57.case.19
    i64 20, label %dst.addr57.case.20
    i64 21, label %dst.addr57.case.21
    i64 22, label %dst.addr57.case.22
    i64 23, label %dst.addr57.case.23
    i64 24, label %dst.addr57.case.24
    i64 25, label %dst.addr57.case.25
    i64 26, label %dst.addr57.case.26
    i64 27, label %dst.addr57.case.27
    i64 28, label %dst.addr57.case.28
    i64 29, label %dst.addr57.case.29
    i64 30, label %dst.addr57.case.30
    i64 31, label %dst.addr57.case.31
    i64 32, label %dst.addr57.case.32
    i64 33, label %dst.addr57.case.33
    i64 34, label %dst.addr57.case.34
    i64 35, label %dst.addr57.case.35
    i64 36, label %dst.addr57.case.36
    i64 37, label %dst.addr57.case.37
    i64 38, label %dst.addr57.case.38
    i64 39, label %dst.addr57.case.39
    i64 40, label %dst.addr57.case.40
    i64 41, label %dst.addr57.case.41
    i64 42, label %dst.addr57.case.42
    i64 43, label %dst.addr57.case.43
    i64 44, label %dst.addr57.case.44
    i64 45, label %dst.addr57.case.45
    i64 46, label %dst.addr57.case.46
    i64 47, label %dst.addr57.case.47
    i64 48, label %dst.addr57.case.48
    i64 49, label %dst.addr57.case.49
    i64 50, label %dst.addr57.case.50
    i64 51, label %dst.addr57.case.51
    i64 52, label %dst.addr57.case.52
    i64 53, label %dst.addr57.case.53
    i64 54, label %dst.addr57.case.54
    i64 55, label %dst.addr57.case.55
    i64 56, label %dst.addr57.case.56
    i64 57, label %dst.addr57.case.57
    i64 58, label %dst.addr57.case.58
    i64 59, label %dst.addr57.case.59
    i64 60, label %dst.addr57.case.60
    i64 61, label %dst.addr57.case.61
    i64 62, label %dst.addr57.case.62
    i64 63, label %dst.addr57.case.63
  ]

dst.addr57.default:                               ; preds = %6
  unreachable

dst.addr57.case.0:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_0, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.1:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_1, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.2:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_2, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.3:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_3, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.4:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_4, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.5:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_5, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.6:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_6, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.7:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_7, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.8:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_8, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.9:                                ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_9, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.10:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_10, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.11:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_11, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.12:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_12, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.13:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_13, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.14:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_14, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.15:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_15, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.16:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_16, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.17:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_17, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.18:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_18, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.19:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_19, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.20:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_20, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.21:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_21, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.22:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_22, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.23:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_23, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.24:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_24, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.25:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_25, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.26:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_26, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.27:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_27, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.28:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_28, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.29:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_29, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.30:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_30, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.31:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_31, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.32:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_32, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.33:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_33, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.34:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_34, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.35:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_35, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.36:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_36, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.37:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_37, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.38:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_38, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.39:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_39, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.40:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_40, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.41:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_41, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.42:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_42, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.43:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_43, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.44:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_44, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.45:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_45, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.46:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_46, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.47:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_47, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.48:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_48, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.49:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_49, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.50:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_50, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.51:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_51, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.52:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_52, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.53:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_53, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.54:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_54, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.55:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_55, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.56:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_56, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.57:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_57, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.58:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_58, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.59:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_59, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.60:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_60, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.61:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_61, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.62:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_62, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

dst.addr57.case.63:                               ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.6.30.31(%struct.ap_uint.6* %dst.addr57_63, %struct.ap_uint.6* %src.addr68)
  br label %for.loop.head1

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.09 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0
  %8 = bitcast %struct.ap_int_base.7* %src.addr6.09 to i8*
  %9 = call i1 @fpga_fifo_exist_8(i8* %8)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7
  switch i64 %for.loop.idx18, label %dst.addr5.010.default [
    i64 0, label %dst.addr5.010.case.0
    i64 1, label %dst.addr5.010.case.1
    i64 2, label %dst.addr5.010.case.2
    i64 3, label %dst.addr5.010.case.3
    i64 4, label %dst.addr5.010.case.4
    i64 5, label %dst.addr5.010.case.5
    i64 6, label %dst.addr5.010.case.6
    i64 7, label %dst.addr5.010.case.7
    i64 8, label %dst.addr5.010.case.8
    i64 9, label %dst.addr5.010.case.9
    i64 10, label %dst.addr5.010.case.10
    i64 11, label %dst.addr5.010.case.11
    i64 12, label %dst.addr5.010.case.12
    i64 13, label %dst.addr5.010.case.13
    i64 14, label %dst.addr5.010.case.14
    i64 15, label %dst.addr5.010.case.15
    i64 16, label %dst.addr5.010.case.16
    i64 17, label %dst.addr5.010.case.17
    i64 18, label %dst.addr5.010.case.18
    i64 19, label %dst.addr5.010.case.19
    i64 20, label %dst.addr5.010.case.20
    i64 21, label %dst.addr5.010.case.21
    i64 22, label %dst.addr5.010.case.22
    i64 23, label %dst.addr5.010.case.23
    i64 24, label %dst.addr5.010.case.24
    i64 25, label %dst.addr5.010.case.25
    i64 26, label %dst.addr5.010.case.26
    i64 27, label %dst.addr5.010.case.27
    i64 28, label %dst.addr5.010.case.28
    i64 29, label %dst.addr5.010.case.29
    i64 30, label %dst.addr5.010.case.30
    i64 31, label %dst.addr5.010.case.31
    i64 32, label %dst.addr5.010.case.32
    i64 33, label %dst.addr5.010.case.33
    i64 34, label %dst.addr5.010.case.34
    i64 35, label %dst.addr5.010.case.35
    i64 36, label %dst.addr5.010.case.36
    i64 37, label %dst.addr5.010.case.37
    i64 38, label %dst.addr5.010.case.38
    i64 39, label %dst.addr5.010.case.39
    i64 40, label %dst.addr5.010.case.40
    i64 41, label %dst.addr5.010.case.41
    i64 42, label %dst.addr5.010.case.42
    i64 43, label %dst.addr5.010.case.43
    i64 44, label %dst.addr5.010.case.44
    i64 45, label %dst.addr5.010.case.45
    i64 46, label %dst.addr5.010.case.46
    i64 47, label %dst.addr5.010.case.47
    i64 48, label %dst.addr5.010.case.48
    i64 49, label %dst.addr5.010.case.49
    i64 50, label %dst.addr5.010.case.50
    i64 51, label %dst.addr5.010.case.51
    i64 52, label %dst.addr5.010.case.52
    i64 53, label %dst.addr5.010.case.53
    i64 54, label %dst.addr5.010.case.54
    i64 55, label %dst.addr5.010.case.55
    i64 56, label %dst.addr5.010.case.56
    i64 57, label %dst.addr5.010.case.57
    i64 58, label %dst.addr5.010.case.58
    i64 59, label %dst.addr5.010.case.59
    i64 60, label %dst.addr5.010.case.60
    i64 61, label %dst.addr5.010.case.61
    i64 62, label %dst.addr5.010.case.62
    i64 63, label %dst.addr5.010.case.63
  ]

dst.addr5.010.default:                            ; preds = %10
  unreachable

dst.addr5.010.case.0:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_0, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.1:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_1, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.2:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_2, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.3:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_3, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.4:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_4, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.5:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_5, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.6:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_6, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.7:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_7, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.8:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_8, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.9:                             ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_9, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.10:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_10, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.11:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_11, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.12:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_12, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.13:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_13, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.14:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_14, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.15:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_15, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.16:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_16, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.17:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_17, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.18:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_18, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.19:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_19, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.20:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_20, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.21:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_21, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.22:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_22, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.23:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_23, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.24:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_24, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.25:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_25, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.26:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_26, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.27:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_27, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.28:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_28, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.29:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_29, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.30:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_30, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.31:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_31, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.32:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_32, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.33:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_33, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.34:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_34, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.35:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_35, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.36:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_36, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.37:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_37, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.38:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_38, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.39:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_39, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.40:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_40, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.41:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_41, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.42:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_42, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.43:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_43, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.44:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_44, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.45:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_45, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.46:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_46, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.47:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_47, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.48:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_48, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.49:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_49, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.50:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_50, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.51:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_51, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.52:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_52, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.53:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_53, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.54:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_54, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.55:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_55, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.56:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_56, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.57:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_57, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.58:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_58, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.59:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_59, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.60:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_60, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.61:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_61, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.62:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_62, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

dst.addr5.010.case.63:                            ; preds = %10
  call void @streamcpy_hls.p0struct.ap_int_base.7.32.33(%struct.ap_int_base.7* %dst.addr5.010_63, %struct.ap_int_base.7* %src.addr6.09)
  br label %for.loop.head1

; <label>:11:                                     ; preds = %7
  %src.addr6.0.011 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %12 = bitcast %struct.ssdm_int.8* %src.addr6.0.011 to i8*
  %13 = call i1 @fpga_fifo_exist_8(i8* %12)
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  switch i64 %for.loop.idx18, label %dst.addr5.0.012.default [
    i64 0, label %dst.addr5.0.012.case.0
    i64 1, label %dst.addr5.0.012.case.1
    i64 2, label %dst.addr5.0.012.case.2
    i64 3, label %dst.addr5.0.012.case.3
    i64 4, label %dst.addr5.0.012.case.4
    i64 5, label %dst.addr5.0.012.case.5
    i64 6, label %dst.addr5.0.012.case.6
    i64 7, label %dst.addr5.0.012.case.7
    i64 8, label %dst.addr5.0.012.case.8
    i64 9, label %dst.addr5.0.012.case.9
    i64 10, label %dst.addr5.0.012.case.10
    i64 11, label %dst.addr5.0.012.case.11
    i64 12, label %dst.addr5.0.012.case.12
    i64 13, label %dst.addr5.0.012.case.13
    i64 14, label %dst.addr5.0.012.case.14
    i64 15, label %dst.addr5.0.012.case.15
    i64 16, label %dst.addr5.0.012.case.16
    i64 17, label %dst.addr5.0.012.case.17
    i64 18, label %dst.addr5.0.012.case.18
    i64 19, label %dst.addr5.0.012.case.19
    i64 20, label %dst.addr5.0.012.case.20
    i64 21, label %dst.addr5.0.012.case.21
    i64 22, label %dst.addr5.0.012.case.22
    i64 23, label %dst.addr5.0.012.case.23
    i64 24, label %dst.addr5.0.012.case.24
    i64 25, label %dst.addr5.0.012.case.25
    i64 26, label %dst.addr5.0.012.case.26
    i64 27, label %dst.addr5.0.012.case.27
    i64 28, label %dst.addr5.0.012.case.28
    i64 29, label %dst.addr5.0.012.case.29
    i64 30, label %dst.addr5.0.012.case.30
    i64 31, label %dst.addr5.0.012.case.31
    i64 32, label %dst.addr5.0.012.case.32
    i64 33, label %dst.addr5.0.012.case.33
    i64 34, label %dst.addr5.0.012.case.34
    i64 35, label %dst.addr5.0.012.case.35
    i64 36, label %dst.addr5.0.012.case.36
    i64 37, label %dst.addr5.0.012.case.37
    i64 38, label %dst.addr5.0.012.case.38
    i64 39, label %dst.addr5.0.012.case.39
    i64 40, label %dst.addr5.0.012.case.40
    i64 41, label %dst.addr5.0.012.case.41
    i64 42, label %dst.addr5.0.012.case.42
    i64 43, label %dst.addr5.0.012.case.43
    i64 44, label %dst.addr5.0.012.case.44
    i64 45, label %dst.addr5.0.012.case.45
    i64 46, label %dst.addr5.0.012.case.46
    i64 47, label %dst.addr5.0.012.case.47
    i64 48, label %dst.addr5.0.012.case.48
    i64 49, label %dst.addr5.0.012.case.49
    i64 50, label %dst.addr5.0.012.case.50
    i64 51, label %dst.addr5.0.012.case.51
    i64 52, label %dst.addr5.0.012.case.52
    i64 53, label %dst.addr5.0.012.case.53
    i64 54, label %dst.addr5.0.012.case.54
    i64 55, label %dst.addr5.0.012.case.55
    i64 56, label %dst.addr5.0.012.case.56
    i64 57, label %dst.addr5.0.012.case.57
    i64 58, label %dst.addr5.0.012.case.58
    i64 59, label %dst.addr5.0.012.case.59
    i64 60, label %dst.addr5.0.012.case.60
    i64 61, label %dst.addr5.0.012.case.61
    i64 62, label %dst.addr5.0.012.case.62
    i64 63, label %dst.addr5.0.012.case.63
  ]

dst.addr5.0.012.default:                          ; preds = %14
  unreachable

dst.addr5.0.012.case.0:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_0, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.1:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_1, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.2:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_2, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.3:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_3, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.4:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_4, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.5:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_5, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.6:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_6, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.7:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_7, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.8:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_8, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.9:                           ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_9, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.10:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_10, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.11:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_11, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.12:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_12, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.13:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_13, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.14:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_14, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.15:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_15, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.16:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_16, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.17:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_17, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.18:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_18, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.19:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_19, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.20:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_20, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.21:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_21, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.22:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_22, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.23:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_23, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.24:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_24, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.25:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_25, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.26:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_26, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.27:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_27, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.28:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_28, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.29:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_29, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.30:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_30, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.31:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_31, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.32:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_32, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.33:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_33, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.34:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_34, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.35:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_35, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.36:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_36, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.37:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_37, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.38:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_38, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.39:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_39, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.40:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_40, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.41:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_41, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.42:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_42, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.43:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_43, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.44:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_44, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.45:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_45, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.46:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_46, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.47:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_47, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.48:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_48, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.49:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_49, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.50:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_50, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.51:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_51, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.52:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_52, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.53:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_53, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.54:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_54, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.55:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_55, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.56:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_56, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.57:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_57, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.58:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_58, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.59:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_59, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.60:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_60, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.61:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_61, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.62:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_62, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

dst.addr5.0.012.case.63:                          ; preds = %14
  call void @streamcpy_hls.p0struct.ssdm_int.8.34.35(%struct.ssdm_int.8* %dst.addr5.0.012_63, %struct.ssdm_int.8* %src.addr6.0.011)
  br label %for.loop.head1

; <label>:15:                                     ; preds = %11
  %dst.addr5.0.0.014.gep15_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_01 = bitcast i64* %dst.addr5.0.0.014.gep15_0 to i8*
  %_110 = bitcast i64* %dst.addr5.0.0.014.gep15_1 to i8*
  %_211 = bitcast i64* %dst.addr5.0.0.014.gep15_2 to i8*
  %_312 = bitcast i64* %dst.addr5.0.0.014.gep15_3 to i8*
  %_413 = bitcast i64* %dst.addr5.0.0.014.gep15_4 to i8*
  %_514 = bitcast i64* %dst.addr5.0.0.014.gep15_5 to i8*
  %_615 = bitcast i64* %dst.addr5.0.0.014.gep15_6 to i8*
  %_716 = bitcast i64* %dst.addr5.0.0.014.gep15_7 to i8*
  %_817 = bitcast i64* %dst.addr5.0.0.014.gep15_8 to i8*
  %_918 = bitcast i64* %dst.addr5.0.0.014.gep15_9 to i8*
  %_1019 = bitcast i64* %dst.addr5.0.0.014.gep15_10 to i8*
  %_1120 = bitcast i64* %dst.addr5.0.0.014.gep15_11 to i8*
  %_1221 = bitcast i64* %dst.addr5.0.0.014.gep15_12 to i8*
  %_1322 = bitcast i64* %dst.addr5.0.0.014.gep15_13 to i8*
  %_1423 = bitcast i64* %dst.addr5.0.0.014.gep15_14 to i8*
  %_1524 = bitcast i64* %dst.addr5.0.0.014.gep15_15 to i8*
  %_1625 = bitcast i64* %dst.addr5.0.0.014.gep15_16 to i8*
  %_1726 = bitcast i64* %dst.addr5.0.0.014.gep15_17 to i8*
  %_1827 = bitcast i64* %dst.addr5.0.0.014.gep15_18 to i8*
  %_1928 = bitcast i64* %dst.addr5.0.0.014.gep15_19 to i8*
  %_2029 = bitcast i64* %dst.addr5.0.0.014.gep15_20 to i8*
  %_2130 = bitcast i64* %dst.addr5.0.0.014.gep15_21 to i8*
  %_2231 = bitcast i64* %dst.addr5.0.0.014.gep15_22 to i8*
  %_2332 = bitcast i64* %dst.addr5.0.0.014.gep15_23 to i8*
  %_2433 = bitcast i64* %dst.addr5.0.0.014.gep15_24 to i8*
  %_2534 = bitcast i64* %dst.addr5.0.0.014.gep15_25 to i8*
  %_2635 = bitcast i64* %dst.addr5.0.0.014.gep15_26 to i8*
  %_2736 = bitcast i64* %dst.addr5.0.0.014.gep15_27 to i8*
  %_2837 = bitcast i64* %dst.addr5.0.0.014.gep15_28 to i8*
  %_2938 = bitcast i64* %dst.addr5.0.0.014.gep15_29 to i8*
  %_3039 = bitcast i64* %dst.addr5.0.0.014.gep15_30 to i8*
  %_3140 = bitcast i64* %dst.addr5.0.0.014.gep15_31 to i8*
  %_3241 = bitcast i64* %dst.addr5.0.0.014.gep15_32 to i8*
  %_3342 = bitcast i64* %dst.addr5.0.0.014.gep15_33 to i8*
  %_3443 = bitcast i64* %dst.addr5.0.0.014.gep15_34 to i8*
  %_3544 = bitcast i64* %dst.addr5.0.0.014.gep15_35 to i8*
  %_3645 = bitcast i64* %dst.addr5.0.0.014.gep15_36 to i8*
  %_3746 = bitcast i64* %dst.addr5.0.0.014.gep15_37 to i8*
  %_3847 = bitcast i64* %dst.addr5.0.0.014.gep15_38 to i8*
  %_3948 = bitcast i64* %dst.addr5.0.0.014.gep15_39 to i8*
  %_4049 = bitcast i64* %dst.addr5.0.0.014.gep15_40 to i8*
  %_4150 = bitcast i64* %dst.addr5.0.0.014.gep15_41 to i8*
  %_4251 = bitcast i64* %dst.addr5.0.0.014.gep15_42 to i8*
  %_4352 = bitcast i64* %dst.addr5.0.0.014.gep15_43 to i8*
  %_4453 = bitcast i64* %dst.addr5.0.0.014.gep15_44 to i8*
  %_4554 = bitcast i64* %dst.addr5.0.0.014.gep15_45 to i8*
  %_4655 = bitcast i64* %dst.addr5.0.0.014.gep15_46 to i8*
  %_4756 = bitcast i64* %dst.addr5.0.0.014.gep15_47 to i8*
  %_4857 = bitcast i64* %dst.addr5.0.0.014.gep15_48 to i8*
  %_4958 = bitcast i64* %dst.addr5.0.0.014.gep15_49 to i8*
  %_5059 = bitcast i64* %dst.addr5.0.0.014.gep15_50 to i8*
  %_5160 = bitcast i64* %dst.addr5.0.0.014.gep15_51 to i8*
  %_5261 = bitcast i64* %dst.addr5.0.0.014.gep15_52 to i8*
  %_5362 = bitcast i64* %dst.addr5.0.0.014.gep15_53 to i8*
  %_5463 = bitcast i64* %dst.addr5.0.0.014.gep15_54 to i8*
  %_5564 = bitcast i64* %dst.addr5.0.0.014.gep15_55 to i8*
  %_5665 = bitcast i64* %dst.addr5.0.0.014.gep15_56 to i8*
  %_5766 = bitcast i64* %dst.addr5.0.0.014.gep15_57 to i8*
  %_5867 = bitcast i64* %dst.addr5.0.0.014.gep15_58 to i8*
  %_5968 = bitcast i64* %dst.addr5.0.0.014.gep15_59 to i8*
  %_6069 = bitcast i64* %dst.addr5.0.0.014.gep15_60 to i8*
  %_6170 = bitcast i64* %dst.addr5.0.0.014.gep15_61 to i8*
  %_6271 = bitcast i64* %dst.addr5.0.0.014.gep15_62 to i8*
  %_6372 = bitcast i64* %dst.addr5.0.0.014.gep15_63 to i8*
  %src.addr6.0.0.013.gep16 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %16 = bitcast i64* %src.addr6.0.0.013.gep16 to i8*
  switch i64 %for.loop.idx18, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.case.31
    i64 32, label %.case.32
    i64 33, label %.case.33
    i64 34, label %.case.34
    i64 35, label %.case.35
    i64 36, label %.case.36
    i64 37, label %.case.37
    i64 38, label %.case.38
    i64 39, label %.case.39
    i64 40, label %.case.40
    i64 41, label %.case.41
    i64 42, label %.case.42
    i64 43, label %.case.43
    i64 44, label %.case.44
    i64 45, label %.case.45
    i64 46, label %.case.46
    i64 47, label %.case.47
    i64 48, label %.case.48
    i64 49, label %.case.49
    i64 50, label %.case.50
    i64 51, label %.case.51
    i64 52, label %.case.52
    i64 53, label %.case.53
    i64 54, label %.case.54
    i64 55, label %.case.55
    i64 56, label %.case.56
    i64 57, label %.case.57
    i64 58, label %.case.58
    i64 59, label %.case.59
    i64 60, label %.case.60
    i64 61, label %.case.61
    i64 62, label %.case.62
    i64 63, label %.case.63
  ]

.default:                                         ; preds = %15
  unreachable

.case.0:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.1:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_110, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.2:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_211, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.3:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_312, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.4:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_413, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.5:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_514, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.6:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_615, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.7:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_716, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.8:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_817, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.9:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_918, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.10:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1019, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.11:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1120, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.12:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1221, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.13:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1322, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.14:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1423, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.15:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1524, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.16:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1625, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.17:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1726, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.18:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1827, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.19:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_1928, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.20:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2029, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.21:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2130, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.22:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2231, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.23:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2332, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.24:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2433, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.25:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2534, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.26:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2635, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.27:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2736, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.28:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2837, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.29:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_2938, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.30:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3039, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.31:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3140, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.32:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3241, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.33:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3342, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.34:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3443, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.35:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3544, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.36:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3645, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.37:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3746, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.38:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3847, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.39:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_3948, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.40:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4049, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.41:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4150, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.42:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4251, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.43:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4352, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.44:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4453, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.45:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4554, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.46:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4655, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.47:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4756, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.48:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4857, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.49:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_4958, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.50:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5059, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.51:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5160, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.52:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5261, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.53:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5362, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.54:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5463, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.55:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5564, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.56:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5665, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.57:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5766, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.58:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5867, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.59:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_5968, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.60:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6069, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.61:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6170, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.62:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6271, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.63:                                         ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_6372, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.63, %.case.62, %.case.61, %.case.60, %.case.59, %.case.58, %.case.57, %.case.56, %.case.55, %.case.54, %.case.53, %.case.52, %.case.51, %.case.50, %.case.49, %.case.48, %.case.47, %.case.46, %.case.45, %.case.44, %.case.43, %.case.42, %.case.41, %.case.40, %.case.39, %.case.38, %.case.37, %.case.36, %.case.35, %.case.34, %.case.33, %.case.32, %.case.31, %.case.30, %.case.29, %.case.28, %.case.27, %.case.26, %.case.25, %.case.24, %.case.23, %.case.22, %.case.21, %.case.20, %.case.19, %.case.18, %.case.17, %.case.16, %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0, %dst.addr5.0.012.case.63, %dst.addr5.0.012.case.62, %dst.addr5.0.012.case.61, %dst.addr5.0.012.case.60, %dst.addr5.0.012.case.59, %dst.addr5.0.012.case.58, %dst.addr5.0.012.case.57, %dst.addr5.0.012.case.56, %dst.addr5.0.012.case.55, %dst.addr5.0.012.case.54, %dst.addr5.0.012.case.53, %dst.addr5.0.012.case.52, %dst.addr5.0.012.case.51, %dst.addr5.0.012.case.50, %dst.addr5.0.012.case.49, %dst.addr5.0.012.case.48, %dst.addr5.0.012.case.47, %dst.addr5.0.012.case.46, %dst.addr5.0.012.case.45, %dst.addr5.0.012.case.44, %dst.addr5.0.012.case.43, %dst.addr5.0.012.case.42, %dst.addr5.0.012.case.41, %dst.addr5.0.012.case.40, %dst.addr5.0.012.case.39, %dst.addr5.0.012.case.38, %dst.addr5.0.012.case.37, %dst.addr5.0.012.case.36, %dst.addr5.0.012.case.35, %dst.addr5.0.012.case.34, %dst.addr5.0.012.case.33, %dst.addr5.0.012.case.32, %dst.addr5.0.012.case.31, %dst.addr5.0.012.case.30, %dst.addr5.0.012.case.29, %dst.addr5.0.012.case.28, %dst.addr5.0.012.case.27, %dst.addr5.0.012.case.26, %dst.addr5.0.012.case.25, %dst.addr5.0.012.case.24, %dst.addr5.0.012.case.23, %dst.addr5.0.012.case.22, %dst.addr5.0.012.case.21, %dst.addr5.0.012.case.20, %dst.addr5.0.012.case.19, %dst.addr5.0.012.case.18, %dst.addr5.0.012.case.17, %dst.addr5.0.012.case.16, %dst.addr5.0.012.case.15, %dst.addr5.0.012.case.14, %dst.addr5.0.012.case.13, %dst.addr5.0.012.case.12, %dst.addr5.0.012.case.11, %dst.addr5.0.012.case.10, %dst.addr5.0.012.case.9, %dst.addr5.0.012.case.8, %dst.addr5.0.012.case.7, %dst.addr5.0.012.case.6, %dst.addr5.0.012.case.5, %dst.addr5.0.012.case.4, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.63, %dst.addr5.010.case.62, %dst.addr5.010.case.61, %dst.addr5.010.case.60, %dst.addr5.010.case.59, %dst.addr5.010.case.58, %dst.addr5.010.case.57, %dst.addr5.010.case.56, %dst.addr5.010.case.55, %dst.addr5.010.case.54, %dst.addr5.010.case.53, %dst.addr5.010.case.52, %dst.addr5.010.case.51, %dst.addr5.010.case.50, %dst.addr5.010.case.49, %dst.addr5.010.case.48, %dst.addr5.010.case.47, %dst.addr5.010.case.46, %dst.addr5.010.case.45, %dst.addr5.010.case.44, %dst.addr5.010.case.43, %dst.addr5.010.case.42, %dst.addr5.010.case.41, %dst.addr5.010.case.40, %dst.addr5.010.case.39, %dst.addr5.010.case.38, %dst.addr5.010.case.37, %dst.addr5.010.case.36, %dst.addr5.010.case.35, %dst.addr5.010.case.34, %dst.addr5.010.case.33, %dst.addr5.010.case.32, %dst.addr5.010.case.31, %dst.addr5.010.case.30, %dst.addr5.010.case.29, %dst.addr5.010.case.28, %dst.addr5.010.case.27, %dst.addr5.010.case.26, %dst.addr5.010.case.25, %dst.addr5.010.case.24, %dst.addr5.010.case.23, %dst.addr5.010.case.22, %dst.addr5.010.case.21, %dst.addr5.010.case.20, %dst.addr5.010.case.19, %dst.addr5.010.case.18, %dst.addr5.010.case.17, %dst.addr5.010.case.16, %dst.addr5.010.case.15, %dst.addr5.010.case.14, %dst.addr5.010.case.13, %dst.addr5.010.case.12, %dst.addr5.010.case.11, %dst.addr5.010.case.10, %dst.addr5.010.case.9, %dst.addr5.010.case.8, %dst.addr5.010.case.7, %dst.addr5.010.case.6, %dst.addr5.010.case.5, %dst.addr5.010.case.4, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0, %dst.addr57.case.63, %dst.addr57.case.62, %dst.addr57.case.61, %dst.addr57.case.60, %dst.addr57.case.59, %dst.addr57.case.58, %dst.addr57.case.57, %dst.addr57.case.56, %dst.addr57.case.55, %dst.addr57.case.54, %dst.addr57.case.53, %dst.addr57.case.52, %dst.addr57.case.51, %dst.addr57.case.50, %dst.addr57.case.49, %dst.addr57.case.48, %dst.addr57.case.47, %dst.addr57.case.46, %dst.addr57.case.45, %dst.addr57.case.44, %dst.addr57.case.43, %dst.addr57.case.42, %dst.addr57.case.41, %dst.addr57.case.40, %dst.addr57.case.39, %dst.addr57.case.38, %dst.addr57.case.37, %dst.addr57.case.36, %dst.addr57.case.35, %dst.addr57.case.34, %dst.addr57.case.33, %dst.addr57.case.32, %dst.addr57.case.31, %dst.addr57.case.30, %dst.addr57.case.29, %dst.addr57.case.28, %dst.addr57.case.27, %dst.addr57.case.26, %dst.addr57.case.25, %dst.addr57.case.24, %dst.addr57.case.23, %dst.addr57.case.22, %dst.addr57.case.21, %dst.addr57.case.20, %dst.addr57.case.19, %dst.addr57.case.18, %dst.addr57.case.17, %dst.addr57.case.16, %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_in(i64* readonly "orig.arg.no"="0", i64* noalias align 512 "orig.arg.no"="1", i64* readonly "orig.arg.no"="2", i64* noalias align 512 "orig.arg.no"="3", %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", %"class.hls::stream"* "orig.arg.no"="6", %"class.hls::stream"* noalias align 512 "orig.arg.no"="7", %"class.hls::stream.9"* "orig.arg.no"="8", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="9", i16* readonly "orig.arg.no"="10", i16* noalias align 512 "orig.arg.no"="11", i1* readonly "orig.arg.no"="12", i1* noalias align 512 "orig.arg.no"="13", i1* readonly "orig.arg.no"="14", i1* noalias align 512 "orig.arg.no"="15", %"class.hls::stream.9"* "orig.arg.no"="16", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="17", %"class.hls::stream.9"* "orig.arg.no"="18", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="19", %"class.hls::stream.9"* "orig.arg.no"="20", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="21", %"class.hls::stream.9"* "orig.arg.no"="22", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="23", i16* readonly "orig.arg.no"="24", i16* noalias align 512 "orig.arg.no"="25", i32* readonly "orig.arg.no"="26", i32* noalias align 512 "orig.arg.no"="27", i1* readonly "orig.arg.no"="28", i1* noalias align 512 "orig.arg.no"="29", [64 x [4096 x %struct.ap_uint.6]]* "orig.arg.no"="30", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_7, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_8, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_9, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_10, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_11, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_12, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_13, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_14, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_15, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_16, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_17, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_18, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_19, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_20, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_21, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_22, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_23, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_24, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_25, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_26, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_27, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_28, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_29, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_30, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_31, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_32, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_33, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_34, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_35, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_36, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_37, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_38, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_39, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_40, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_41, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_42, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_43, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_44, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_45, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_46, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_47, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_48, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_49, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_50, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_51, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_52, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_53, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_54, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_55, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_56, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_57, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_58, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_59, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_60, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_61, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_62, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_63) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %1, i64* %0)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %3, i64* %2)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %5, %"class.hls::stream"* %4)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* align 512 %7, %"class.hls::stream"* %6)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %9, %"class.hls::stream.9"* %8)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %11, i16* %10)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %13, i1* %12)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %15, i1* %14)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %17, %"class.hls::stream.9"* %16)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %19, %"class.hls::stream.9"* %18)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %21, %"class.hls::stream.9"* %20)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* align 512 %23, %"class.hls::stream.9"* %22)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %25, i16* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %29, i1* %28)
  call void @onebyonecpy_hls.p0a64a4096struct.ap_uint.6.29.36([4096 x %struct.ap_uint.6]* %_0, [4096 x %struct.ap_uint.6]* %_1, [4096 x %struct.ap_uint.6]* %_2, [4096 x %struct.ap_uint.6]* %_3, [4096 x %struct.ap_uint.6]* %_4, [4096 x %struct.ap_uint.6]* %_5, [4096 x %struct.ap_uint.6]* %_6, [4096 x %struct.ap_uint.6]* %_7, [4096 x %struct.ap_uint.6]* %_8, [4096 x %struct.ap_uint.6]* %_9, [4096 x %struct.ap_uint.6]* %_10, [4096 x %struct.ap_uint.6]* %_11, [4096 x %struct.ap_uint.6]* %_12, [4096 x %struct.ap_uint.6]* %_13, [4096 x %struct.ap_uint.6]* %_14, [4096 x %struct.ap_uint.6]* %_15, [4096 x %struct.ap_uint.6]* %_16, [4096 x %struct.ap_uint.6]* %_17, [4096 x %struct.ap_uint.6]* %_18, [4096 x %struct.ap_uint.6]* %_19, [4096 x %struct.ap_uint.6]* %_20, [4096 x %struct.ap_uint.6]* %_21, [4096 x %struct.ap_uint.6]* %_22, [4096 x %struct.ap_uint.6]* %_23, [4096 x %struct.ap_uint.6]* %_24, [4096 x %struct.ap_uint.6]* %_25, [4096 x %struct.ap_uint.6]* %_26, [4096 x %struct.ap_uint.6]* %_27, [4096 x %struct.ap_uint.6]* %_28, [4096 x %struct.ap_uint.6]* %_29, [4096 x %struct.ap_uint.6]* %_30, [4096 x %struct.ap_uint.6]* %_31, [4096 x %struct.ap_uint.6]* %_32, [4096 x %struct.ap_uint.6]* %_33, [4096 x %struct.ap_uint.6]* %_34, [4096 x %struct.ap_uint.6]* %_35, [4096 x %struct.ap_uint.6]* %_36, [4096 x %struct.ap_uint.6]* %_37, [4096 x %struct.ap_uint.6]* %_38, [4096 x %struct.ap_uint.6]* %_39, [4096 x %struct.ap_uint.6]* %_40, [4096 x %struct.ap_uint.6]* %_41, [4096 x %struct.ap_uint.6]* %_42, [4096 x %struct.ap_uint.6]* %_43, [4096 x %struct.ap_uint.6]* %_44, [4096 x %struct.ap_uint.6]* %_45, [4096 x %struct.ap_uint.6]* %_46, [4096 x %struct.ap_uint.6]* %_47, [4096 x %struct.ap_uint.6]* %_48, [4096 x %struct.ap_uint.6]* %_49, [4096 x %struct.ap_uint.6]* %_50, [4096 x %struct.ap_uint.6]* %_51, [4096 x %struct.ap_uint.6]* %_52, [4096 x %struct.ap_uint.6]* %_53, [4096 x %struct.ap_uint.6]* %_54, [4096 x %struct.ap_uint.6]* %_55, [4096 x %struct.ap_uint.6]* %_56, [4096 x %struct.ap_uint.6]* %_57, [4096 x %struct.ap_uint.6]* %_58, [4096 x %struct.ap_uint.6]* %_59, [4096 x %struct.ap_uint.6]* %_60, [4096 x %struct.ap_uint.6]* %_61, [4096 x %struct.ap_uint.6]* %_62, [4096 x %struct.ap_uint.6]* %_63, [64 x [4096 x %struct.ap_uint.6]]* %30)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* noalias nocapture "orig.arg.no"="0", %struct.ap_uint.6* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ap_uint.6
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.6* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.6* %2 to i8*
  %6 = bitcast %struct.ap_uint.6* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.6, %struct.ap_uint.6* %2
  %8 = bitcast %struct.ap_uint.6* %2 to i8*
  %9 = bitcast %struct.ap_uint.6* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !17

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.6* %1 to i8*
  %11 = bitcast %struct.ap_uint.6* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base.7* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ap_int_base.7
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.7* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.7* %2 to i8*
  %6 = bitcast %struct.ap_int_base.7* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.7, %struct.ap_int_base.7* %2
  %8 = bitcast %struct.ap_int_base.7* %2 to i8*
  %9 = bitcast %struct.ap_int_base.7* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !18

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.7* %1 to i8*
  %11 = bitcast %struct.ap_int_base.7* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int.8* noalias nocapture "orig.arg.no"="1") #4 {
entry:
  %2 = alloca %struct.ssdm_int.8
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.8* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_8(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.8* %2 to i8*
  %6 = bitcast %struct.ssdm_int.8* %1 to i8*
  call void @fpga_fifo_pop_8(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.8, %struct.ssdm_int.8* %2
  %8 = bitcast %struct.ssdm_int.8* %2 to i8*
  %9 = bitcast %struct.ssdm_int.8* %0 to i8*
  call void @fpga_fifo_push_8(i8* %8, i8* %9)
  br label %empty, !llvm.loop !19

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.8* %1 to i8*
  %11 = bitcast %struct.ssdm_int.8* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a64a4096struct.ap_uint.6.45.52([64 x [4096 x %struct.ap_uint.6]]* noalias "orig.arg.no"="0", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_7, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_8, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_9, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_10, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_11, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_12, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_13, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_14, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_15, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_16, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_17, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_18, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_19, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_20, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_21, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_22, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_23, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_24, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_25, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_26, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_27, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_28, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_29, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_30, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_31, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_32, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_33, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_34, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_35, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_36, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_37, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_38, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_39, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_40, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_41, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_42, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_43, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_44, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_45, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_46, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_47, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_48, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_49, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_50, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_51, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_52, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_53, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_54, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_55, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_56, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_57, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_58, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_59, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_60, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_61, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_62, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_63) #3 {
entry:
  %1 = icmp eq [64 x [4096 x %struct.ap_uint.6]]* %0, null
  %2 = icmp eq [4096 x %struct.ap_uint.6]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx18 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx317 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %dst.addr57 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr68_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317
  %src.addr68_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317
  %src.addr68_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317
  %src.addr68_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317
  %src.addr68_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317
  %src.addr68_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317
  %src.addr68_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317
  %src.addr68_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317
  %src.addr68_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317
  %src.addr68_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317
  %src.addr68_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317
  %src.addr68_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317
  %src.addr68_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317
  %src.addr68_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317
  %src.addr68_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317
  %src.addr68_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317
  %src.addr68_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317
  %src.addr68_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317
  %src.addr68_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317
  %src.addr68_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317
  %src.addr68_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317
  %src.addr68_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317
  %src.addr68_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317
  %src.addr68_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317
  %src.addr68_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317
  %src.addr68_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317
  %src.addr68_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317
  %src.addr68_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317
  %src.addr68_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317
  %src.addr68_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317
  %src.addr68_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317
  %src.addr68_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317
  %src.addr68_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317
  %src.addr68_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317
  %src.addr68_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317
  %src.addr68_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317
  %src.addr68_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317
  %src.addr68_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317
  %src.addr68_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317
  %src.addr68_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317
  %src.addr68_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317
  %src.addr68_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317
  %src.addr68_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317
  %src.addr68_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317
  %src.addr68_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317
  %src.addr68_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317
  %src.addr68_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317
  %src.addr68_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317
  %src.addr68_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317
  %src.addr68_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317
  %src.addr68_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317
  %src.addr68_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317
  %src.addr68_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317
  %src.addr68_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317
  %src.addr68_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317
  %src.addr68_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317
  %src.addr68_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317
  %src.addr68_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317
  %src.addr68_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317
  %src.addr68_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317
  %src.addr68_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317
  %src.addr68_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317
  %src.addr68_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317
  %src.addr68_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317
  %_01 = bitcast %struct.ap_uint.6* %src.addr68_0 to i8*
  %_110 = bitcast %struct.ap_uint.6* %src.addr68_1 to i8*
  %_211 = bitcast %struct.ap_uint.6* %src.addr68_2 to i8*
  %_312 = bitcast %struct.ap_uint.6* %src.addr68_3 to i8*
  %_413 = bitcast %struct.ap_uint.6* %src.addr68_4 to i8*
  %_514 = bitcast %struct.ap_uint.6* %src.addr68_5 to i8*
  %_615 = bitcast %struct.ap_uint.6* %src.addr68_6 to i8*
  %_716 = bitcast %struct.ap_uint.6* %src.addr68_7 to i8*
  %_817 = bitcast %struct.ap_uint.6* %src.addr68_8 to i8*
  %_918 = bitcast %struct.ap_uint.6* %src.addr68_9 to i8*
  %_1019 = bitcast %struct.ap_uint.6* %src.addr68_10 to i8*
  %_1120 = bitcast %struct.ap_uint.6* %src.addr68_11 to i8*
  %_1221 = bitcast %struct.ap_uint.6* %src.addr68_12 to i8*
  %_1322 = bitcast %struct.ap_uint.6* %src.addr68_13 to i8*
  %_1423 = bitcast %struct.ap_uint.6* %src.addr68_14 to i8*
  %_1524 = bitcast %struct.ap_uint.6* %src.addr68_15 to i8*
  %_1625 = bitcast %struct.ap_uint.6* %src.addr68_16 to i8*
  %_1726 = bitcast %struct.ap_uint.6* %src.addr68_17 to i8*
  %_1827 = bitcast %struct.ap_uint.6* %src.addr68_18 to i8*
  %_1928 = bitcast %struct.ap_uint.6* %src.addr68_19 to i8*
  %_2029 = bitcast %struct.ap_uint.6* %src.addr68_20 to i8*
  %_2130 = bitcast %struct.ap_uint.6* %src.addr68_21 to i8*
  %_2231 = bitcast %struct.ap_uint.6* %src.addr68_22 to i8*
  %_2332 = bitcast %struct.ap_uint.6* %src.addr68_23 to i8*
  %_2433 = bitcast %struct.ap_uint.6* %src.addr68_24 to i8*
  %_2534 = bitcast %struct.ap_uint.6* %src.addr68_25 to i8*
  %_2635 = bitcast %struct.ap_uint.6* %src.addr68_26 to i8*
  %_2736 = bitcast %struct.ap_uint.6* %src.addr68_27 to i8*
  %_2837 = bitcast %struct.ap_uint.6* %src.addr68_28 to i8*
  %_2938 = bitcast %struct.ap_uint.6* %src.addr68_29 to i8*
  %_3039 = bitcast %struct.ap_uint.6* %src.addr68_30 to i8*
  %_3140 = bitcast %struct.ap_uint.6* %src.addr68_31 to i8*
  %_3241 = bitcast %struct.ap_uint.6* %src.addr68_32 to i8*
  %_3342 = bitcast %struct.ap_uint.6* %src.addr68_33 to i8*
  %_3443 = bitcast %struct.ap_uint.6* %src.addr68_34 to i8*
  %_3544 = bitcast %struct.ap_uint.6* %src.addr68_35 to i8*
  %_3645 = bitcast %struct.ap_uint.6* %src.addr68_36 to i8*
  %_3746 = bitcast %struct.ap_uint.6* %src.addr68_37 to i8*
  %_3847 = bitcast %struct.ap_uint.6* %src.addr68_38 to i8*
  %_3948 = bitcast %struct.ap_uint.6* %src.addr68_39 to i8*
  %_4049 = bitcast %struct.ap_uint.6* %src.addr68_40 to i8*
  %_4150 = bitcast %struct.ap_uint.6* %src.addr68_41 to i8*
  %_4251 = bitcast %struct.ap_uint.6* %src.addr68_42 to i8*
  %_4352 = bitcast %struct.ap_uint.6* %src.addr68_43 to i8*
  %_4453 = bitcast %struct.ap_uint.6* %src.addr68_44 to i8*
  %_4554 = bitcast %struct.ap_uint.6* %src.addr68_45 to i8*
  %_4655 = bitcast %struct.ap_uint.6* %src.addr68_46 to i8*
  %_4756 = bitcast %struct.ap_uint.6* %src.addr68_47 to i8*
  %_4857 = bitcast %struct.ap_uint.6* %src.addr68_48 to i8*
  %_4958 = bitcast %struct.ap_uint.6* %src.addr68_49 to i8*
  %_5059 = bitcast %struct.ap_uint.6* %src.addr68_50 to i8*
  %_5160 = bitcast %struct.ap_uint.6* %src.addr68_51 to i8*
  %_5261 = bitcast %struct.ap_uint.6* %src.addr68_52 to i8*
  %_5362 = bitcast %struct.ap_uint.6* %src.addr68_53 to i8*
  %_5463 = bitcast %struct.ap_uint.6* %src.addr68_54 to i8*
  %_5564 = bitcast %struct.ap_uint.6* %src.addr68_55 to i8*
  %_5665 = bitcast %struct.ap_uint.6* %src.addr68_56 to i8*
  %_5766 = bitcast %struct.ap_uint.6* %src.addr68_57 to i8*
  %_5867 = bitcast %struct.ap_uint.6* %src.addr68_58 to i8*
  %_5968 = bitcast %struct.ap_uint.6* %src.addr68_59 to i8*
  %_6069 = bitcast %struct.ap_uint.6* %src.addr68_60 to i8*
  %_6170 = bitcast %struct.ap_uint.6* %src.addr68_61 to i8*
  %_6271 = bitcast %struct.ap_uint.6* %src.addr68_62 to i8*
  %_6372 = bitcast %struct.ap_uint.6* %src.addr68_63 to i8*
  switch i64 %for.loop.idx18, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.case.7
    i64 8, label %.case.8
    i64 9, label %.case.9
    i64 10, label %.case.10
    i64 11, label %.case.11
    i64 12, label %.case.12
    i64 13, label %.case.13
    i64 14, label %.case.14
    i64 15, label %.case.15
    i64 16, label %.case.16
    i64 17, label %.case.17
    i64 18, label %.case.18
    i64 19, label %.case.19
    i64 20, label %.case.20
    i64 21, label %.case.21
    i64 22, label %.case.22
    i64 23, label %.case.23
    i64 24, label %.case.24
    i64 25, label %.case.25
    i64 26, label %.case.26
    i64 27, label %.case.27
    i64 28, label %.case.28
    i64 29, label %.case.29
    i64 30, label %.case.30
    i64 31, label %.case.31
    i64 32, label %.case.32
    i64 33, label %.case.33
    i64 34, label %.case.34
    i64 35, label %.case.35
    i64 36, label %.case.36
    i64 37, label %.case.37
    i64 38, label %.case.38
    i64 39, label %.case.39
    i64 40, label %.case.40
    i64 41, label %.case.41
    i64 42, label %.case.42
    i64 43, label %.case.43
    i64 44, label %.case.44
    i64 45, label %.case.45
    i64 46, label %.case.46
    i64 47, label %.case.47
    i64 48, label %.case.48
    i64 49, label %.case.49
    i64 50, label %.case.50
    i64 51, label %.case.51
    i64 52, label %.case.52
    i64 53, label %.case.53
    i64 54, label %.case.54
    i64 55, label %.case.55
    i64 56, label %.case.56
    i64 57, label %.case.57
    i64 58, label %.case.58
    i64 59, label %.case.59
    i64 60, label %.case.60
    i64 61, label %.case.61
    i64 62, label %.case.62
    i64 63, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_073 = call i1 @fpga_fifo_exist_8(i8* %_01)
  br i1 %_073, label %src.addr68.case.0, label %4

.case.1:                                          ; preds = %for.loop2
  %_174 = call i1 @fpga_fifo_exist_8(i8* %_110)
  br i1 %_174, label %src.addr68.case.1, label %4

.case.2:                                          ; preds = %for.loop2
  %_275 = call i1 @fpga_fifo_exist_8(i8* %_211)
  br i1 %_275, label %src.addr68.case.2, label %4

.case.3:                                          ; preds = %for.loop2
  %_376 = call i1 @fpga_fifo_exist_8(i8* %_312)
  br i1 %_376, label %src.addr68.case.3, label %4

.case.4:                                          ; preds = %for.loop2
  %_477 = call i1 @fpga_fifo_exist_8(i8* %_413)
  br i1 %_477, label %src.addr68.case.4, label %4

.case.5:                                          ; preds = %for.loop2
  %_578 = call i1 @fpga_fifo_exist_8(i8* %_514)
  br i1 %_578, label %src.addr68.case.5, label %4

.case.6:                                          ; preds = %for.loop2
  %_679 = call i1 @fpga_fifo_exist_8(i8* %_615)
  br i1 %_679, label %src.addr68.case.6, label %4

.case.7:                                          ; preds = %for.loop2
  %_780 = call i1 @fpga_fifo_exist_8(i8* %_716)
  br i1 %_780, label %src.addr68.case.7, label %4

.case.8:                                          ; preds = %for.loop2
  %_881 = call i1 @fpga_fifo_exist_8(i8* %_817)
  br i1 %_881, label %src.addr68.case.8, label %4

.case.9:                                          ; preds = %for.loop2
  %_982 = call i1 @fpga_fifo_exist_8(i8* %_918)
  br i1 %_982, label %src.addr68.case.9, label %4

.case.10:                                         ; preds = %for.loop2
  %_1083 = call i1 @fpga_fifo_exist_8(i8* %_1019)
  br i1 %_1083, label %src.addr68.case.10, label %4

.case.11:                                         ; preds = %for.loop2
  %_1184 = call i1 @fpga_fifo_exist_8(i8* %_1120)
  br i1 %_1184, label %src.addr68.case.11, label %4

.case.12:                                         ; preds = %for.loop2
  %_1285 = call i1 @fpga_fifo_exist_8(i8* %_1221)
  br i1 %_1285, label %src.addr68.case.12, label %4

.case.13:                                         ; preds = %for.loop2
  %_1386 = call i1 @fpga_fifo_exist_8(i8* %_1322)
  br i1 %_1386, label %src.addr68.case.13, label %4

.case.14:                                         ; preds = %for.loop2
  %_1487 = call i1 @fpga_fifo_exist_8(i8* %_1423)
  br i1 %_1487, label %src.addr68.case.14, label %4

.case.15:                                         ; preds = %for.loop2
  %_1588 = call i1 @fpga_fifo_exist_8(i8* %_1524)
  br i1 %_1588, label %src.addr68.case.15, label %4

.case.16:                                         ; preds = %for.loop2
  %_1689 = call i1 @fpga_fifo_exist_8(i8* %_1625)
  br i1 %_1689, label %src.addr68.case.16, label %4

.case.17:                                         ; preds = %for.loop2
  %_1790 = call i1 @fpga_fifo_exist_8(i8* %_1726)
  br i1 %_1790, label %src.addr68.case.17, label %4

.case.18:                                         ; preds = %for.loop2
  %_1891 = call i1 @fpga_fifo_exist_8(i8* %_1827)
  br i1 %_1891, label %src.addr68.case.18, label %4

.case.19:                                         ; preds = %for.loop2
  %_1992 = call i1 @fpga_fifo_exist_8(i8* %_1928)
  br i1 %_1992, label %src.addr68.case.19, label %4

.case.20:                                         ; preds = %for.loop2
  %_2093 = call i1 @fpga_fifo_exist_8(i8* %_2029)
  br i1 %_2093, label %src.addr68.case.20, label %4

.case.21:                                         ; preds = %for.loop2
  %_2194 = call i1 @fpga_fifo_exist_8(i8* %_2130)
  br i1 %_2194, label %src.addr68.case.21, label %4

.case.22:                                         ; preds = %for.loop2
  %_2295 = call i1 @fpga_fifo_exist_8(i8* %_2231)
  br i1 %_2295, label %src.addr68.case.22, label %4

.case.23:                                         ; preds = %for.loop2
  %_2396 = call i1 @fpga_fifo_exist_8(i8* %_2332)
  br i1 %_2396, label %src.addr68.case.23, label %4

.case.24:                                         ; preds = %for.loop2
  %_2497 = call i1 @fpga_fifo_exist_8(i8* %_2433)
  br i1 %_2497, label %src.addr68.case.24, label %4

.case.25:                                         ; preds = %for.loop2
  %_2598 = call i1 @fpga_fifo_exist_8(i8* %_2534)
  br i1 %_2598, label %src.addr68.case.25, label %4

.case.26:                                         ; preds = %for.loop2
  %_2699 = call i1 @fpga_fifo_exist_8(i8* %_2635)
  br i1 %_2699, label %src.addr68.case.26, label %4

.case.27:                                         ; preds = %for.loop2
  %_27100 = call i1 @fpga_fifo_exist_8(i8* %_2736)
  br i1 %_27100, label %src.addr68.case.27, label %4

.case.28:                                         ; preds = %for.loop2
  %_28101 = call i1 @fpga_fifo_exist_8(i8* %_2837)
  br i1 %_28101, label %src.addr68.case.28, label %4

.case.29:                                         ; preds = %for.loop2
  %_29102 = call i1 @fpga_fifo_exist_8(i8* %_2938)
  br i1 %_29102, label %src.addr68.case.29, label %4

.case.30:                                         ; preds = %for.loop2
  %_30103 = call i1 @fpga_fifo_exist_8(i8* %_3039)
  br i1 %_30103, label %src.addr68.case.30, label %4

.case.31:                                         ; preds = %for.loop2
  %_31104 = call i1 @fpga_fifo_exist_8(i8* %_3140)
  br i1 %_31104, label %src.addr68.case.31, label %4

.case.32:                                         ; preds = %for.loop2
  %_32105 = call i1 @fpga_fifo_exist_8(i8* %_3241)
  br i1 %_32105, label %src.addr68.case.32, label %4

.case.33:                                         ; preds = %for.loop2
  %_33106 = call i1 @fpga_fifo_exist_8(i8* %_3342)
  br i1 %_33106, label %src.addr68.case.33, label %4

.case.34:                                         ; preds = %for.loop2
  %_34107 = call i1 @fpga_fifo_exist_8(i8* %_3443)
  br i1 %_34107, label %src.addr68.case.34, label %4

.case.35:                                         ; preds = %for.loop2
  %_35108 = call i1 @fpga_fifo_exist_8(i8* %_3544)
  br i1 %_35108, label %src.addr68.case.35, label %4

.case.36:                                         ; preds = %for.loop2
  %_36109 = call i1 @fpga_fifo_exist_8(i8* %_3645)
  br i1 %_36109, label %src.addr68.case.36, label %4

.case.37:                                         ; preds = %for.loop2
  %_37110 = call i1 @fpga_fifo_exist_8(i8* %_3746)
  br i1 %_37110, label %src.addr68.case.37, label %4

.case.38:                                         ; preds = %for.loop2
  %_38111 = call i1 @fpga_fifo_exist_8(i8* %_3847)
  br i1 %_38111, label %src.addr68.case.38, label %4

.case.39:                                         ; preds = %for.loop2
  %_39112 = call i1 @fpga_fifo_exist_8(i8* %_3948)
  br i1 %_39112, label %src.addr68.case.39, label %4

.case.40:                                         ; preds = %for.loop2
  %_40113 = call i1 @fpga_fifo_exist_8(i8* %_4049)
  br i1 %_40113, label %src.addr68.case.40, label %4

.case.41:                                         ; preds = %for.loop2
  %_41114 = call i1 @fpga_fifo_exist_8(i8* %_4150)
  br i1 %_41114, label %src.addr68.case.41, label %4

.case.42:                                         ; preds = %for.loop2
  %_42115 = call i1 @fpga_fifo_exist_8(i8* %_4251)
  br i1 %_42115, label %src.addr68.case.42, label %4

.case.43:                                         ; preds = %for.loop2
  %_43116 = call i1 @fpga_fifo_exist_8(i8* %_4352)
  br i1 %_43116, label %src.addr68.case.43, label %4

.case.44:                                         ; preds = %for.loop2
  %_44117 = call i1 @fpga_fifo_exist_8(i8* %_4453)
  br i1 %_44117, label %src.addr68.case.44, label %4

.case.45:                                         ; preds = %for.loop2
  %_45118 = call i1 @fpga_fifo_exist_8(i8* %_4554)
  br i1 %_45118, label %src.addr68.case.45, label %4

.case.46:                                         ; preds = %for.loop2
  %_46119 = call i1 @fpga_fifo_exist_8(i8* %_4655)
  br i1 %_46119, label %src.addr68.case.46, label %4

.case.47:                                         ; preds = %for.loop2
  %_47120 = call i1 @fpga_fifo_exist_8(i8* %_4756)
  br i1 %_47120, label %src.addr68.case.47, label %4

.case.48:                                         ; preds = %for.loop2
  %_48121 = call i1 @fpga_fifo_exist_8(i8* %_4857)
  br i1 %_48121, label %src.addr68.case.48, label %4

.case.49:                                         ; preds = %for.loop2
  %_49122 = call i1 @fpga_fifo_exist_8(i8* %_4958)
  br i1 %_49122, label %src.addr68.case.49, label %4

.case.50:                                         ; preds = %for.loop2
  %_50123 = call i1 @fpga_fifo_exist_8(i8* %_5059)
  br i1 %_50123, label %src.addr68.case.50, label %4

.case.51:                                         ; preds = %for.loop2
  %_51124 = call i1 @fpga_fifo_exist_8(i8* %_5160)
  br i1 %_51124, label %src.addr68.case.51, label %4

.case.52:                                         ; preds = %for.loop2
  %_52125 = call i1 @fpga_fifo_exist_8(i8* %_5261)
  br i1 %_52125, label %src.addr68.case.52, label %4

.case.53:                                         ; preds = %for.loop2
  %_53126 = call i1 @fpga_fifo_exist_8(i8* %_5362)
  br i1 %_53126, label %src.addr68.case.53, label %4

.case.54:                                         ; preds = %for.loop2
  %_54127 = call i1 @fpga_fifo_exist_8(i8* %_5463)
  br i1 %_54127, label %src.addr68.case.54, label %4

.case.55:                                         ; preds = %for.loop2
  %_55128 = call i1 @fpga_fifo_exist_8(i8* %_5564)
  br i1 %_55128, label %src.addr68.case.55, label %4

.case.56:                                         ; preds = %for.loop2
  %_56129 = call i1 @fpga_fifo_exist_8(i8* %_5665)
  br i1 %_56129, label %src.addr68.case.56, label %4

.case.57:                                         ; preds = %for.loop2
  %_57130 = call i1 @fpga_fifo_exist_8(i8* %_5766)
  br i1 %_57130, label %src.addr68.case.57, label %4

.case.58:                                         ; preds = %for.loop2
  %_58131 = call i1 @fpga_fifo_exist_8(i8* %_5867)
  br i1 %_58131, label %src.addr68.case.58, label %4

.case.59:                                         ; preds = %for.loop2
  %_59132 = call i1 @fpga_fifo_exist_8(i8* %_5968)
  br i1 %_59132, label %src.addr68.case.59, label %4

.case.60:                                         ; preds = %for.loop2
  %_60133 = call i1 @fpga_fifo_exist_8(i8* %_6069)
  br i1 %_60133, label %src.addr68.case.60, label %4

.case.61:                                         ; preds = %for.loop2
  %_61134 = call i1 @fpga_fifo_exist_8(i8* %_6170)
  br i1 %_61134, label %src.addr68.case.61, label %4

.case.62:                                         ; preds = %for.loop2
  %_62135 = call i1 @fpga_fifo_exist_8(i8* %_6271)
  br i1 %_62135, label %src.addr68.case.62, label %4

.exit:                                            ; preds = %for.loop2
  %_63136 = call i1 @fpga_fifo_exist_8(i8* %_6372)
  br i1 %_63136, label %src.addr68.case.63, label %4

src.addr68.case.0:                                ; preds = %.case.0
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_0)
  br label %for.loop.head1

src.addr68.case.1:                                ; preds = %.case.1
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_1)
  br label %for.loop.head1

src.addr68.case.2:                                ; preds = %.case.2
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_2)
  br label %for.loop.head1

src.addr68.case.3:                                ; preds = %.case.3
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_3)
  br label %for.loop.head1

src.addr68.case.4:                                ; preds = %.case.4
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_4)
  br label %for.loop.head1

src.addr68.case.5:                                ; preds = %.case.5
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_5)
  br label %for.loop.head1

src.addr68.case.6:                                ; preds = %.case.6
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_6)
  br label %for.loop.head1

src.addr68.case.7:                                ; preds = %.case.7
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_7)
  br label %for.loop.head1

src.addr68.case.8:                                ; preds = %.case.8
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_8)
  br label %for.loop.head1

src.addr68.case.9:                                ; preds = %.case.9
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_9)
  br label %for.loop.head1

src.addr68.case.10:                               ; preds = %.case.10
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_10)
  br label %for.loop.head1

src.addr68.case.11:                               ; preds = %.case.11
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_11)
  br label %for.loop.head1

src.addr68.case.12:                               ; preds = %.case.12
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_12)
  br label %for.loop.head1

src.addr68.case.13:                               ; preds = %.case.13
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_13)
  br label %for.loop.head1

src.addr68.case.14:                               ; preds = %.case.14
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_14)
  br label %for.loop.head1

src.addr68.case.15:                               ; preds = %.case.15
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_15)
  br label %for.loop.head1

src.addr68.case.16:                               ; preds = %.case.16
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_16)
  br label %for.loop.head1

src.addr68.case.17:                               ; preds = %.case.17
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_17)
  br label %for.loop.head1

src.addr68.case.18:                               ; preds = %.case.18
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_18)
  br label %for.loop.head1

src.addr68.case.19:                               ; preds = %.case.19
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_19)
  br label %for.loop.head1

src.addr68.case.20:                               ; preds = %.case.20
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_20)
  br label %for.loop.head1

src.addr68.case.21:                               ; preds = %.case.21
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_21)
  br label %for.loop.head1

src.addr68.case.22:                               ; preds = %.case.22
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_22)
  br label %for.loop.head1

src.addr68.case.23:                               ; preds = %.case.23
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_23)
  br label %for.loop.head1

src.addr68.case.24:                               ; preds = %.case.24
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_24)
  br label %for.loop.head1

src.addr68.case.25:                               ; preds = %.case.25
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_25)
  br label %for.loop.head1

src.addr68.case.26:                               ; preds = %.case.26
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_26)
  br label %for.loop.head1

src.addr68.case.27:                               ; preds = %.case.27
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_27)
  br label %for.loop.head1

src.addr68.case.28:                               ; preds = %.case.28
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_28)
  br label %for.loop.head1

src.addr68.case.29:                               ; preds = %.case.29
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_29)
  br label %for.loop.head1

src.addr68.case.30:                               ; preds = %.case.30
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_30)
  br label %for.loop.head1

src.addr68.case.31:                               ; preds = %.case.31
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_31)
  br label %for.loop.head1

src.addr68.case.32:                               ; preds = %.case.32
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_32)
  br label %for.loop.head1

src.addr68.case.33:                               ; preds = %.case.33
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_33)
  br label %for.loop.head1

src.addr68.case.34:                               ; preds = %.case.34
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_34)
  br label %for.loop.head1

src.addr68.case.35:                               ; preds = %.case.35
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_35)
  br label %for.loop.head1

src.addr68.case.36:                               ; preds = %.case.36
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_36)
  br label %for.loop.head1

src.addr68.case.37:                               ; preds = %.case.37
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_37)
  br label %for.loop.head1

src.addr68.case.38:                               ; preds = %.case.38
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_38)
  br label %for.loop.head1

src.addr68.case.39:                               ; preds = %.case.39
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_39)
  br label %for.loop.head1

src.addr68.case.40:                               ; preds = %.case.40
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_40)
  br label %for.loop.head1

src.addr68.case.41:                               ; preds = %.case.41
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_41)
  br label %for.loop.head1

src.addr68.case.42:                               ; preds = %.case.42
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_42)
  br label %for.loop.head1

src.addr68.case.43:                               ; preds = %.case.43
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_43)
  br label %for.loop.head1

src.addr68.case.44:                               ; preds = %.case.44
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_44)
  br label %for.loop.head1

src.addr68.case.45:                               ; preds = %.case.45
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_45)
  br label %for.loop.head1

src.addr68.case.46:                               ; preds = %.case.46
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_46)
  br label %for.loop.head1

src.addr68.case.47:                               ; preds = %.case.47
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_47)
  br label %for.loop.head1

src.addr68.case.48:                               ; preds = %.case.48
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_48)
  br label %for.loop.head1

src.addr68.case.49:                               ; preds = %.case.49
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_49)
  br label %for.loop.head1

src.addr68.case.50:                               ; preds = %.case.50
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_50)
  br label %for.loop.head1

src.addr68.case.51:                               ; preds = %.case.51
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_51)
  br label %for.loop.head1

src.addr68.case.52:                               ; preds = %.case.52
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_52)
  br label %for.loop.head1

src.addr68.case.53:                               ; preds = %.case.53
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_53)
  br label %for.loop.head1

src.addr68.case.54:                               ; preds = %.case.54
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_54)
  br label %for.loop.head1

src.addr68.case.55:                               ; preds = %.case.55
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_55)
  br label %for.loop.head1

src.addr68.case.56:                               ; preds = %.case.56
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_56)
  br label %for.loop.head1

src.addr68.case.57:                               ; preds = %.case.57
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_57)
  br label %for.loop.head1

src.addr68.case.58:                               ; preds = %.case.58
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_58)
  br label %for.loop.head1

src.addr68.case.59:                               ; preds = %.case.59
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_59)
  br label %for.loop.head1

src.addr68.case.60:                               ; preds = %.case.60
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_60)
  br label %for.loop.head1

src.addr68.case.61:                               ; preds = %.case.61
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_61)
  br label %for.loop.head1

src.addr68.case.62:                               ; preds = %.case.62
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_62)
  br label %for.loop.head1

src.addr68.case.63:                               ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_63)
  br label %for.loop.head1

; <label>:4:                                      ; preds = %.exit, %.case.62, %.case.61, %.case.60, %.case.59, %.case.58, %.case.57, %.case.56, %.case.55, %.case.54, %.case.53, %.case.52, %.case.51, %.case.50, %.case.49, %.case.48, %.case.47, %.case.46, %.case.45, %.case.44, %.case.43, %.case.42, %.case.41, %.case.40, %.case.39, %.case.38, %.case.37, %.case.36, %.case.35, %.case.34, %.case.33, %.case.32, %.case.31, %.case.30, %.case.29, %.case.28, %.case.27, %.case.26, %.case.25, %.case.24, %.case.23, %.case.22, %.case.21, %.case.20, %.case.19, %.case.18, %.case.17, %.case.16, %.case.15, %.case.14, %.case.13, %.case.12, %.case.11, %.case.10, %.case.9, %.case.8, %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0
  %src.addr6.09_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0
  %src.addr6.09_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %_0137 = bitcast %struct.ap_int_base.7* %src.addr6.09_0 to i8*
  %_1138 = bitcast %struct.ap_int_base.7* %src.addr6.09_1 to i8*
  %_2139 = bitcast %struct.ap_int_base.7* %src.addr6.09_2 to i8*
  %_3141 = bitcast %struct.ap_int_base.7* %src.addr6.09_3 to i8*
  %_4142 = bitcast %struct.ap_int_base.7* %src.addr6.09_4 to i8*
  %_5143 = bitcast %struct.ap_int_base.7* %src.addr6.09_5 to i8*
  %_6144 = bitcast %struct.ap_int_base.7* %src.addr6.09_6 to i8*
  %_7145 = bitcast %struct.ap_int_base.7* %src.addr6.09_7 to i8*
  %_8146 = bitcast %struct.ap_int_base.7* %src.addr6.09_8 to i8*
  %_9147 = bitcast %struct.ap_int_base.7* %src.addr6.09_9 to i8*
  %_10148 = bitcast %struct.ap_int_base.7* %src.addr6.09_10 to i8*
  %_11149 = bitcast %struct.ap_int_base.7* %src.addr6.09_11 to i8*
  %_12150 = bitcast %struct.ap_int_base.7* %src.addr6.09_12 to i8*
  %_13151 = bitcast %struct.ap_int_base.7* %src.addr6.09_13 to i8*
  %_14152 = bitcast %struct.ap_int_base.7* %src.addr6.09_14 to i8*
  %_15153 = bitcast %struct.ap_int_base.7* %src.addr6.09_15 to i8*
  %_16154 = bitcast %struct.ap_int_base.7* %src.addr6.09_16 to i8*
  %_17155 = bitcast %struct.ap_int_base.7* %src.addr6.09_17 to i8*
  %_18156 = bitcast %struct.ap_int_base.7* %src.addr6.09_18 to i8*
  %_19157 = bitcast %struct.ap_int_base.7* %src.addr6.09_19 to i8*
  %_20158 = bitcast %struct.ap_int_base.7* %src.addr6.09_20 to i8*
  %_21159 = bitcast %struct.ap_int_base.7* %src.addr6.09_21 to i8*
  %_22160 = bitcast %struct.ap_int_base.7* %src.addr6.09_22 to i8*
  %_23161 = bitcast %struct.ap_int_base.7* %src.addr6.09_23 to i8*
  %_24162 = bitcast %struct.ap_int_base.7* %src.addr6.09_24 to i8*
  %_25163 = bitcast %struct.ap_int_base.7* %src.addr6.09_25 to i8*
  %_26164 = bitcast %struct.ap_int_base.7* %src.addr6.09_26 to i8*
  %_27165 = bitcast %struct.ap_int_base.7* %src.addr6.09_27 to i8*
  %_28166 = bitcast %struct.ap_int_base.7* %src.addr6.09_28 to i8*
  %_29167 = bitcast %struct.ap_int_base.7* %src.addr6.09_29 to i8*
  %_30168 = bitcast %struct.ap_int_base.7* %src.addr6.09_30 to i8*
  %_31169 = bitcast %struct.ap_int_base.7* %src.addr6.09_31 to i8*
  %_32170 = bitcast %struct.ap_int_base.7* %src.addr6.09_32 to i8*
  %_33171 = bitcast %struct.ap_int_base.7* %src.addr6.09_33 to i8*
  %_34172 = bitcast %struct.ap_int_base.7* %src.addr6.09_34 to i8*
  %_35173 = bitcast %struct.ap_int_base.7* %src.addr6.09_35 to i8*
  %_36174 = bitcast %struct.ap_int_base.7* %src.addr6.09_36 to i8*
  %_37175 = bitcast %struct.ap_int_base.7* %src.addr6.09_37 to i8*
  %_38176 = bitcast %struct.ap_int_base.7* %src.addr6.09_38 to i8*
  %_39177 = bitcast %struct.ap_int_base.7* %src.addr6.09_39 to i8*
  %_40178 = bitcast %struct.ap_int_base.7* %src.addr6.09_40 to i8*
  %_41179 = bitcast %struct.ap_int_base.7* %src.addr6.09_41 to i8*
  %_42180 = bitcast %struct.ap_int_base.7* %src.addr6.09_42 to i8*
  %_43181 = bitcast %struct.ap_int_base.7* %src.addr6.09_43 to i8*
  %_44182 = bitcast %struct.ap_int_base.7* %src.addr6.09_44 to i8*
  %_45183 = bitcast %struct.ap_int_base.7* %src.addr6.09_45 to i8*
  %_46184 = bitcast %struct.ap_int_base.7* %src.addr6.09_46 to i8*
  %_47185 = bitcast %struct.ap_int_base.7* %src.addr6.09_47 to i8*
  %_48186 = bitcast %struct.ap_int_base.7* %src.addr6.09_48 to i8*
  %_49187 = bitcast %struct.ap_int_base.7* %src.addr6.09_49 to i8*
  %_50188 = bitcast %struct.ap_int_base.7* %src.addr6.09_50 to i8*
  %_51189 = bitcast %struct.ap_int_base.7* %src.addr6.09_51 to i8*
  %_52190 = bitcast %struct.ap_int_base.7* %src.addr6.09_52 to i8*
  %_53191 = bitcast %struct.ap_int_base.7* %src.addr6.09_53 to i8*
  %_54192 = bitcast %struct.ap_int_base.7* %src.addr6.09_54 to i8*
  %_55193 = bitcast %struct.ap_int_base.7* %src.addr6.09_55 to i8*
  %_56194 = bitcast %struct.ap_int_base.7* %src.addr6.09_56 to i8*
  %_57195 = bitcast %struct.ap_int_base.7* %src.addr6.09_57 to i8*
  %_58196 = bitcast %struct.ap_int_base.7* %src.addr6.09_58 to i8*
  %_59197 = bitcast %struct.ap_int_base.7* %src.addr6.09_59 to i8*
  %_60198 = bitcast %struct.ap_int_base.7* %src.addr6.09_60 to i8*
  %_61199 = bitcast %struct.ap_int_base.7* %src.addr6.09_61 to i8*
  %_62200 = bitcast %struct.ap_int_base.7* %src.addr6.09_62 to i8*
  %_63201 = bitcast %struct.ap_int_base.7* %src.addr6.09_63 to i8*
  switch i64 %for.loop.idx18, label %.default202 [
    i64 0, label %.case.0204
    i64 1, label %.case.1205
    i64 2, label %.case.2206
    i64 3, label %.case.3207
    i64 4, label %.case.4208
    i64 5, label %.case.5209
    i64 6, label %.case.6210
    i64 7, label %.case.7211
    i64 8, label %.case.8212
    i64 9, label %.case.9213
    i64 10, label %.case.10214
    i64 11, label %.case.11215
    i64 12, label %.case.12216
    i64 13, label %.case.13217
    i64 14, label %.case.14218
    i64 15, label %.case.15219
    i64 16, label %.case.16220
    i64 17, label %.case.17221
    i64 18, label %.case.18222
    i64 19, label %.case.19223
    i64 20, label %.case.20224
    i64 21, label %.case.21225
    i64 22, label %.case.22226
    i64 23, label %.case.23227
    i64 24, label %.case.24228
    i64 25, label %.case.25229
    i64 26, label %.case.26230
    i64 27, label %.case.27231
    i64 28, label %.case.28232
    i64 29, label %.case.29233
    i64 30, label %.case.30234
    i64 31, label %.case.31235
    i64 32, label %.case.32236
    i64 33, label %.case.33237
    i64 34, label %.case.34238
    i64 35, label %.case.35239
    i64 36, label %.case.36240
    i64 37, label %.case.37241
    i64 38, label %.case.38242
    i64 39, label %.case.39243
    i64 40, label %.case.40244
    i64 41, label %.case.41245
    i64 42, label %.case.42246
    i64 43, label %.case.43247
    i64 44, label %.case.44248
    i64 45, label %.case.45249
    i64 46, label %.case.46250
    i64 47, label %.case.47251
    i64 48, label %.case.48252
    i64 49, label %.case.49253
    i64 50, label %.case.50254
    i64 51, label %.case.51255
    i64 52, label %.case.52256
    i64 53, label %.case.53257
    i64 54, label %.case.54258
    i64 55, label %.case.55259
    i64 56, label %.case.56260
    i64 57, label %.case.57261
    i64 58, label %.case.58262
    i64 59, label %.case.59263
    i64 60, label %.case.60264
    i64 61, label %.case.61265
    i64 62, label %.case.62266
    i64 63, label %.exit203
  ]

.default202:                                      ; preds = %4
  unreachable

.case.0204:                                       ; preds = %4
  %_0268 = call i1 @fpga_fifo_exist_8(i8* %_0137)
  br i1 %_0268, label %src.addr6.09.case.0, label %5

.case.1205:                                       ; preds = %4
  %_1269 = call i1 @fpga_fifo_exist_8(i8* %_1138)
  br i1 %_1269, label %src.addr6.09.case.1, label %5

.case.2206:                                       ; preds = %4
  %_2270 = call i1 @fpga_fifo_exist_8(i8* %_2139)
  br i1 %_2270, label %src.addr6.09.case.2, label %5

.case.3207:                                       ; preds = %4
  %_3271 = call i1 @fpga_fifo_exist_8(i8* %_3141)
  br i1 %_3271, label %src.addr6.09.case.3, label %5

.case.4208:                                       ; preds = %4
  %_4272 = call i1 @fpga_fifo_exist_8(i8* %_4142)
  br i1 %_4272, label %src.addr6.09.case.4, label %5

.case.5209:                                       ; preds = %4
  %_5273 = call i1 @fpga_fifo_exist_8(i8* %_5143)
  br i1 %_5273, label %src.addr6.09.case.5, label %5

.case.6210:                                       ; preds = %4
  %_6274 = call i1 @fpga_fifo_exist_8(i8* %_6144)
  br i1 %_6274, label %src.addr6.09.case.6, label %5

.case.7211:                                       ; preds = %4
  %_7275 = call i1 @fpga_fifo_exist_8(i8* %_7145)
  br i1 %_7275, label %src.addr6.09.case.7, label %5

.case.8212:                                       ; preds = %4
  %_8276 = call i1 @fpga_fifo_exist_8(i8* %_8146)
  br i1 %_8276, label %src.addr6.09.case.8, label %5

.case.9213:                                       ; preds = %4
  %_9277 = call i1 @fpga_fifo_exist_8(i8* %_9147)
  br i1 %_9277, label %src.addr6.09.case.9, label %5

.case.10214:                                      ; preds = %4
  %_10278 = call i1 @fpga_fifo_exist_8(i8* %_10148)
  br i1 %_10278, label %src.addr6.09.case.10, label %5

.case.11215:                                      ; preds = %4
  %_11279 = call i1 @fpga_fifo_exist_8(i8* %_11149)
  br i1 %_11279, label %src.addr6.09.case.11, label %5

.case.12216:                                      ; preds = %4
  %_12280 = call i1 @fpga_fifo_exist_8(i8* %_12150)
  br i1 %_12280, label %src.addr6.09.case.12, label %5

.case.13217:                                      ; preds = %4
  %_13281 = call i1 @fpga_fifo_exist_8(i8* %_13151)
  br i1 %_13281, label %src.addr6.09.case.13, label %5

.case.14218:                                      ; preds = %4
  %_14282 = call i1 @fpga_fifo_exist_8(i8* %_14152)
  br i1 %_14282, label %src.addr6.09.case.14, label %5

.case.15219:                                      ; preds = %4
  %_15283 = call i1 @fpga_fifo_exist_8(i8* %_15153)
  br i1 %_15283, label %src.addr6.09.case.15, label %5

.case.16220:                                      ; preds = %4
  %_16284 = call i1 @fpga_fifo_exist_8(i8* %_16154)
  br i1 %_16284, label %src.addr6.09.case.16, label %5

.case.17221:                                      ; preds = %4
  %_17285 = call i1 @fpga_fifo_exist_8(i8* %_17155)
  br i1 %_17285, label %src.addr6.09.case.17, label %5

.case.18222:                                      ; preds = %4
  %_18286 = call i1 @fpga_fifo_exist_8(i8* %_18156)
  br i1 %_18286, label %src.addr6.09.case.18, label %5

.case.19223:                                      ; preds = %4
  %_19287 = call i1 @fpga_fifo_exist_8(i8* %_19157)
  br i1 %_19287, label %src.addr6.09.case.19, label %5

.case.20224:                                      ; preds = %4
  %_20288 = call i1 @fpga_fifo_exist_8(i8* %_20158)
  br i1 %_20288, label %src.addr6.09.case.20, label %5

.case.21225:                                      ; preds = %4
  %_21289 = call i1 @fpga_fifo_exist_8(i8* %_21159)
  br i1 %_21289, label %src.addr6.09.case.21, label %5

.case.22226:                                      ; preds = %4
  %_22290 = call i1 @fpga_fifo_exist_8(i8* %_22160)
  br i1 %_22290, label %src.addr6.09.case.22, label %5

.case.23227:                                      ; preds = %4
  %_23291 = call i1 @fpga_fifo_exist_8(i8* %_23161)
  br i1 %_23291, label %src.addr6.09.case.23, label %5

.case.24228:                                      ; preds = %4
  %_24292 = call i1 @fpga_fifo_exist_8(i8* %_24162)
  br i1 %_24292, label %src.addr6.09.case.24, label %5

.case.25229:                                      ; preds = %4
  %_25293 = call i1 @fpga_fifo_exist_8(i8* %_25163)
  br i1 %_25293, label %src.addr6.09.case.25, label %5

.case.26230:                                      ; preds = %4
  %_26294 = call i1 @fpga_fifo_exist_8(i8* %_26164)
  br i1 %_26294, label %src.addr6.09.case.26, label %5

.case.27231:                                      ; preds = %4
  %_27295 = call i1 @fpga_fifo_exist_8(i8* %_27165)
  br i1 %_27295, label %src.addr6.09.case.27, label %5

.case.28232:                                      ; preds = %4
  %_28296 = call i1 @fpga_fifo_exist_8(i8* %_28166)
  br i1 %_28296, label %src.addr6.09.case.28, label %5

.case.29233:                                      ; preds = %4
  %_29297 = call i1 @fpga_fifo_exist_8(i8* %_29167)
  br i1 %_29297, label %src.addr6.09.case.29, label %5

.case.30234:                                      ; preds = %4
  %_30298 = call i1 @fpga_fifo_exist_8(i8* %_30168)
  br i1 %_30298, label %src.addr6.09.case.30, label %5

.case.31235:                                      ; preds = %4
  %_31299 = call i1 @fpga_fifo_exist_8(i8* %_31169)
  br i1 %_31299, label %src.addr6.09.case.31, label %5

.case.32236:                                      ; preds = %4
  %_32300 = call i1 @fpga_fifo_exist_8(i8* %_32170)
  br i1 %_32300, label %src.addr6.09.case.32, label %5

.case.33237:                                      ; preds = %4
  %_33301 = call i1 @fpga_fifo_exist_8(i8* %_33171)
  br i1 %_33301, label %src.addr6.09.case.33, label %5

.case.34238:                                      ; preds = %4
  %_34302 = call i1 @fpga_fifo_exist_8(i8* %_34172)
  br i1 %_34302, label %src.addr6.09.case.34, label %5

.case.35239:                                      ; preds = %4
  %_35303 = call i1 @fpga_fifo_exist_8(i8* %_35173)
  br i1 %_35303, label %src.addr6.09.case.35, label %5

.case.36240:                                      ; preds = %4
  %_36304 = call i1 @fpga_fifo_exist_8(i8* %_36174)
  br i1 %_36304, label %src.addr6.09.case.36, label %5

.case.37241:                                      ; preds = %4
  %_37305 = call i1 @fpga_fifo_exist_8(i8* %_37175)
  br i1 %_37305, label %src.addr6.09.case.37, label %5

.case.38242:                                      ; preds = %4
  %_38306 = call i1 @fpga_fifo_exist_8(i8* %_38176)
  br i1 %_38306, label %src.addr6.09.case.38, label %5

.case.39243:                                      ; preds = %4
  %_39307 = call i1 @fpga_fifo_exist_8(i8* %_39177)
  br i1 %_39307, label %src.addr6.09.case.39, label %5

.case.40244:                                      ; preds = %4
  %_40308 = call i1 @fpga_fifo_exist_8(i8* %_40178)
  br i1 %_40308, label %src.addr6.09.case.40, label %5

.case.41245:                                      ; preds = %4
  %_41309 = call i1 @fpga_fifo_exist_8(i8* %_41179)
  br i1 %_41309, label %src.addr6.09.case.41, label %5

.case.42246:                                      ; preds = %4
  %_42310 = call i1 @fpga_fifo_exist_8(i8* %_42180)
  br i1 %_42310, label %src.addr6.09.case.42, label %5

.case.43247:                                      ; preds = %4
  %_43311 = call i1 @fpga_fifo_exist_8(i8* %_43181)
  br i1 %_43311, label %src.addr6.09.case.43, label %5

.case.44248:                                      ; preds = %4
  %_44312 = call i1 @fpga_fifo_exist_8(i8* %_44182)
  br i1 %_44312, label %src.addr6.09.case.44, label %5

.case.45249:                                      ; preds = %4
  %_45313 = call i1 @fpga_fifo_exist_8(i8* %_45183)
  br i1 %_45313, label %src.addr6.09.case.45, label %5

.case.46250:                                      ; preds = %4
  %_46314 = call i1 @fpga_fifo_exist_8(i8* %_46184)
  br i1 %_46314, label %src.addr6.09.case.46, label %5

.case.47251:                                      ; preds = %4
  %_47315 = call i1 @fpga_fifo_exist_8(i8* %_47185)
  br i1 %_47315, label %src.addr6.09.case.47, label %5

.case.48252:                                      ; preds = %4
  %_48316 = call i1 @fpga_fifo_exist_8(i8* %_48186)
  br i1 %_48316, label %src.addr6.09.case.48, label %5

.case.49253:                                      ; preds = %4
  %_49317 = call i1 @fpga_fifo_exist_8(i8* %_49187)
  br i1 %_49317, label %src.addr6.09.case.49, label %5

.case.50254:                                      ; preds = %4
  %_50318 = call i1 @fpga_fifo_exist_8(i8* %_50188)
  br i1 %_50318, label %src.addr6.09.case.50, label %5

.case.51255:                                      ; preds = %4
  %_51319 = call i1 @fpga_fifo_exist_8(i8* %_51189)
  br i1 %_51319, label %src.addr6.09.case.51, label %5

.case.52256:                                      ; preds = %4
  %_52320 = call i1 @fpga_fifo_exist_8(i8* %_52190)
  br i1 %_52320, label %src.addr6.09.case.52, label %5

.case.53257:                                      ; preds = %4
  %_53321 = call i1 @fpga_fifo_exist_8(i8* %_53191)
  br i1 %_53321, label %src.addr6.09.case.53, label %5

.case.54258:                                      ; preds = %4
  %_54322 = call i1 @fpga_fifo_exist_8(i8* %_54192)
  br i1 %_54322, label %src.addr6.09.case.54, label %5

.case.55259:                                      ; preds = %4
  %_55323 = call i1 @fpga_fifo_exist_8(i8* %_55193)
  br i1 %_55323, label %src.addr6.09.case.55, label %5

.case.56260:                                      ; preds = %4
  %_56324 = call i1 @fpga_fifo_exist_8(i8* %_56194)
  br i1 %_56324, label %src.addr6.09.case.56, label %5

.case.57261:                                      ; preds = %4
  %_57325 = call i1 @fpga_fifo_exist_8(i8* %_57195)
  br i1 %_57325, label %src.addr6.09.case.57, label %5

.case.58262:                                      ; preds = %4
  %_58326 = call i1 @fpga_fifo_exist_8(i8* %_58196)
  br i1 %_58326, label %src.addr6.09.case.58, label %5

.case.59263:                                      ; preds = %4
  %_59327 = call i1 @fpga_fifo_exist_8(i8* %_59197)
  br i1 %_59327, label %src.addr6.09.case.59, label %5

.case.60264:                                      ; preds = %4
  %_60328 = call i1 @fpga_fifo_exist_8(i8* %_60198)
  br i1 %_60328, label %src.addr6.09.case.60, label %5

.case.61265:                                      ; preds = %4
  %_61329 = call i1 @fpga_fifo_exist_8(i8* %_61199)
  br i1 %_61329, label %src.addr6.09.case.61, label %5

.case.62266:                                      ; preds = %4
  %_62330 = call i1 @fpga_fifo_exist_8(i8* %_62200)
  br i1 %_62330, label %src.addr6.09.case.62, label %5

.exit203:                                         ; preds = %4
  %_63331 = call i1 @fpga_fifo_exist_8(i8* %_63201)
  br i1 %_63331, label %src.addr6.09.case.63, label %5

src.addr6.09.case.0:                              ; preds = %.case.0204
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_0)
  br label %for.loop.head1

src.addr6.09.case.1:                              ; preds = %.case.1205
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_1)
  br label %for.loop.head1

src.addr6.09.case.2:                              ; preds = %.case.2206
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_2)
  br label %for.loop.head1

src.addr6.09.case.3:                              ; preds = %.case.3207
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_3)
  br label %for.loop.head1

src.addr6.09.case.4:                              ; preds = %.case.4208
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_4)
  br label %for.loop.head1

src.addr6.09.case.5:                              ; preds = %.case.5209
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_5)
  br label %for.loop.head1

src.addr6.09.case.6:                              ; preds = %.case.6210
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_6)
  br label %for.loop.head1

src.addr6.09.case.7:                              ; preds = %.case.7211
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_7)
  br label %for.loop.head1

src.addr6.09.case.8:                              ; preds = %.case.8212
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_8)
  br label %for.loop.head1

src.addr6.09.case.9:                              ; preds = %.case.9213
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_9)
  br label %for.loop.head1

src.addr6.09.case.10:                             ; preds = %.case.10214
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_10)
  br label %for.loop.head1

src.addr6.09.case.11:                             ; preds = %.case.11215
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_11)
  br label %for.loop.head1

src.addr6.09.case.12:                             ; preds = %.case.12216
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_12)
  br label %for.loop.head1

src.addr6.09.case.13:                             ; preds = %.case.13217
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_13)
  br label %for.loop.head1

src.addr6.09.case.14:                             ; preds = %.case.14218
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_14)
  br label %for.loop.head1

src.addr6.09.case.15:                             ; preds = %.case.15219
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_15)
  br label %for.loop.head1

src.addr6.09.case.16:                             ; preds = %.case.16220
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_16)
  br label %for.loop.head1

src.addr6.09.case.17:                             ; preds = %.case.17221
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_17)
  br label %for.loop.head1

src.addr6.09.case.18:                             ; preds = %.case.18222
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_18)
  br label %for.loop.head1

src.addr6.09.case.19:                             ; preds = %.case.19223
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_19)
  br label %for.loop.head1

src.addr6.09.case.20:                             ; preds = %.case.20224
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_20)
  br label %for.loop.head1

src.addr6.09.case.21:                             ; preds = %.case.21225
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_21)
  br label %for.loop.head1

src.addr6.09.case.22:                             ; preds = %.case.22226
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_22)
  br label %for.loop.head1

src.addr6.09.case.23:                             ; preds = %.case.23227
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_23)
  br label %for.loop.head1

src.addr6.09.case.24:                             ; preds = %.case.24228
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_24)
  br label %for.loop.head1

src.addr6.09.case.25:                             ; preds = %.case.25229
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_25)
  br label %for.loop.head1

src.addr6.09.case.26:                             ; preds = %.case.26230
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_26)
  br label %for.loop.head1

src.addr6.09.case.27:                             ; preds = %.case.27231
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_27)
  br label %for.loop.head1

src.addr6.09.case.28:                             ; preds = %.case.28232
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_28)
  br label %for.loop.head1

src.addr6.09.case.29:                             ; preds = %.case.29233
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_29)
  br label %for.loop.head1

src.addr6.09.case.30:                             ; preds = %.case.30234
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_30)
  br label %for.loop.head1

src.addr6.09.case.31:                             ; preds = %.case.31235
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_31)
  br label %for.loop.head1

src.addr6.09.case.32:                             ; preds = %.case.32236
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_32)
  br label %for.loop.head1

src.addr6.09.case.33:                             ; preds = %.case.33237
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_33)
  br label %for.loop.head1

src.addr6.09.case.34:                             ; preds = %.case.34238
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_34)
  br label %for.loop.head1

src.addr6.09.case.35:                             ; preds = %.case.35239
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_35)
  br label %for.loop.head1

src.addr6.09.case.36:                             ; preds = %.case.36240
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_36)
  br label %for.loop.head1

src.addr6.09.case.37:                             ; preds = %.case.37241
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_37)
  br label %for.loop.head1

src.addr6.09.case.38:                             ; preds = %.case.38242
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_38)
  br label %for.loop.head1

src.addr6.09.case.39:                             ; preds = %.case.39243
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_39)
  br label %for.loop.head1

src.addr6.09.case.40:                             ; preds = %.case.40244
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_40)
  br label %for.loop.head1

src.addr6.09.case.41:                             ; preds = %.case.41245
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_41)
  br label %for.loop.head1

src.addr6.09.case.42:                             ; preds = %.case.42246
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_42)
  br label %for.loop.head1

src.addr6.09.case.43:                             ; preds = %.case.43247
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_43)
  br label %for.loop.head1

src.addr6.09.case.44:                             ; preds = %.case.44248
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_44)
  br label %for.loop.head1

src.addr6.09.case.45:                             ; preds = %.case.45249
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_45)
  br label %for.loop.head1

src.addr6.09.case.46:                             ; preds = %.case.46250
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_46)
  br label %for.loop.head1

src.addr6.09.case.47:                             ; preds = %.case.47251
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_47)
  br label %for.loop.head1

src.addr6.09.case.48:                             ; preds = %.case.48252
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_48)
  br label %for.loop.head1

src.addr6.09.case.49:                             ; preds = %.case.49253
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_49)
  br label %for.loop.head1

src.addr6.09.case.50:                             ; preds = %.case.50254
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_50)
  br label %for.loop.head1

src.addr6.09.case.51:                             ; preds = %.case.51255
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_51)
  br label %for.loop.head1

src.addr6.09.case.52:                             ; preds = %.case.52256
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_52)
  br label %for.loop.head1

src.addr6.09.case.53:                             ; preds = %.case.53257
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_53)
  br label %for.loop.head1

src.addr6.09.case.54:                             ; preds = %.case.54258
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_54)
  br label %for.loop.head1

src.addr6.09.case.55:                             ; preds = %.case.55259
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_55)
  br label %for.loop.head1

src.addr6.09.case.56:                             ; preds = %.case.56260
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_56)
  br label %for.loop.head1

src.addr6.09.case.57:                             ; preds = %.case.57261
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_57)
  br label %for.loop.head1

src.addr6.09.case.58:                             ; preds = %.case.58262
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_58)
  br label %for.loop.head1

src.addr6.09.case.59:                             ; preds = %.case.59263
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_59)
  br label %for.loop.head1

src.addr6.09.case.60:                             ; preds = %.case.60264
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_60)
  br label %for.loop.head1

src.addr6.09.case.61:                             ; preds = %.case.61265
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_61)
  br label %for.loop.head1

src.addr6.09.case.62:                             ; preds = %.case.62266
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_62)
  br label %for.loop.head1

src.addr6.09.case.63:                             ; preds = %.exit203
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_63)
  br label %for.loop.head1

; <label>:5:                                      ; preds = %.exit203, %.case.62266, %.case.61265, %.case.60264, %.case.59263, %.case.58262, %.case.57261, %.case.56260, %.case.55259, %.case.54258, %.case.53257, %.case.52256, %.case.51255, %.case.50254, %.case.49253, %.case.48252, %.case.47251, %.case.46250, %.case.45249, %.case.44248, %.case.43247, %.case.42246, %.case.41245, %.case.40244, %.case.39243, %.case.38242, %.case.37241, %.case.36240, %.case.35239, %.case.34238, %.case.33237, %.case.32236, %.case.31235, %.case.30234, %.case.29233, %.case.28232, %.case.27231, %.case.26230, %.case.25229, %.case.24228, %.case.23227, %.case.22226, %.case.21225, %.case.20224, %.case.19223, %.case.18222, %.case.17221, %.case.16220, %.case.15219, %.case.14218, %.case.13217, %.case.12216, %.case.11215, %.case.10214, %.case.9213, %.case.8212, %.case.7211, %.case.6210, %.case.5209, %.case.4208, %.case.3207, %.case.2206, %.case.1205, %.case.0204
  %src.addr6.0.011_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %src.addr6.0.011_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %_0332 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_0 to i8*
  %_1333 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_1 to i8*
  %_2334 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_2 to i8*
  %_3335 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_3 to i8*
  %_4336 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_4 to i8*
  %_5337 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_5 to i8*
  %_6338 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_6 to i8*
  %_7339 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_7 to i8*
  %_8340 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_8 to i8*
  %_9341 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_9 to i8*
  %_10342 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_10 to i8*
  %_11343 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_11 to i8*
  %_12344 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_12 to i8*
  %_13345 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_13 to i8*
  %_14346 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_14 to i8*
  %_15347 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_15 to i8*
  %_16348 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_16 to i8*
  %_17349 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_17 to i8*
  %_18350 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_18 to i8*
  %_19351 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_19 to i8*
  %_20352 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_20 to i8*
  %_21353 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_21 to i8*
  %_22354 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_22 to i8*
  %_23355 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_23 to i8*
  %_24356 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_24 to i8*
  %_25357 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_25 to i8*
  %_26358 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_26 to i8*
  %_27359 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_27 to i8*
  %_28360 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_28 to i8*
  %_29361 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_29 to i8*
  %_30362 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_30 to i8*
  %_31363 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_31 to i8*
  %_32364 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_32 to i8*
  %_33365 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_33 to i8*
  %_34366 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_34 to i8*
  %_35367 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_35 to i8*
  %_36368 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_36 to i8*
  %_37369 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_37 to i8*
  %_38370 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_38 to i8*
  %_39371 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_39 to i8*
  %_40372 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_40 to i8*
  %_41373 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_41 to i8*
  %_42374 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_42 to i8*
  %_43375 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_43 to i8*
  %_44376 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_44 to i8*
  %_45377 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_45 to i8*
  %_46378 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_46 to i8*
  %_47379 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_47 to i8*
  %_48380 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_48 to i8*
  %_49381 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_49 to i8*
  %_50382 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_50 to i8*
  %_51383 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_51 to i8*
  %_52384 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_52 to i8*
  %_53385 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_53 to i8*
  %_54386 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_54 to i8*
  %_55387 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_55 to i8*
  %_56388 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_56 to i8*
  %_57389 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_57 to i8*
  %_58390 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_58 to i8*
  %_59391 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_59 to i8*
  %_60392 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_60 to i8*
  %_61393 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_61 to i8*
  %_62394 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_62 to i8*
  %_63395 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_63 to i8*
  switch i64 %for.loop.idx18, label %.default396 [
    i64 0, label %.case.0398
    i64 1, label %.case.1399
    i64 2, label %.case.2400
    i64 3, label %.case.3401
    i64 4, label %.case.4402
    i64 5, label %.case.5403
    i64 6, label %.case.6404
    i64 7, label %.case.7405
    i64 8, label %.case.8406
    i64 9, label %.case.9407
    i64 10, label %.case.10408
    i64 11, label %.case.11409
    i64 12, label %.case.12410
    i64 13, label %.case.13411
    i64 14, label %.case.14412
    i64 15, label %.case.15413
    i64 16, label %.case.16414
    i64 17, label %.case.17415
    i64 18, label %.case.18416
    i64 19, label %.case.19417
    i64 20, label %.case.20418
    i64 21, label %.case.21419
    i64 22, label %.case.22420
    i64 23, label %.case.23421
    i64 24, label %.case.24422
    i64 25, label %.case.25423
    i64 26, label %.case.26424
    i64 27, label %.case.27425
    i64 28, label %.case.28426
    i64 29, label %.case.29427
    i64 30, label %.case.30428
    i64 31, label %.case.31429
    i64 32, label %.case.32430
    i64 33, label %.case.33431
    i64 34, label %.case.34432
    i64 35, label %.case.35433
    i64 36, label %.case.36434
    i64 37, label %.case.37435
    i64 38, label %.case.38436
    i64 39, label %.case.39437
    i64 40, label %.case.40438
    i64 41, label %.case.41439
    i64 42, label %.case.42440
    i64 43, label %.case.43441
    i64 44, label %.case.44442
    i64 45, label %.case.45443
    i64 46, label %.case.46444
    i64 47, label %.case.47445
    i64 48, label %.case.48446
    i64 49, label %.case.49447
    i64 50, label %.case.50448
    i64 51, label %.case.51449
    i64 52, label %.case.52450
    i64 53, label %.case.53451
    i64 54, label %.case.54452
    i64 55, label %.case.55453
    i64 56, label %.case.56454
    i64 57, label %.case.57455
    i64 58, label %.case.58456
    i64 59, label %.case.59457
    i64 60, label %.case.60458
    i64 61, label %.case.61459
    i64 62, label %.case.62460
    i64 63, label %.exit397
  ]

.default396:                                      ; preds = %5
  unreachable

.case.0398:                                       ; preds = %5
  %_0462 = call i1 @fpga_fifo_exist_8(i8* %_0332)
  br i1 %_0462, label %src.addr6.0.011.case.0, label %6

.case.1399:                                       ; preds = %5
  %_1463 = call i1 @fpga_fifo_exist_8(i8* %_1333)
  br i1 %_1463, label %src.addr6.0.011.case.1, label %6

.case.2400:                                       ; preds = %5
  %_2464 = call i1 @fpga_fifo_exist_8(i8* %_2334)
  br i1 %_2464, label %src.addr6.0.011.case.2, label %6

.case.3401:                                       ; preds = %5
  %_3465 = call i1 @fpga_fifo_exist_8(i8* %_3335)
  br i1 %_3465, label %src.addr6.0.011.case.3, label %6

.case.4402:                                       ; preds = %5
  %_4466 = call i1 @fpga_fifo_exist_8(i8* %_4336)
  br i1 %_4466, label %src.addr6.0.011.case.4, label %6

.case.5403:                                       ; preds = %5
  %_5467 = call i1 @fpga_fifo_exist_8(i8* %_5337)
  br i1 %_5467, label %src.addr6.0.011.case.5, label %6

.case.6404:                                       ; preds = %5
  %_6468 = call i1 @fpga_fifo_exist_8(i8* %_6338)
  br i1 %_6468, label %src.addr6.0.011.case.6, label %6

.case.7405:                                       ; preds = %5
  %_7469 = call i1 @fpga_fifo_exist_8(i8* %_7339)
  br i1 %_7469, label %src.addr6.0.011.case.7, label %6

.case.8406:                                       ; preds = %5
  %_8470 = call i1 @fpga_fifo_exist_8(i8* %_8340)
  br i1 %_8470, label %src.addr6.0.011.case.8, label %6

.case.9407:                                       ; preds = %5
  %_9471 = call i1 @fpga_fifo_exist_8(i8* %_9341)
  br i1 %_9471, label %src.addr6.0.011.case.9, label %6

.case.10408:                                      ; preds = %5
  %_10472 = call i1 @fpga_fifo_exist_8(i8* %_10342)
  br i1 %_10472, label %src.addr6.0.011.case.10, label %6

.case.11409:                                      ; preds = %5
  %_11473 = call i1 @fpga_fifo_exist_8(i8* %_11343)
  br i1 %_11473, label %src.addr6.0.011.case.11, label %6

.case.12410:                                      ; preds = %5
  %_12474 = call i1 @fpga_fifo_exist_8(i8* %_12344)
  br i1 %_12474, label %src.addr6.0.011.case.12, label %6

.case.13411:                                      ; preds = %5
  %_13475 = call i1 @fpga_fifo_exist_8(i8* %_13345)
  br i1 %_13475, label %src.addr6.0.011.case.13, label %6

.case.14412:                                      ; preds = %5
  %_14476 = call i1 @fpga_fifo_exist_8(i8* %_14346)
  br i1 %_14476, label %src.addr6.0.011.case.14, label %6

.case.15413:                                      ; preds = %5
  %_15477 = call i1 @fpga_fifo_exist_8(i8* %_15347)
  br i1 %_15477, label %src.addr6.0.011.case.15, label %6

.case.16414:                                      ; preds = %5
  %_16478 = call i1 @fpga_fifo_exist_8(i8* %_16348)
  br i1 %_16478, label %src.addr6.0.011.case.16, label %6

.case.17415:                                      ; preds = %5
  %_17479 = call i1 @fpga_fifo_exist_8(i8* %_17349)
  br i1 %_17479, label %src.addr6.0.011.case.17, label %6

.case.18416:                                      ; preds = %5
  %_18480 = call i1 @fpga_fifo_exist_8(i8* %_18350)
  br i1 %_18480, label %src.addr6.0.011.case.18, label %6

.case.19417:                                      ; preds = %5
  %_19481 = call i1 @fpga_fifo_exist_8(i8* %_19351)
  br i1 %_19481, label %src.addr6.0.011.case.19, label %6

.case.20418:                                      ; preds = %5
  %_20482 = call i1 @fpga_fifo_exist_8(i8* %_20352)
  br i1 %_20482, label %src.addr6.0.011.case.20, label %6

.case.21419:                                      ; preds = %5
  %_21483 = call i1 @fpga_fifo_exist_8(i8* %_21353)
  br i1 %_21483, label %src.addr6.0.011.case.21, label %6

.case.22420:                                      ; preds = %5
  %_22484 = call i1 @fpga_fifo_exist_8(i8* %_22354)
  br i1 %_22484, label %src.addr6.0.011.case.22, label %6

.case.23421:                                      ; preds = %5
  %_23485 = call i1 @fpga_fifo_exist_8(i8* %_23355)
  br i1 %_23485, label %src.addr6.0.011.case.23, label %6

.case.24422:                                      ; preds = %5
  %_24486 = call i1 @fpga_fifo_exist_8(i8* %_24356)
  br i1 %_24486, label %src.addr6.0.011.case.24, label %6

.case.25423:                                      ; preds = %5
  %_25487 = call i1 @fpga_fifo_exist_8(i8* %_25357)
  br i1 %_25487, label %src.addr6.0.011.case.25, label %6

.case.26424:                                      ; preds = %5
  %_26488 = call i1 @fpga_fifo_exist_8(i8* %_26358)
  br i1 %_26488, label %src.addr6.0.011.case.26, label %6

.case.27425:                                      ; preds = %5
  %_27489 = call i1 @fpga_fifo_exist_8(i8* %_27359)
  br i1 %_27489, label %src.addr6.0.011.case.27, label %6

.case.28426:                                      ; preds = %5
  %_28490 = call i1 @fpga_fifo_exist_8(i8* %_28360)
  br i1 %_28490, label %src.addr6.0.011.case.28, label %6

.case.29427:                                      ; preds = %5
  %_29491 = call i1 @fpga_fifo_exist_8(i8* %_29361)
  br i1 %_29491, label %src.addr6.0.011.case.29, label %6

.case.30428:                                      ; preds = %5
  %_30492 = call i1 @fpga_fifo_exist_8(i8* %_30362)
  br i1 %_30492, label %src.addr6.0.011.case.30, label %6

.case.31429:                                      ; preds = %5
  %_31493 = call i1 @fpga_fifo_exist_8(i8* %_31363)
  br i1 %_31493, label %src.addr6.0.011.case.31, label %6

.case.32430:                                      ; preds = %5
  %_32494 = call i1 @fpga_fifo_exist_8(i8* %_32364)
  br i1 %_32494, label %src.addr6.0.011.case.32, label %6

.case.33431:                                      ; preds = %5
  %_33495 = call i1 @fpga_fifo_exist_8(i8* %_33365)
  br i1 %_33495, label %src.addr6.0.011.case.33, label %6

.case.34432:                                      ; preds = %5
  %_34496 = call i1 @fpga_fifo_exist_8(i8* %_34366)
  br i1 %_34496, label %src.addr6.0.011.case.34, label %6

.case.35433:                                      ; preds = %5
  %_35497 = call i1 @fpga_fifo_exist_8(i8* %_35367)
  br i1 %_35497, label %src.addr6.0.011.case.35, label %6

.case.36434:                                      ; preds = %5
  %_36498 = call i1 @fpga_fifo_exist_8(i8* %_36368)
  br i1 %_36498, label %src.addr6.0.011.case.36, label %6

.case.37435:                                      ; preds = %5
  %_37499 = call i1 @fpga_fifo_exist_8(i8* %_37369)
  br i1 %_37499, label %src.addr6.0.011.case.37, label %6

.case.38436:                                      ; preds = %5
  %_38500 = call i1 @fpga_fifo_exist_8(i8* %_38370)
  br i1 %_38500, label %src.addr6.0.011.case.38, label %6

.case.39437:                                      ; preds = %5
  %_39501 = call i1 @fpga_fifo_exist_8(i8* %_39371)
  br i1 %_39501, label %src.addr6.0.011.case.39, label %6

.case.40438:                                      ; preds = %5
  %_40502 = call i1 @fpga_fifo_exist_8(i8* %_40372)
  br i1 %_40502, label %src.addr6.0.011.case.40, label %6

.case.41439:                                      ; preds = %5
  %_41503 = call i1 @fpga_fifo_exist_8(i8* %_41373)
  br i1 %_41503, label %src.addr6.0.011.case.41, label %6

.case.42440:                                      ; preds = %5
  %_42504 = call i1 @fpga_fifo_exist_8(i8* %_42374)
  br i1 %_42504, label %src.addr6.0.011.case.42, label %6

.case.43441:                                      ; preds = %5
  %_43505 = call i1 @fpga_fifo_exist_8(i8* %_43375)
  br i1 %_43505, label %src.addr6.0.011.case.43, label %6

.case.44442:                                      ; preds = %5
  %_44506 = call i1 @fpga_fifo_exist_8(i8* %_44376)
  br i1 %_44506, label %src.addr6.0.011.case.44, label %6

.case.45443:                                      ; preds = %5
  %_45507 = call i1 @fpga_fifo_exist_8(i8* %_45377)
  br i1 %_45507, label %src.addr6.0.011.case.45, label %6

.case.46444:                                      ; preds = %5
  %_46508 = call i1 @fpga_fifo_exist_8(i8* %_46378)
  br i1 %_46508, label %src.addr6.0.011.case.46, label %6

.case.47445:                                      ; preds = %5
  %_47509 = call i1 @fpga_fifo_exist_8(i8* %_47379)
  br i1 %_47509, label %src.addr6.0.011.case.47, label %6

.case.48446:                                      ; preds = %5
  %_48510 = call i1 @fpga_fifo_exist_8(i8* %_48380)
  br i1 %_48510, label %src.addr6.0.011.case.48, label %6

.case.49447:                                      ; preds = %5
  %_49511 = call i1 @fpga_fifo_exist_8(i8* %_49381)
  br i1 %_49511, label %src.addr6.0.011.case.49, label %6

.case.50448:                                      ; preds = %5
  %_50512 = call i1 @fpga_fifo_exist_8(i8* %_50382)
  br i1 %_50512, label %src.addr6.0.011.case.50, label %6

.case.51449:                                      ; preds = %5
  %_51513 = call i1 @fpga_fifo_exist_8(i8* %_51383)
  br i1 %_51513, label %src.addr6.0.011.case.51, label %6

.case.52450:                                      ; preds = %5
  %_52514 = call i1 @fpga_fifo_exist_8(i8* %_52384)
  br i1 %_52514, label %src.addr6.0.011.case.52, label %6

.case.53451:                                      ; preds = %5
  %_53515 = call i1 @fpga_fifo_exist_8(i8* %_53385)
  br i1 %_53515, label %src.addr6.0.011.case.53, label %6

.case.54452:                                      ; preds = %5
  %_54516 = call i1 @fpga_fifo_exist_8(i8* %_54386)
  br i1 %_54516, label %src.addr6.0.011.case.54, label %6

.case.55453:                                      ; preds = %5
  %_55517 = call i1 @fpga_fifo_exist_8(i8* %_55387)
  br i1 %_55517, label %src.addr6.0.011.case.55, label %6

.case.56454:                                      ; preds = %5
  %_56518 = call i1 @fpga_fifo_exist_8(i8* %_56388)
  br i1 %_56518, label %src.addr6.0.011.case.56, label %6

.case.57455:                                      ; preds = %5
  %_57519 = call i1 @fpga_fifo_exist_8(i8* %_57389)
  br i1 %_57519, label %src.addr6.0.011.case.57, label %6

.case.58456:                                      ; preds = %5
  %_58520 = call i1 @fpga_fifo_exist_8(i8* %_58390)
  br i1 %_58520, label %src.addr6.0.011.case.58, label %6

.case.59457:                                      ; preds = %5
  %_59521 = call i1 @fpga_fifo_exist_8(i8* %_59391)
  br i1 %_59521, label %src.addr6.0.011.case.59, label %6

.case.60458:                                      ; preds = %5
  %_60522 = call i1 @fpga_fifo_exist_8(i8* %_60392)
  br i1 %_60522, label %src.addr6.0.011.case.60, label %6

.case.61459:                                      ; preds = %5
  %_61523 = call i1 @fpga_fifo_exist_8(i8* %_61393)
  br i1 %_61523, label %src.addr6.0.011.case.61, label %6

.case.62460:                                      ; preds = %5
  %_62524 = call i1 @fpga_fifo_exist_8(i8* %_62394)
  br i1 %_62524, label %src.addr6.0.011.case.62, label %6

.exit397:                                         ; preds = %5
  %_63525 = call i1 @fpga_fifo_exist_8(i8* %_63395)
  br i1 %_63525, label %src.addr6.0.011.case.63, label %6

src.addr6.0.011.case.0:                           ; preds = %.case.0398
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_0)
  br label %for.loop.head1

src.addr6.0.011.case.1:                           ; preds = %.case.1399
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_1)
  br label %for.loop.head1

src.addr6.0.011.case.2:                           ; preds = %.case.2400
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_2)
  br label %for.loop.head1

src.addr6.0.011.case.3:                           ; preds = %.case.3401
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_3)
  br label %for.loop.head1

src.addr6.0.011.case.4:                           ; preds = %.case.4402
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_4)
  br label %for.loop.head1

src.addr6.0.011.case.5:                           ; preds = %.case.5403
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_5)
  br label %for.loop.head1

src.addr6.0.011.case.6:                           ; preds = %.case.6404
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_6)
  br label %for.loop.head1

src.addr6.0.011.case.7:                           ; preds = %.case.7405
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_7)
  br label %for.loop.head1

src.addr6.0.011.case.8:                           ; preds = %.case.8406
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_8)
  br label %for.loop.head1

src.addr6.0.011.case.9:                           ; preds = %.case.9407
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_9)
  br label %for.loop.head1

src.addr6.0.011.case.10:                          ; preds = %.case.10408
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_10)
  br label %for.loop.head1

src.addr6.0.011.case.11:                          ; preds = %.case.11409
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_11)
  br label %for.loop.head1

src.addr6.0.011.case.12:                          ; preds = %.case.12410
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_12)
  br label %for.loop.head1

src.addr6.0.011.case.13:                          ; preds = %.case.13411
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_13)
  br label %for.loop.head1

src.addr6.0.011.case.14:                          ; preds = %.case.14412
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_14)
  br label %for.loop.head1

src.addr6.0.011.case.15:                          ; preds = %.case.15413
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_15)
  br label %for.loop.head1

src.addr6.0.011.case.16:                          ; preds = %.case.16414
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_16)
  br label %for.loop.head1

src.addr6.0.011.case.17:                          ; preds = %.case.17415
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_17)
  br label %for.loop.head1

src.addr6.0.011.case.18:                          ; preds = %.case.18416
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_18)
  br label %for.loop.head1

src.addr6.0.011.case.19:                          ; preds = %.case.19417
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_19)
  br label %for.loop.head1

src.addr6.0.011.case.20:                          ; preds = %.case.20418
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_20)
  br label %for.loop.head1

src.addr6.0.011.case.21:                          ; preds = %.case.21419
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_21)
  br label %for.loop.head1

src.addr6.0.011.case.22:                          ; preds = %.case.22420
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_22)
  br label %for.loop.head1

src.addr6.0.011.case.23:                          ; preds = %.case.23421
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_23)
  br label %for.loop.head1

src.addr6.0.011.case.24:                          ; preds = %.case.24422
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_24)
  br label %for.loop.head1

src.addr6.0.011.case.25:                          ; preds = %.case.25423
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_25)
  br label %for.loop.head1

src.addr6.0.011.case.26:                          ; preds = %.case.26424
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_26)
  br label %for.loop.head1

src.addr6.0.011.case.27:                          ; preds = %.case.27425
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_27)
  br label %for.loop.head1

src.addr6.0.011.case.28:                          ; preds = %.case.28426
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_28)
  br label %for.loop.head1

src.addr6.0.011.case.29:                          ; preds = %.case.29427
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_29)
  br label %for.loop.head1

src.addr6.0.011.case.30:                          ; preds = %.case.30428
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_30)
  br label %for.loop.head1

src.addr6.0.011.case.31:                          ; preds = %.case.31429
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_31)
  br label %for.loop.head1

src.addr6.0.011.case.32:                          ; preds = %.case.32430
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_32)
  br label %for.loop.head1

src.addr6.0.011.case.33:                          ; preds = %.case.33431
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_33)
  br label %for.loop.head1

src.addr6.0.011.case.34:                          ; preds = %.case.34432
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_34)
  br label %for.loop.head1

src.addr6.0.011.case.35:                          ; preds = %.case.35433
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_35)
  br label %for.loop.head1

src.addr6.0.011.case.36:                          ; preds = %.case.36434
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_36)
  br label %for.loop.head1

src.addr6.0.011.case.37:                          ; preds = %.case.37435
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_37)
  br label %for.loop.head1

src.addr6.0.011.case.38:                          ; preds = %.case.38436
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_38)
  br label %for.loop.head1

src.addr6.0.011.case.39:                          ; preds = %.case.39437
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_39)
  br label %for.loop.head1

src.addr6.0.011.case.40:                          ; preds = %.case.40438
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_40)
  br label %for.loop.head1

src.addr6.0.011.case.41:                          ; preds = %.case.41439
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_41)
  br label %for.loop.head1

src.addr6.0.011.case.42:                          ; preds = %.case.42440
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_42)
  br label %for.loop.head1

src.addr6.0.011.case.43:                          ; preds = %.case.43441
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_43)
  br label %for.loop.head1

src.addr6.0.011.case.44:                          ; preds = %.case.44442
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_44)
  br label %for.loop.head1

src.addr6.0.011.case.45:                          ; preds = %.case.45443
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_45)
  br label %for.loop.head1

src.addr6.0.011.case.46:                          ; preds = %.case.46444
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_46)
  br label %for.loop.head1

src.addr6.0.011.case.47:                          ; preds = %.case.47445
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_47)
  br label %for.loop.head1

src.addr6.0.011.case.48:                          ; preds = %.case.48446
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_48)
  br label %for.loop.head1

src.addr6.0.011.case.49:                          ; preds = %.case.49447
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_49)
  br label %for.loop.head1

src.addr6.0.011.case.50:                          ; preds = %.case.50448
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_50)
  br label %for.loop.head1

src.addr6.0.011.case.51:                          ; preds = %.case.51449
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_51)
  br label %for.loop.head1

src.addr6.0.011.case.52:                          ; preds = %.case.52450
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_52)
  br label %for.loop.head1

src.addr6.0.011.case.53:                          ; preds = %.case.53451
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_53)
  br label %for.loop.head1

src.addr6.0.011.case.54:                          ; preds = %.case.54452
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_54)
  br label %for.loop.head1

src.addr6.0.011.case.55:                          ; preds = %.case.55453
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_55)
  br label %for.loop.head1

src.addr6.0.011.case.56:                          ; preds = %.case.56454
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_56)
  br label %for.loop.head1

src.addr6.0.011.case.57:                          ; preds = %.case.57455
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_57)
  br label %for.loop.head1

src.addr6.0.011.case.58:                          ; preds = %.case.58456
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_58)
  br label %for.loop.head1

src.addr6.0.011.case.59:                          ; preds = %.case.59457
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_59)
  br label %for.loop.head1

src.addr6.0.011.case.60:                          ; preds = %.case.60458
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_60)
  br label %for.loop.head1

src.addr6.0.011.case.61:                          ; preds = %.case.61459
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_61)
  br label %for.loop.head1

src.addr6.0.011.case.62:                          ; preds = %.case.62460
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_62)
  br label %for.loop.head1

src.addr6.0.011.case.63:                          ; preds = %.exit397
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_63)
  br label %for.loop.head1

; <label>:6:                                      ; preds = %.exit397, %.case.62460, %.case.61459, %.case.60458, %.case.59457, %.case.58456, %.case.57455, %.case.56454, %.case.55453, %.case.54452, %.case.53451, %.case.52450, %.case.51449, %.case.50448, %.case.49447, %.case.48446, %.case.47445, %.case.46444, %.case.45443, %.case.44442, %.case.43441, %.case.42440, %.case.41439, %.case.40438, %.case.39437, %.case.38436, %.case.37435, %.case.36434, %.case.35433, %.case.34432, %.case.33431, %.case.32430, %.case.31429, %.case.30428, %.case.29427, %.case.28426, %.case.27425, %.case.26424, %.case.25423, %.case.24422, %.case.23421, %.case.22420, %.case.21419, %.case.20418, %.case.19417, %.case.18416, %.case.17415, %.case.16414, %.case.15413, %.case.14412, %.case.13411, %.case.12410, %.case.11409, %.case.10408, %.case.9407, %.case.8406, %.case.7405, %.case.6404, %.case.5403, %.case.4402, %.case.3401, %.case.2400, %.case.1399, %.case.0398
  %dst.addr5.0.0.014.gep15 = getelementptr [64 x [4096 x %struct.ap_uint.6]], [64 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %7 = bitcast i64* %dst.addr5.0.0.014.gep15 to i8*
  %src.addr6.0.0.013.gep16_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_8 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_8, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_9 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_9, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_10 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_10, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_11 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_11, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_12 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_12, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_13 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_13, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_14 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_14, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_15 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_15, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_16 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_16, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_17 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_17, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_18 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_18, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_19 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_19, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_20 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_20, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_21 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_21, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_22 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_22, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_23 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_23, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_24 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_24, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_25 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_25, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_26 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_26, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_27 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_27, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_28 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_28, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_29 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_29, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_30 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_30, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_31 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_31, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_32 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_32, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_33 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_33, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_34 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_34, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_35 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_35, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_36 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_36, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_37 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_37, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_38 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_38, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_39 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_39, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_40 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_40, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_41 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_41, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_42 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_42, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_43 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_43, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_44 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_44, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_45 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_45, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_46 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_46, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_47 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_47, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_48 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_48, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_49 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_49, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_50 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_50, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_51 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_51, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_52 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_52, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_53 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_53, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_54 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_54, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_55 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_55, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_56 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_56, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_57 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_57, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_58 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_58, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_59 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_59, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_60 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_60, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_61 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_61, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_62 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_62, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %src.addr6.0.0.013.gep16_63 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_63, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_0526 = bitcast i64* %src.addr6.0.0.013.gep16_0 to i8*
  %_1527 = bitcast i64* %src.addr6.0.0.013.gep16_1 to i8*
  %_2528 = bitcast i64* %src.addr6.0.0.013.gep16_2 to i8*
  %_3529 = bitcast i64* %src.addr6.0.0.013.gep16_3 to i8*
  %_4530 = bitcast i64* %src.addr6.0.0.013.gep16_4 to i8*
  %_5531 = bitcast i64* %src.addr6.0.0.013.gep16_5 to i8*
  %_6532 = bitcast i64* %src.addr6.0.0.013.gep16_6 to i8*
  %_7533 = bitcast i64* %src.addr6.0.0.013.gep16_7 to i8*
  %_8534 = bitcast i64* %src.addr6.0.0.013.gep16_8 to i8*
  %_9535 = bitcast i64* %src.addr6.0.0.013.gep16_9 to i8*
  %_10536 = bitcast i64* %src.addr6.0.0.013.gep16_10 to i8*
  %_11537 = bitcast i64* %src.addr6.0.0.013.gep16_11 to i8*
  %_12538 = bitcast i64* %src.addr6.0.0.013.gep16_12 to i8*
  %_13539 = bitcast i64* %src.addr6.0.0.013.gep16_13 to i8*
  %_14540 = bitcast i64* %src.addr6.0.0.013.gep16_14 to i8*
  %_15541 = bitcast i64* %src.addr6.0.0.013.gep16_15 to i8*
  %_16542 = bitcast i64* %src.addr6.0.0.013.gep16_16 to i8*
  %_17543 = bitcast i64* %src.addr6.0.0.013.gep16_17 to i8*
  %_18544 = bitcast i64* %src.addr6.0.0.013.gep16_18 to i8*
  %_19545 = bitcast i64* %src.addr6.0.0.013.gep16_19 to i8*
  %_20546 = bitcast i64* %src.addr6.0.0.013.gep16_20 to i8*
  %_21547 = bitcast i64* %src.addr6.0.0.013.gep16_21 to i8*
  %_22548 = bitcast i64* %src.addr6.0.0.013.gep16_22 to i8*
  %_23549 = bitcast i64* %src.addr6.0.0.013.gep16_23 to i8*
  %_24550 = bitcast i64* %src.addr6.0.0.013.gep16_24 to i8*
  %_25551 = bitcast i64* %src.addr6.0.0.013.gep16_25 to i8*
  %_26552 = bitcast i64* %src.addr6.0.0.013.gep16_26 to i8*
  %_27553 = bitcast i64* %src.addr6.0.0.013.gep16_27 to i8*
  %_28554 = bitcast i64* %src.addr6.0.0.013.gep16_28 to i8*
  %_29555 = bitcast i64* %src.addr6.0.0.013.gep16_29 to i8*
  %_30556 = bitcast i64* %src.addr6.0.0.013.gep16_30 to i8*
  %_31557 = bitcast i64* %src.addr6.0.0.013.gep16_31 to i8*
  %_32558 = bitcast i64* %src.addr6.0.0.013.gep16_32 to i8*
  %_33559 = bitcast i64* %src.addr6.0.0.013.gep16_33 to i8*
  %_34560 = bitcast i64* %src.addr6.0.0.013.gep16_34 to i8*
  %_35561 = bitcast i64* %src.addr6.0.0.013.gep16_35 to i8*
  %_36562 = bitcast i64* %src.addr6.0.0.013.gep16_36 to i8*
  %_37563 = bitcast i64* %src.addr6.0.0.013.gep16_37 to i8*
  %_38564 = bitcast i64* %src.addr6.0.0.013.gep16_38 to i8*
  %_39565 = bitcast i64* %src.addr6.0.0.013.gep16_39 to i8*
  %_40566 = bitcast i64* %src.addr6.0.0.013.gep16_40 to i8*
  %_41567 = bitcast i64* %src.addr6.0.0.013.gep16_41 to i8*
  %_42568 = bitcast i64* %src.addr6.0.0.013.gep16_42 to i8*
  %_43569 = bitcast i64* %src.addr6.0.0.013.gep16_43 to i8*
  %_44570 = bitcast i64* %src.addr6.0.0.013.gep16_44 to i8*
  %_45571 = bitcast i64* %src.addr6.0.0.013.gep16_45 to i8*
  %_46572 = bitcast i64* %src.addr6.0.0.013.gep16_46 to i8*
  %_47573 = bitcast i64* %src.addr6.0.0.013.gep16_47 to i8*
  %_48574 = bitcast i64* %src.addr6.0.0.013.gep16_48 to i8*
  %_49575 = bitcast i64* %src.addr6.0.0.013.gep16_49 to i8*
  %_50576 = bitcast i64* %src.addr6.0.0.013.gep16_50 to i8*
  %_51577 = bitcast i64* %src.addr6.0.0.013.gep16_51 to i8*
  %_52578 = bitcast i64* %src.addr6.0.0.013.gep16_52 to i8*
  %_53579 = bitcast i64* %src.addr6.0.0.013.gep16_53 to i8*
  %_54580 = bitcast i64* %src.addr6.0.0.013.gep16_54 to i8*
  %_55581 = bitcast i64* %src.addr6.0.0.013.gep16_55 to i8*
  %_56582 = bitcast i64* %src.addr6.0.0.013.gep16_56 to i8*
  %_57583 = bitcast i64* %src.addr6.0.0.013.gep16_57 to i8*
  %_58584 = bitcast i64* %src.addr6.0.0.013.gep16_58 to i8*
  %_59585 = bitcast i64* %src.addr6.0.0.013.gep16_59 to i8*
  %_60586 = bitcast i64* %src.addr6.0.0.013.gep16_60 to i8*
  %_61587 = bitcast i64* %src.addr6.0.0.013.gep16_61 to i8*
  %_62588 = bitcast i64* %src.addr6.0.0.013.gep16_62 to i8*
  %_63589 = bitcast i64* %src.addr6.0.0.013.gep16_63 to i8*
  switch i64 %for.loop.idx18, label %.default590 [
    i64 0, label %.case.0592
    i64 1, label %.case.1593
    i64 2, label %.case.2594
    i64 3, label %.case.3595
    i64 4, label %.case.4596
    i64 5, label %.case.5597
    i64 6, label %.case.6598
    i64 7, label %.case.7599
    i64 8, label %.case.8600
    i64 9, label %.case.9601
    i64 10, label %.case.10602
    i64 11, label %.case.11603
    i64 12, label %.case.12604
    i64 13, label %.case.13605
    i64 14, label %.case.14606
    i64 15, label %.case.15607
    i64 16, label %.case.16608
    i64 17, label %.case.17609
    i64 18, label %.case.18610
    i64 19, label %.case.19611
    i64 20, label %.case.20612
    i64 21, label %.case.21613
    i64 22, label %.case.22614
    i64 23, label %.case.23615
    i64 24, label %.case.24616
    i64 25, label %.case.25617
    i64 26, label %.case.26618
    i64 27, label %.case.27619
    i64 28, label %.case.28620
    i64 29, label %.case.29621
    i64 30, label %.case.30622
    i64 31, label %.case.31623
    i64 32, label %.case.32624
    i64 33, label %.case.33625
    i64 34, label %.case.34626
    i64 35, label %.case.35627
    i64 36, label %.case.36628
    i64 37, label %.case.37629
    i64 38, label %.case.38630
    i64 39, label %.case.39631
    i64 40, label %.case.40632
    i64 41, label %.case.41633
    i64 42, label %.case.42634
    i64 43, label %.case.43635
    i64 44, label %.case.44636
    i64 45, label %.case.45637
    i64 46, label %.case.46638
    i64 47, label %.case.47639
    i64 48, label %.case.48640
    i64 49, label %.case.49641
    i64 50, label %.case.50642
    i64 51, label %.case.51643
    i64 52, label %.case.52644
    i64 53, label %.case.53645
    i64 54, label %.case.54646
    i64 55, label %.case.55647
    i64 56, label %.case.56648
    i64 57, label %.case.57649
    i64 58, label %.case.58650
    i64 59, label %.case.59651
    i64 60, label %.case.60652
    i64 61, label %.case.61653
    i64 62, label %.case.62654
    i64 63, label %.case.63655
  ]

.default590:                                      ; preds = %6
  unreachable

.case.0592:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_0526, i64 8, i1 false)
  br label %for.loop.head1

.case.1593:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_1527, i64 8, i1 false)
  br label %for.loop.head1

.case.2594:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_2528, i64 8, i1 false)
  br label %for.loop.head1

.case.3595:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_3529, i64 8, i1 false)
  br label %for.loop.head1

.case.4596:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_4530, i64 8, i1 false)
  br label %for.loop.head1

.case.5597:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_5531, i64 8, i1 false)
  br label %for.loop.head1

.case.6598:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_6532, i64 8, i1 false)
  br label %for.loop.head1

.case.7599:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_7533, i64 8, i1 false)
  br label %for.loop.head1

.case.8600:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_8534, i64 8, i1 false)
  br label %for.loop.head1

.case.9601:                                       ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_9535, i64 8, i1 false)
  br label %for.loop.head1

.case.10602:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_10536, i64 8, i1 false)
  br label %for.loop.head1

.case.11603:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_11537, i64 8, i1 false)
  br label %for.loop.head1

.case.12604:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_12538, i64 8, i1 false)
  br label %for.loop.head1

.case.13605:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_13539, i64 8, i1 false)
  br label %for.loop.head1

.case.14606:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_14540, i64 8, i1 false)
  br label %for.loop.head1

.case.15607:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_15541, i64 8, i1 false)
  br label %for.loop.head1

.case.16608:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_16542, i64 8, i1 false)
  br label %for.loop.head1

.case.17609:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_17543, i64 8, i1 false)
  br label %for.loop.head1

.case.18610:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_18544, i64 8, i1 false)
  br label %for.loop.head1

.case.19611:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_19545, i64 8, i1 false)
  br label %for.loop.head1

.case.20612:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_20546, i64 8, i1 false)
  br label %for.loop.head1

.case.21613:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_21547, i64 8, i1 false)
  br label %for.loop.head1

.case.22614:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_22548, i64 8, i1 false)
  br label %for.loop.head1

.case.23615:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_23549, i64 8, i1 false)
  br label %for.loop.head1

.case.24616:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_24550, i64 8, i1 false)
  br label %for.loop.head1

.case.25617:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_25551, i64 8, i1 false)
  br label %for.loop.head1

.case.26618:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_26552, i64 8, i1 false)
  br label %for.loop.head1

.case.27619:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_27553, i64 8, i1 false)
  br label %for.loop.head1

.case.28620:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_28554, i64 8, i1 false)
  br label %for.loop.head1

.case.29621:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_29555, i64 8, i1 false)
  br label %for.loop.head1

.case.30622:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_30556, i64 8, i1 false)
  br label %for.loop.head1

.case.31623:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_31557, i64 8, i1 false)
  br label %for.loop.head1

.case.32624:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_32558, i64 8, i1 false)
  br label %for.loop.head1

.case.33625:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_33559, i64 8, i1 false)
  br label %for.loop.head1

.case.34626:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_34560, i64 8, i1 false)
  br label %for.loop.head1

.case.35627:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_35561, i64 8, i1 false)
  br label %for.loop.head1

.case.36628:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_36562, i64 8, i1 false)
  br label %for.loop.head1

.case.37629:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_37563, i64 8, i1 false)
  br label %for.loop.head1

.case.38630:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_38564, i64 8, i1 false)
  br label %for.loop.head1

.case.39631:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_39565, i64 8, i1 false)
  br label %for.loop.head1

.case.40632:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_40566, i64 8, i1 false)
  br label %for.loop.head1

.case.41633:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_41567, i64 8, i1 false)
  br label %for.loop.head1

.case.42634:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_42568, i64 8, i1 false)
  br label %for.loop.head1

.case.43635:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_43569, i64 8, i1 false)
  br label %for.loop.head1

.case.44636:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_44570, i64 8, i1 false)
  br label %for.loop.head1

.case.45637:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_45571, i64 8, i1 false)
  br label %for.loop.head1

.case.46638:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_46572, i64 8, i1 false)
  br label %for.loop.head1

.case.47639:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_47573, i64 8, i1 false)
  br label %for.loop.head1

.case.48640:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_48574, i64 8, i1 false)
  br label %for.loop.head1

.case.49641:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_49575, i64 8, i1 false)
  br label %for.loop.head1

.case.50642:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_50576, i64 8, i1 false)
  br label %for.loop.head1

.case.51643:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_51577, i64 8, i1 false)
  br label %for.loop.head1

.case.52644:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_52578, i64 8, i1 false)
  br label %for.loop.head1

.case.53645:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_53579, i64 8, i1 false)
  br label %for.loop.head1

.case.54646:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_54580, i64 8, i1 false)
  br label %for.loop.head1

.case.55647:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_55581, i64 8, i1 false)
  br label %for.loop.head1

.case.56648:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_56582, i64 8, i1 false)
  br label %for.loop.head1

.case.57649:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_57583, i64 8, i1 false)
  br label %for.loop.head1

.case.58650:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_58584, i64 8, i1 false)
  br label %for.loop.head1

.case.59651:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_59585, i64 8, i1 false)
  br label %for.loop.head1

.case.60652:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_60586, i64 8, i1 false)
  br label %for.loop.head1

.case.61653:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_61587, i64 8, i1 false)
  br label %for.loop.head1

.case.62654:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_62588, i64 8, i1 false)
  br label %for.loop.head1

.case.63655:                                      ; preds = %6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_63589, i64 8, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.63655, %.case.62654, %.case.61653, %.case.60652, %.case.59651, %.case.58650, %.case.57649, %.case.56648, %.case.55647, %.case.54646, %.case.53645, %.case.52644, %.case.51643, %.case.50642, %.case.49641, %.case.48640, %.case.47639, %.case.46638, %.case.45637, %.case.44636, %.case.43635, %.case.42634, %.case.41633, %.case.40632, %.case.39631, %.case.38630, %.case.37629, %.case.36628, %.case.35627, %.case.34626, %.case.33625, %.case.32624, %.case.31623, %.case.30622, %.case.29621, %.case.28620, %.case.27619, %.case.26618, %.case.25617, %.case.24616, %.case.23615, %.case.22614, %.case.21613, %.case.20612, %.case.19611, %.case.18610, %.case.17609, %.case.16608, %.case.15607, %.case.14606, %.case.13605, %.case.12604, %.case.11603, %.case.10602, %.case.9601, %.case.8600, %.case.7599, %.case.6598, %.case.5597, %.case.4596, %.case.3595, %.case.2594, %.case.1593, %.case.0592, %src.addr6.0.011.case.63, %src.addr6.0.011.case.62, %src.addr6.0.011.case.61, %src.addr6.0.011.case.60, %src.addr6.0.011.case.59, %src.addr6.0.011.case.58, %src.addr6.0.011.case.57, %src.addr6.0.011.case.56, %src.addr6.0.011.case.55, %src.addr6.0.011.case.54, %src.addr6.0.011.case.53, %src.addr6.0.011.case.52, %src.addr6.0.011.case.51, %src.addr6.0.011.case.50, %src.addr6.0.011.case.49, %src.addr6.0.011.case.48, %src.addr6.0.011.case.47, %src.addr6.0.011.case.46, %src.addr6.0.011.case.45, %src.addr6.0.011.case.44, %src.addr6.0.011.case.43, %src.addr6.0.011.case.42, %src.addr6.0.011.case.41, %src.addr6.0.011.case.40, %src.addr6.0.011.case.39, %src.addr6.0.011.case.38, %src.addr6.0.011.case.37, %src.addr6.0.011.case.36, %src.addr6.0.011.case.35, %src.addr6.0.011.case.34, %src.addr6.0.011.case.33, %src.addr6.0.011.case.32, %src.addr6.0.011.case.31, %src.addr6.0.011.case.30, %src.addr6.0.011.case.29, %src.addr6.0.011.case.28, %src.addr6.0.011.case.27, %src.addr6.0.011.case.26, %src.addr6.0.011.case.25, %src.addr6.0.011.case.24, %src.addr6.0.011.case.23, %src.addr6.0.011.case.22, %src.addr6.0.011.case.21, %src.addr6.0.011.case.20, %src.addr6.0.011.case.19, %src.addr6.0.011.case.18, %src.addr6.0.011.case.17, %src.addr6.0.011.case.16, %src.addr6.0.011.case.15, %src.addr6.0.011.case.14, %src.addr6.0.011.case.13, %src.addr6.0.011.case.12, %src.addr6.0.011.case.11, %src.addr6.0.011.case.10, %src.addr6.0.011.case.9, %src.addr6.0.011.case.8, %src.addr6.0.011.case.7, %src.addr6.0.011.case.6, %src.addr6.0.011.case.5, %src.addr6.0.011.case.4, %src.addr6.0.011.case.3, %src.addr6.0.011.case.2, %src.addr6.0.011.case.1, %src.addr6.0.011.case.0, %src.addr6.09.case.63, %src.addr6.09.case.62, %src.addr6.09.case.61, %src.addr6.09.case.60, %src.addr6.09.case.59, %src.addr6.09.case.58, %src.addr6.09.case.57, %src.addr6.09.case.56, %src.addr6.09.case.55, %src.addr6.09.case.54, %src.addr6.09.case.53, %src.addr6.09.case.52, %src.addr6.09.case.51, %src.addr6.09.case.50, %src.addr6.09.case.49, %src.addr6.09.case.48, %src.addr6.09.case.47, %src.addr6.09.case.46, %src.addr6.09.case.45, %src.addr6.09.case.44, %src.addr6.09.case.43, %src.addr6.09.case.42, %src.addr6.09.case.41, %src.addr6.09.case.40, %src.addr6.09.case.39, %src.addr6.09.case.38, %src.addr6.09.case.37, %src.addr6.09.case.36, %src.addr6.09.case.35, %src.addr6.09.case.34, %src.addr6.09.case.33, %src.addr6.09.case.32, %src.addr6.09.case.31, %src.addr6.09.case.30, %src.addr6.09.case.29, %src.addr6.09.case.28, %src.addr6.09.case.27, %src.addr6.09.case.26, %src.addr6.09.case.25, %src.addr6.09.case.24, %src.addr6.09.case.23, %src.addr6.09.case.22, %src.addr6.09.case.21, %src.addr6.09.case.20, %src.addr6.09.case.19, %src.addr6.09.case.18, %src.addr6.09.case.17, %src.addr6.09.case.16, %src.addr6.09.case.15, %src.addr6.09.case.14, %src.addr6.09.case.13, %src.addr6.09.case.12, %src.addr6.09.case.11, %src.addr6.09.case.10, %src.addr6.09.case.9, %src.addr6.09.case.8, %src.addr6.09.case.7, %src.addr6.09.case.6, %src.addr6.09.case.5, %src.addr6.09.case.4, %src.addr6.09.case.3, %src.addr6.09.case.2, %src.addr6.09.case.1, %src.addr6.09.case.0, %src.addr68.case.63, %src.addr68.case.62, %src.addr68.case.61, %src.addr68.case.60, %src.addr68.case.59, %src.addr68.case.58, %src.addr68.case.57, %src.addr68.case.56, %src.addr68.case.55, %src.addr68.case.54, %src.addr68.case.53, %src.addr68.case.52, %src.addr68.case.51, %src.addr68.case.50, %src.addr68.case.49, %src.addr68.case.48, %src.addr68.case.47, %src.addr68.case.46, %src.addr68.case.45, %src.addr68.case.44, %src.addr68.case.43, %src.addr68.case.42, %src.addr68.case.41, %src.addr68.case.40, %src.addr68.case.39, %src.addr68.case.38, %src.addr68.case.37, %src.addr68.case.36, %src.addr68.case.35, %src.addr68.case.34, %src.addr68.case.33, %src.addr68.case.32, %src.addr68.case.31, %src.addr68.case.30, %src.addr68.case.29, %src.addr68.case.28, %src.addr68.case.27, %src.addr68.case.26, %src.addr68.case.25, %src.addr68.case.24, %src.addr68.case.23, %src.addr68.case.22, %src.addr68.case.21, %src.addr68.case.20, %src.addr68.case.19, %src.addr68.case.18, %src.addr68.case.17, %src.addr68.case.16, %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 64
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_out(i64* "orig.arg.no"="0", i64* noalias readonly align 512 "orig.arg.no"="1", i64* "orig.arg.no"="2", i64* noalias readonly align 512 "orig.arg.no"="3", %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", %"class.hls::stream"* "orig.arg.no"="6", %"class.hls::stream"* noalias align 512 "orig.arg.no"="7", %"class.hls::stream.9"* "orig.arg.no"="8", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="9", i16* "orig.arg.no"="10", i16* noalias readonly align 512 "orig.arg.no"="11", i1* "orig.arg.no"="12", i1* noalias readonly align 512 "orig.arg.no"="13", i1* "orig.arg.no"="14", i1* noalias readonly align 512 "orig.arg.no"="15", %"class.hls::stream.9"* "orig.arg.no"="16", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="17", %"class.hls::stream.9"* "orig.arg.no"="18", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="19", %"class.hls::stream.9"* "orig.arg.no"="20", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="21", %"class.hls::stream.9"* "orig.arg.no"="22", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="23", i16* "orig.arg.no"="24", i16* noalias readonly align 512 "orig.arg.no"="25", i32* "orig.arg.no"="26", i32* noalias readonly align 512 "orig.arg.no"="27", i1* "orig.arg.no"="28", i1* noalias readonly align 512 "orig.arg.no"="29", [64 x [4096 x %struct.ap_uint.6]]* "orig.arg.no"="30", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_7, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_8, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_9, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_10, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_11, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_12, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_13, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_14, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_15, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_16, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_17, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_18, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_19, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_20, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_21, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_22, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_23, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_24, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_25, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_26, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_27, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_28, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_29, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_30, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_31, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_32, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_33, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_34, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_35, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_36, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_37, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_38, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_39, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_40, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_41, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_42, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_43, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_44, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_45, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_46, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_47, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_48, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_49, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_50, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_51, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_52, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_53, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_54, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_55, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_56, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_57, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_58, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_59, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_60, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_61, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_62, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_63) #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i64(i64* %0, i64* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %2, i64* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %4, %"class.hls::stream"* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream"(%"class.hls::stream"* %6, %"class.hls::stream"* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %8, %"class.hls::stream.9"* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %10, i16* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %12, i1* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %14, i1* align 512 %15)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %16, %"class.hls::stream.9"* align 512 %17)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %18, %"class.hls::stream.9"* align 512 %19)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %20, %"class.hls::stream.9"* align 512 %21)
  call fastcc void @"onebyonecpy_hls.p0class.hls::stream.9"(%"class.hls::stream.9"* %22, %"class.hls::stream.9"* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %24, i16* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %28, i1* align 512 %29)
  call void @onebyonecpy_hls.p0a64a4096struct.ap_uint.6.45.52([64 x [4096 x %struct.ap_uint.6]]* %30, [4096 x %struct.ap_uint.6]* %_0, [4096 x %struct.ap_uint.6]* %_1, [4096 x %struct.ap_uint.6]* %_2, [4096 x %struct.ap_uint.6]* %_3, [4096 x %struct.ap_uint.6]* %_4, [4096 x %struct.ap_uint.6]* %_5, [4096 x %struct.ap_uint.6]* %_6, [4096 x %struct.ap_uint.6]* %_7, [4096 x %struct.ap_uint.6]* %_8, [4096 x %struct.ap_uint.6]* %_9, [4096 x %struct.ap_uint.6]* %_10, [4096 x %struct.ap_uint.6]* %_11, [4096 x %struct.ap_uint.6]* %_12, [4096 x %struct.ap_uint.6]* %_13, [4096 x %struct.ap_uint.6]* %_14, [4096 x %struct.ap_uint.6]* %_15, [4096 x %struct.ap_uint.6]* %_16, [4096 x %struct.ap_uint.6]* %_17, [4096 x %struct.ap_uint.6]* %_18, [4096 x %struct.ap_uint.6]* %_19, [4096 x %struct.ap_uint.6]* %_20, [4096 x %struct.ap_uint.6]* %_21, [4096 x %struct.ap_uint.6]* %_22, [4096 x %struct.ap_uint.6]* %_23, [4096 x %struct.ap_uint.6]* %_24, [4096 x %struct.ap_uint.6]* %_25, [4096 x %struct.ap_uint.6]* %_26, [4096 x %struct.ap_uint.6]* %_27, [4096 x %struct.ap_uint.6]* %_28, [4096 x %struct.ap_uint.6]* %_29, [4096 x %struct.ap_uint.6]* %_30, [4096 x %struct.ap_uint.6]* %_31, [4096 x %struct.ap_uint.6]* %_32, [4096 x %struct.ap_uint.6]* %_33, [4096 x %struct.ap_uint.6]* %_34, [4096 x %struct.ap_uint.6]* %_35, [4096 x %struct.ap_uint.6]* %_36, [4096 x %struct.ap_uint.6]* %_37, [4096 x %struct.ap_uint.6]* %_38, [4096 x %struct.ap_uint.6]* %_39, [4096 x %struct.ap_uint.6]* %_40, [4096 x %struct.ap_uint.6]* %_41, [4096 x %struct.ap_uint.6]* %_42, [4096 x %struct.ap_uint.6]* %_43, [4096 x %struct.ap_uint.6]* %_44, [4096 x %struct.ap_uint.6]* %_45, [4096 x %struct.ap_uint.6]* %_46, [4096 x %struct.ap_uint.6]* %_47, [4096 x %struct.ap_uint.6]* %_48, [4096 x %struct.ap_uint.6]* %_49, [4096 x %struct.ap_uint.6]* %_50, [4096 x %struct.ap_uint.6]* %_51, [4096 x %struct.ap_uint.6]* %_52, [4096 x %struct.ap_uint.6]* %_53, [4096 x %struct.ap_uint.6]* %_54, [4096 x %struct.ap_uint.6]* %_55, [4096 x %struct.ap_uint.6]* %_56, [4096 x %struct.ap_uint.6]* %_57, [4096 x %struct.ap_uint.6]* %_58, [4096 x %struct.ap_uint.6]* %_59, [4096 x %struct.ap_uint.6]* %_60, [4096 x %struct.ap_uint.6]* %_61, [4096 x %struct.ap_uint.6]* %_62, [4096 x %struct.ap_uint.6]* %_63)
  ret void
}

declare void @apatb_BFS_Scatter_hw(%struct.ap_int.31*, %struct.ap_int.31*, %struct.ap_int.31*, i64*, i64*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.9"*, i16*, i1*, i1*, i32, i32, i8, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, i16*, i32*, i1*, i1, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*)

define void @BFS_Scatter_hw_stub_wrapper(%struct.ap_int.31*, %struct.ap_int.31*, %struct.ap_int.31*, i64*, i64*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.9"*, i16*, i1*, i1*, i32, i32, i8, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, i16*, i32*, i1*, i1, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*) #7 {
entry:
  %86 = alloca [64 x [4096 x %struct.ap_uint.6]]
  call void @copy_out(i64* null, i64* %3, i64* null, i64* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %7, i16* null, i16* %8, i1* null, i1* %9, i1* null, i1* %10, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %17, i16* null, i16* %18, i32* null, i32* %19, i1* null, i1* %20, [64 x [4096 x %struct.ap_uint.6]]* %86, [4096 x %struct.ap_uint.6]* %22, [4096 x %struct.ap_uint.6]* %23, [4096 x %struct.ap_uint.6]* %24, [4096 x %struct.ap_uint.6]* %25, [4096 x %struct.ap_uint.6]* %26, [4096 x %struct.ap_uint.6]* %27, [4096 x %struct.ap_uint.6]* %28, [4096 x %struct.ap_uint.6]* %29, [4096 x %struct.ap_uint.6]* %30, [4096 x %struct.ap_uint.6]* %31, [4096 x %struct.ap_uint.6]* %32, [4096 x %struct.ap_uint.6]* %33, [4096 x %struct.ap_uint.6]* %34, [4096 x %struct.ap_uint.6]* %35, [4096 x %struct.ap_uint.6]* %36, [4096 x %struct.ap_uint.6]* %37, [4096 x %struct.ap_uint.6]* %38, [4096 x %struct.ap_uint.6]* %39, [4096 x %struct.ap_uint.6]* %40, [4096 x %struct.ap_uint.6]* %41, [4096 x %struct.ap_uint.6]* %42, [4096 x %struct.ap_uint.6]* %43, [4096 x %struct.ap_uint.6]* %44, [4096 x %struct.ap_uint.6]* %45, [4096 x %struct.ap_uint.6]* %46, [4096 x %struct.ap_uint.6]* %47, [4096 x %struct.ap_uint.6]* %48, [4096 x %struct.ap_uint.6]* %49, [4096 x %struct.ap_uint.6]* %50, [4096 x %struct.ap_uint.6]* %51, [4096 x %struct.ap_uint.6]* %52, [4096 x %struct.ap_uint.6]* %53, [4096 x %struct.ap_uint.6]* %54, [4096 x %struct.ap_uint.6]* %55, [4096 x %struct.ap_uint.6]* %56, [4096 x %struct.ap_uint.6]* %57, [4096 x %struct.ap_uint.6]* %58, [4096 x %struct.ap_uint.6]* %59, [4096 x %struct.ap_uint.6]* %60, [4096 x %struct.ap_uint.6]* %61, [4096 x %struct.ap_uint.6]* %62, [4096 x %struct.ap_uint.6]* %63, [4096 x %struct.ap_uint.6]* %64, [4096 x %struct.ap_uint.6]* %65, [4096 x %struct.ap_uint.6]* %66, [4096 x %struct.ap_uint.6]* %67, [4096 x %struct.ap_uint.6]* %68, [4096 x %struct.ap_uint.6]* %69, [4096 x %struct.ap_uint.6]* %70, [4096 x %struct.ap_uint.6]* %71, [4096 x %struct.ap_uint.6]* %72, [4096 x %struct.ap_uint.6]* %73, [4096 x %struct.ap_uint.6]* %74, [4096 x %struct.ap_uint.6]* %75, [4096 x %struct.ap_uint.6]* %76, [4096 x %struct.ap_uint.6]* %77, [4096 x %struct.ap_uint.6]* %78, [4096 x %struct.ap_uint.6]* %79, [4096 x %struct.ap_uint.6]* %80, [4096 x %struct.ap_uint.6]* %81, [4096 x %struct.ap_uint.6]* %82, [4096 x %struct.ap_uint.6]* %83, [4096 x %struct.ap_uint.6]* %84, [4096 x %struct.ap_uint.6]* %85)
  %87 = bitcast [64 x [4096 x %struct.ap_uint.6]]* %86 to [4096 x %struct.ap_uint.6]*
  call void @BFS_Scatter_hw_stub(%struct.ap_int.31* %0, %struct.ap_int.31* %1, %struct.ap_int.31* %2, i64* %3, i64* %4, %"class.hls::stream"* %5, %"class.hls::stream"* %6, %"class.hls::stream.9"* %7, i16* %8, i1* %9, i1* %10, i32 %11, i32 %12, i8 %13, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* %17, i16* %18, i32* %19, i1* %20, i1 %21, [4096 x %struct.ap_uint.6]* %87)
  call void @copy_in(i64* null, i64* %3, i64* null, i64* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %7, i16* null, i16* %8, i1* null, i1* %9, i1* null, i1* %10, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %17, i16* null, i16* %18, i32* null, i32* %19, i1* null, i1* %20, [64 x [4096 x %struct.ap_uint.6]]* %86, [4096 x %struct.ap_uint.6]* %22, [4096 x %struct.ap_uint.6]* %23, [4096 x %struct.ap_uint.6]* %24, [4096 x %struct.ap_uint.6]* %25, [4096 x %struct.ap_uint.6]* %26, [4096 x %struct.ap_uint.6]* %27, [4096 x %struct.ap_uint.6]* %28, [4096 x %struct.ap_uint.6]* %29, [4096 x %struct.ap_uint.6]* %30, [4096 x %struct.ap_uint.6]* %31, [4096 x %struct.ap_uint.6]* %32, [4096 x %struct.ap_uint.6]* %33, [4096 x %struct.ap_uint.6]* %34, [4096 x %struct.ap_uint.6]* %35, [4096 x %struct.ap_uint.6]* %36, [4096 x %struct.ap_uint.6]* %37, [4096 x %struct.ap_uint.6]* %38, [4096 x %struct.ap_uint.6]* %39, [4096 x %struct.ap_uint.6]* %40, [4096 x %struct.ap_uint.6]* %41, [4096 x %struct.ap_uint.6]* %42, [4096 x %struct.ap_uint.6]* %43, [4096 x %struct.ap_uint.6]* %44, [4096 x %struct.ap_uint.6]* %45, [4096 x %struct.ap_uint.6]* %46, [4096 x %struct.ap_uint.6]* %47, [4096 x %struct.ap_uint.6]* %48, [4096 x %struct.ap_uint.6]* %49, [4096 x %struct.ap_uint.6]* %50, [4096 x %struct.ap_uint.6]* %51, [4096 x %struct.ap_uint.6]* %52, [4096 x %struct.ap_uint.6]* %53, [4096 x %struct.ap_uint.6]* %54, [4096 x %struct.ap_uint.6]* %55, [4096 x %struct.ap_uint.6]* %56, [4096 x %struct.ap_uint.6]* %57, [4096 x %struct.ap_uint.6]* %58, [4096 x %struct.ap_uint.6]* %59, [4096 x %struct.ap_uint.6]* %60, [4096 x %struct.ap_uint.6]* %61, [4096 x %struct.ap_uint.6]* %62, [4096 x %struct.ap_uint.6]* %63, [4096 x %struct.ap_uint.6]* %64, [4096 x %struct.ap_uint.6]* %65, [4096 x %struct.ap_uint.6]* %66, [4096 x %struct.ap_uint.6]* %67, [4096 x %struct.ap_uint.6]* %68, [4096 x %struct.ap_uint.6]* %69, [4096 x %struct.ap_uint.6]* %70, [4096 x %struct.ap_uint.6]* %71, [4096 x %struct.ap_uint.6]* %72, [4096 x %struct.ap_uint.6]* %73, [4096 x %struct.ap_uint.6]* %74, [4096 x %struct.ap_uint.6]* %75, [4096 x %struct.ap_uint.6]* %76, [4096 x %struct.ap_uint.6]* %77, [4096 x %struct.ap_uint.6]* %78, [4096 x %struct.ap_uint.6]* %79, [4096 x %struct.ap_uint.6]* %80, [4096 x %struct.ap_uint.6]* %81, [4096 x %struct.ap_uint.6]* %82, [4096 x %struct.ap_uint.6]* %83, [4096 x %struct.ap_uint.6]* %84, [4096 x %struct.ap_uint.6]* %85)
  ret void
}

declare void @BFS_Scatter_hw_stub(%struct.ap_int.31*, %struct.ap_int.31*, %struct.ap_int.31*, i64*, i64*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.9"*, i16*, i1*, i1*, i32, i32, i8, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, i16*, i32*, i1*, i1, [4096 x %struct.ap_uint.6]*)

declare i1 @fpga_fifo_not_empty_32(i8*)

declare i1 @fpga_fifo_not_empty_16(i8*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare i1 @fpga_fifo_not_empty_8(i8*)

declare void @fpga_fifo_pop_32(i8*, i8*)

declare void @fpga_fifo_pop_16(i8*, i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_pop_8(i8*, i8*)

declare void @fpga_fifo_push_32(i8*, i8*)

declare void @fpga_fifo_push_16(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

declare void @fpga_fifo_push_8(i8*, i8*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
