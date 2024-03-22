; ModuleID = '/Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/scatter/bfs_scatter_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
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
  %tmp_dist_copy_0 = bitcast i8* %malloccall_0 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_1 = bitcast i8* %malloccall_1 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_2 = bitcast i8* %malloccall_2 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_3 = bitcast i8* %malloccall_3 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_4 = bitcast i8* %malloccall_4 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_5 = bitcast i8* %malloccall_5 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_6 = bitcast i8* %malloccall_6 to [4096 x %struct.ap_uint.6]*
  %tmp_dist_copy_7 = bitcast i8* %malloccall_7 to [4096 x %struct.ap_uint.6]*
  %0 = bitcast [4096 x %struct.ap_uint.6]* %tmp_dist to [8 x [4096 x %struct.ap_uint.6]]*
  call void @copy_in(i64* %rd_baseAddr, i64* nonnull align 512 %rd_baseAddr_copy, i64* %wr_baseAddr, i64* nonnull align 512 %wr_baseAddr_copy, %"class.hls::stream"* %rd_port, %"class.hls::stream"* nonnull align 512 %rd_port_copy, %"class.hls::stream"* %wr_port, %"class.hls::stream"* nonnull align 512 %wr_port_copy, %"class.hls::stream.9"* %rd_req, %"class.hls::stream.9"* nonnull align 512 %rd_req_copy1, i16* %wr_len, i16* nonnull align 512 %wr_len_copy, i1* %rd_start, i1* nonnull align 512 %rd_start_copy, i1* %wr_start, i1* nonnull align 512 %wr_start_copy, %"class.hls::stream.9"* %sw_data_0, %"class.hls::stream.9"* nonnull align 512 %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1, %"class.hls::stream.9"* nonnull align 512 %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2, %"class.hls::stream.9"* nonnull align 512 %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3, %"class.hls::stream.9"* nonnull align 512 %sw_data_3_copy5, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cycle_cnt, i32* nonnull align 512 %cycle_cnt_copy, i1* %launch_recv, i1* nonnull align 512 %launch_recv_copy, [8 x [4096 x %struct.ap_uint.6]]* %0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7)
  call void @apatb_BFS_Scatter_hw(%struct.ap_int.31* %CSR_V, %struct.ap_int.31* %CSR_E, %struct.ap_int.31* %glbl_d, i64* %rd_baseAddr_copy, i64* %wr_baseAddr_copy, %"class.hls::stream"* %rd_port_copy, %"class.hls::stream"* %wr_port_copy, %"class.hls::stream.9"* %rd_req_copy1, i16* %wr_len_copy, i1* %rd_start_copy, i1* %wr_start_copy, i32 %N_Vertex, i32 %root, i8 %peID, %"class.hls::stream.9"* %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3_copy5, i16* %glblIterIdx_copy, i32* %cycle_cnt_copy, i1* %launch_recv_copy, i1 %resWrite, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7)
  call void @copy_out(i64* %rd_baseAddr, i64* nonnull align 512 %rd_baseAddr_copy, i64* %wr_baseAddr, i64* nonnull align 512 %wr_baseAddr_copy, %"class.hls::stream"* %rd_port, %"class.hls::stream"* nonnull align 512 %rd_port_copy, %"class.hls::stream"* %wr_port, %"class.hls::stream"* nonnull align 512 %wr_port_copy, %"class.hls::stream.9"* %rd_req, %"class.hls::stream.9"* nonnull align 512 %rd_req_copy1, i16* %wr_len, i16* nonnull align 512 %wr_len_copy, i1* %rd_start, i1* nonnull align 512 %rd_start_copy, i1* %wr_start, i1* nonnull align 512 %wr_start_copy, %"class.hls::stream.9"* %sw_data_0, %"class.hls::stream.9"* nonnull align 512 %sw_data_0_copy2, %"class.hls::stream.9"* %sw_data_1, %"class.hls::stream.9"* nonnull align 512 %sw_data_1_copy3, %"class.hls::stream.9"* %sw_data_2, %"class.hls::stream.9"* nonnull align 512 %sw_data_2_copy4, %"class.hls::stream.9"* %sw_data_3, %"class.hls::stream.9"* nonnull align 512 %sw_data_3_copy5, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cycle_cnt, i32* nonnull align 512 %cycle_cnt_copy, i1* %launch_recv, i1* nonnull align 512 %launch_recv_copy, [8 x [4096 x %struct.ap_uint.6]]* %0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_0, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_1, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_2, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_3, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_4, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_5, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_6, [4096 x %struct.ap_uint.6]* %tmp_dist_copy_7)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
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
define internal void @onebyonecpy_hls.p0a8a4096struct.ap_uint.6.29.36([4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="0" %_7, [8 x [4096 x %struct.ap_uint.6]]* noalias "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [4096 x %struct.ap_uint.6]* %_0, null
  %2 = icmp eq [8 x [4096 x %struct.ap_uint.6]]* %0, null
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
  %src.addr68 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
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

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.09 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0
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

; <label>:11:                                     ; preds = %7
  %src.addr6.0.011 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
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

; <label>:15:                                     ; preds = %11
  %dst.addr5.0.0.014.gep15_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014.gep15_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_01 = bitcast i64* %dst.addr5.0.0.014.gep15_0 to i8*
  %_12 = bitcast i64* %dst.addr5.0.0.014.gep15_1 to i8*
  %_23 = bitcast i64* %dst.addr5.0.0.014.gep15_2 to i8*
  %_34 = bitcast i64* %dst.addr5.0.0.014.gep15_3 to i8*
  %_45 = bitcast i64* %dst.addr5.0.0.014.gep15_4 to i8*
  %_56 = bitcast i64* %dst.addr5.0.0.014.gep15_5 to i8*
  %_67 = bitcast i64* %dst.addr5.0.0.014.gep15_6 to i8*
  %_78 = bitcast i64* %dst.addr5.0.0.014.gep15_7 to i8*
  %src.addr6.0.0.013.gep16 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317, i32 0, i32 0, i32 0
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
  ]

.default:                                         ; preds = %15
  unreachable

.case.0:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_01, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.1:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_12, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.2:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_23, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.3:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_34, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.4:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_45, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.5:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_56, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.6:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_67, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

.case.7:                                          ; preds = %15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %_78, i8* align 1 %16, i64 8, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.7, %.case.6, %.case.5, %.case.4, %.case.3, %.case.2, %.case.1, %.case.0, %dst.addr5.0.012.case.7, %dst.addr5.0.012.case.6, %dst.addr5.0.012.case.5, %dst.addr5.0.012.case.4, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.7, %dst.addr5.010.case.6, %dst.addr5.010.case.5, %dst.addr5.010.case.4, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_in(i64* readonly "orig.arg.no"="0", i64* noalias align 512 "orig.arg.no"="1", i64* readonly "orig.arg.no"="2", i64* noalias align 512 "orig.arg.no"="3", %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", %"class.hls::stream"* "orig.arg.no"="6", %"class.hls::stream"* noalias align 512 "orig.arg.no"="7", %"class.hls::stream.9"* "orig.arg.no"="8", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="9", i16* readonly "orig.arg.no"="10", i16* noalias align 512 "orig.arg.no"="11", i1* readonly "orig.arg.no"="12", i1* noalias align 512 "orig.arg.no"="13", i1* readonly "orig.arg.no"="14", i1* noalias align 512 "orig.arg.no"="15", %"class.hls::stream.9"* "orig.arg.no"="16", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="17", %"class.hls::stream.9"* "orig.arg.no"="18", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="19", %"class.hls::stream.9"* "orig.arg.no"="20", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="21", %"class.hls::stream.9"* "orig.arg.no"="22", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="23", i16* readonly "orig.arg.no"="24", i16* noalias align 512 "orig.arg.no"="25", i32* readonly "orig.arg.no"="26", i32* noalias align 512 "orig.arg.no"="27", i1* readonly "orig.arg.no"="28", i1* noalias align 512 "orig.arg.no"="29", [8 x [4096 x %struct.ap_uint.6]]* "orig.arg.no"="30", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_7) #5 {
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
  call void @onebyonecpy_hls.p0a8a4096struct.ap_uint.6.29.36([4096 x %struct.ap_uint.6]* %_0, [4096 x %struct.ap_uint.6]* %_1, [4096 x %struct.ap_uint.6]* %_2, [4096 x %struct.ap_uint.6]* %_3, [4096 x %struct.ap_uint.6]* %_4, [4096 x %struct.ap_uint.6]* %_5, [4096 x %struct.ap_uint.6]* %_6, [4096 x %struct.ap_uint.6]* %_7, [8 x [4096 x %struct.ap_uint.6]]* %30)
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
define internal void @onebyonecpy_hls.p0a8a4096struct.ap_uint.6.45.52([8 x [4096 x %struct.ap_uint.6]]* noalias "orig.arg.no"="0", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="1" %_7) #3 {
entry:
  %1 = icmp eq [8 x [4096 x %struct.ap_uint.6]]* %0, null
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
  %dst.addr57 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 %for.loop.idx18, i64 %for.loop.idx317
  %src.addr68_0 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317
  %src.addr68_1 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317
  %src.addr68_2 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317
  %src.addr68_3 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317
  %src.addr68_4 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317
  %src.addr68_5 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317
  %src.addr68_6 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317
  %src.addr68_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317
  %_01 = bitcast %struct.ap_uint.6* %src.addr68_0 to i8*
  %_12 = bitcast %struct.ap_uint.6* %src.addr68_1 to i8*
  %_23 = bitcast %struct.ap_uint.6* %src.addr68_2 to i8*
  %_34 = bitcast %struct.ap_uint.6* %src.addr68_3 to i8*
  %_45 = bitcast %struct.ap_uint.6* %src.addr68_4 to i8*
  %_56 = bitcast %struct.ap_uint.6* %src.addr68_5 to i8*
  %_67 = bitcast %struct.ap_uint.6* %src.addr68_6 to i8*
  %_78 = bitcast %struct.ap_uint.6* %src.addr68_7 to i8*
  switch i64 %for.loop.idx18, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_09 = call i1 @fpga_fifo_exist_8(i8* %_01)
  br i1 %_09, label %src.addr68.case.0, label %.case.027

.case.1:                                          ; preds = %for.loop2
  %_110 = call i1 @fpga_fifo_exist_8(i8* %_12)
  br i1 %_110, label %src.addr68.case.1, label %.case.128

.case.2:                                          ; preds = %for.loop2
  %_211 = call i1 @fpga_fifo_exist_8(i8* %_23)
  br i1 %_211, label %src.addr68.case.2, label %.case.229

.case.3:                                          ; preds = %for.loop2
  %_312 = call i1 @fpga_fifo_exist_8(i8* %_34)
  br i1 %_312, label %src.addr68.case.3, label %.case.330

.case.4:                                          ; preds = %for.loop2
  %_413 = call i1 @fpga_fifo_exist_8(i8* %_45)
  br i1 %_413, label %src.addr68.case.4, label %.case.431

.case.5:                                          ; preds = %for.loop2
  %_514 = call i1 @fpga_fifo_exist_8(i8* %_56)
  br i1 %_514, label %src.addr68.case.5, label %.case.532

.case.6:                                          ; preds = %for.loop2
  %_615 = call i1 @fpga_fifo_exist_8(i8* %_67)
  br i1 %_615, label %src.addr68.case.6, label %.case.633

.exit:                                            ; preds = %for.loop2
  %_716 = call i1 @fpga_fifo_exist_8(i8* %_78)
  br i1 %_716, label %src.addr68.case.7, label %.exit26

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

src.addr68.case.7:                                ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_uint.6.46.47(%struct.ap_uint.6* %dst.addr57, %struct.ap_uint.6* %src.addr68_7)
  br label %for.loop.head1

.case.027:                                        ; preds = %.case.0
  %src.addr6.09_08 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.01016 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 0, i64 %for.loop.idx317, i32 0
  %_01717 = bitcast %struct.ap_int_base.7* %src.addr6.09_08 to i8*
  %_035 = call i1 @fpga_fifo_exist_8(i8* %_01717)
  br i1 %_035, label %src.addr6.09.case.0, label %.case.053

.case.128:                                        ; preds = %.case.1
  %src.addr6.09_146 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.01053 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 1, i64 %for.loop.idx317, i32 0
  %_11855 = bitcast %struct.ap_int_base.7* %src.addr6.09_146 to i8*
  %_136 = call i1 @fpga_fifo_exist_8(i8* %_11855)
  br i1 %_136, label %src.addr6.09.case.1, label %.case.154

.case.229:                                        ; preds = %.case.2
  %src.addr6.09_275 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.01081 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 2, i64 %for.loop.idx317, i32 0
  %_21984 = bitcast %struct.ap_int_base.7* %src.addr6.09_275 to i8*
  %_237 = call i1 @fpga_fifo_exist_8(i8* %_21984)
  br i1 %_237, label %src.addr6.09.case.2, label %.case.255

.case.330:                                        ; preds = %.case.3
  %src.addr6.09_3104 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010109 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 3, i64 %for.loop.idx317, i32 0
  %_320113 = bitcast %struct.ap_int_base.7* %src.addr6.09_3104 to i8*
  %_338 = call i1 @fpga_fifo_exist_8(i8* %_320113)
  br i1 %_338, label %src.addr6.09.case.3, label %.case.356

.case.431:                                        ; preds = %.case.4
  %src.addr6.09_4133 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010137 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 4, i64 %for.loop.idx317, i32 0
  %_421142 = bitcast %struct.ap_int_base.7* %src.addr6.09_4133 to i8*
  %_439 = call i1 @fpga_fifo_exist_8(i8* %_421142)
  br i1 %_439, label %src.addr6.09.case.4, label %.case.457

.case.532:                                        ; preds = %.case.5
  %src.addr6.09_5162 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010165 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 5, i64 %for.loop.idx317, i32 0
  %_522171 = bitcast %struct.ap_int_base.7* %src.addr6.09_5162 to i8*
  %_540 = call i1 @fpga_fifo_exist_8(i8* %_522171)
  br i1 %_540, label %src.addr6.09.case.5, label %.case.558

.case.633:                                        ; preds = %.case.6
  %src.addr6.09_6191 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010193 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 6, i64 %for.loop.idx317, i32 0
  %_623200 = bitcast %struct.ap_int_base.7* %src.addr6.09_6191 to i8*
  %_641 = call i1 @fpga_fifo_exist_8(i8* %_623200)
  br i1 %_641, label %src.addr6.09.case.6, label %.case.659

.exit26:                                          ; preds = %.exit
  %src.addr6.09_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0
  %dst.addr5.010 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 7, i64 %for.loop.idx317, i32 0
  %_724 = bitcast %struct.ap_int_base.7* %src.addr6.09_7 to i8*
  %_742 = call i1 @fpga_fifo_exist_8(i8* %_724)
  br i1 %_742, label %src.addr6.09.case.7, label %.exit52

src.addr6.09.case.0:                              ; preds = %.case.027
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.01016, %struct.ap_int_base.7* %src.addr6.09_08)
  br label %for.loop.head1

src.addr6.09.case.1:                              ; preds = %.case.128
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.01053, %struct.ap_int_base.7* %src.addr6.09_146)
  br label %for.loop.head1

src.addr6.09.case.2:                              ; preds = %.case.229
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.01081, %struct.ap_int_base.7* %src.addr6.09_275)
  br label %for.loop.head1

src.addr6.09.case.3:                              ; preds = %.case.330
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010109, %struct.ap_int_base.7* %src.addr6.09_3104)
  br label %for.loop.head1

src.addr6.09.case.4:                              ; preds = %.case.431
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010137, %struct.ap_int_base.7* %src.addr6.09_4133)
  br label %for.loop.head1

src.addr6.09.case.5:                              ; preds = %.case.532
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010165, %struct.ap_int_base.7* %src.addr6.09_5162)
  br label %for.loop.head1

src.addr6.09.case.6:                              ; preds = %.case.633
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010193, %struct.ap_int_base.7* %src.addr6.09_6191)
  br label %for.loop.head1

src.addr6.09.case.7:                              ; preds = %.exit26
  call void @streamcpy_hls.p0struct.ap_int_base.7.48.49(%struct.ap_int_base.7* %dst.addr5.010, %struct.ap_int_base.7* %src.addr6.09_7)
  br label %for.loop.head1

.case.053:                                        ; preds = %.case.027
  %src.addr6.0.011_0243 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012251 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %_043252 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_0243 to i8*
  %_061 = call i1 @fpga_fifo_exist_8(i8* %_043252)
  br i1 %_061, label %src.addr6.0.011.case.0, label %.case.079

.case.154:                                        ; preds = %.case.128
  %src.addr6.0.011_1281 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012288 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 1, i64 %for.loop.idx317, i32 0, i32 0
  %_144290 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_1281 to i8*
  %_162 = call i1 @fpga_fifo_exist_8(i8* %_144290)
  br i1 %_162, label %src.addr6.0.011.case.1, label %.case.180

.case.255:                                        ; preds = %.case.229
  %src.addr6.0.011_2310 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012316 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 2, i64 %for.loop.idx317, i32 0, i32 0
  %_245319 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_2310 to i8*
  %_263 = call i1 @fpga_fifo_exist_8(i8* %_245319)
  br i1 %_263, label %src.addr6.0.011.case.2, label %.case.281

.case.356:                                        ; preds = %.case.330
  %src.addr6.0.011_3339 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012344 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 3, i64 %for.loop.idx317, i32 0, i32 0
  %_346348 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_3339 to i8*
  %_364 = call i1 @fpga_fifo_exist_8(i8* %_346348)
  br i1 %_364, label %src.addr6.0.011.case.3, label %.case.382

.case.457:                                        ; preds = %.case.431
  %src.addr6.0.011_4368 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012372 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 4, i64 %for.loop.idx317, i32 0, i32 0
  %_447377 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_4368 to i8*
  %_465 = call i1 @fpga_fifo_exist_8(i8* %_447377)
  br i1 %_465, label %src.addr6.0.011.case.4, label %.case.483

.case.558:                                        ; preds = %.case.532
  %src.addr6.0.011_5397 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012400 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 5, i64 %for.loop.idx317, i32 0, i32 0
  %_548406 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_5397 to i8*
  %_566 = call i1 @fpga_fifo_exist_8(i8* %_548406)
  br i1 %_566, label %src.addr6.0.011.case.5, label %.case.584

.case.659:                                        ; preds = %.case.633
  %src.addr6.0.011_6426 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012428 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 6, i64 %for.loop.idx317, i32 0, i32 0
  %_649435 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_6426 to i8*
  %_667 = call i1 @fpga_fifo_exist_8(i8* %_649435)
  br i1 %_667, label %src.addr6.0.011.case.6, label %.case.685

.exit52:                                          ; preds = %.exit26
  %src.addr6.0.011_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0
  %dst.addr5.0.012 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 7, i64 %for.loop.idx317, i32 0, i32 0
  %_750 = bitcast %struct.ssdm_int.8* %src.addr6.0.011_7 to i8*
  %_768 = call i1 @fpga_fifo_exist_8(i8* %_750)
  br i1 %_768, label %src.addr6.0.011.case.7, label %.case.786

src.addr6.0.011.case.0:                           ; preds = %.case.053
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012251, %struct.ssdm_int.8* %src.addr6.0.011_0243)
  br label %for.loop.head1

src.addr6.0.011.case.1:                           ; preds = %.case.154
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012288, %struct.ssdm_int.8* %src.addr6.0.011_1281)
  br label %for.loop.head1

src.addr6.0.011.case.2:                           ; preds = %.case.255
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012316, %struct.ssdm_int.8* %src.addr6.0.011_2310)
  br label %for.loop.head1

src.addr6.0.011.case.3:                           ; preds = %.case.356
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012344, %struct.ssdm_int.8* %src.addr6.0.011_3339)
  br label %for.loop.head1

src.addr6.0.011.case.4:                           ; preds = %.case.457
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012372, %struct.ssdm_int.8* %src.addr6.0.011_4368)
  br label %for.loop.head1

src.addr6.0.011.case.5:                           ; preds = %.case.558
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012400, %struct.ssdm_int.8* %src.addr6.0.011_5397)
  br label %for.loop.head1

src.addr6.0.011.case.6:                           ; preds = %.case.659
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012428, %struct.ssdm_int.8* %src.addr6.0.011_6426)
  br label %for.loop.head1

src.addr6.0.011.case.7:                           ; preds = %.exit52
  call void @streamcpy_hls.p0struct.ssdm_int.8.50.51(%struct.ssdm_int.8* %dst.addr5.0.012, %struct.ssdm_int.8* %src.addr6.0.011_7)
  br label %for.loop.head1

.case.079:                                        ; preds = %.case.053
  %dst.addr5.0.0.014.gep15478 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %4 = bitcast i64* %dst.addr5.0.0.014.gep15478 to i8*
  %src.addr6.0.0.013.gep16_0479 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_0, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_069487 = bitcast i64* %src.addr6.0.0.013.gep16_0479 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %_069487, i64 8, i1 false)
  br label %for.loop.head1

.case.180:                                        ; preds = %.case.154
  %dst.addr5.0.0.014.gep15497 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 1, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %5 = bitcast i64* %dst.addr5.0.0.014.gep15497 to i8*
  %src.addr6.0.0.013.gep16_1499 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_1, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_170507 = bitcast i64* %src.addr6.0.0.013.gep16_1499 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %_170507, i64 8, i1 false)
  br label %for.loop.head1

.case.281:                                        ; preds = %.case.255
  %dst.addr5.0.0.014.gep15516 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 2, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %6 = bitcast i64* %dst.addr5.0.0.014.gep15516 to i8*
  %src.addr6.0.0.013.gep16_2519 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_2, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_271527 = bitcast i64* %src.addr6.0.0.013.gep16_2519 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 %_271527, i64 8, i1 false)
  br label %for.loop.head1

.case.382:                                        ; preds = %.case.356
  %dst.addr5.0.0.014.gep15535 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 3, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %7 = bitcast i64* %dst.addr5.0.0.014.gep15535 to i8*
  %src.addr6.0.0.013.gep16_3539 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_3, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_372547 = bitcast i64* %src.addr6.0.0.013.gep16_3539 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %_372547, i64 8, i1 false)
  br label %for.loop.head1

.case.483:                                        ; preds = %.case.457
  %dst.addr5.0.0.014.gep15554 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 4, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %8 = bitcast i64* %dst.addr5.0.0.014.gep15554 to i8*
  %src.addr6.0.0.013.gep16_4559 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_4, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_473567 = bitcast i64* %src.addr6.0.0.013.gep16_4559 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %_473567, i64 8, i1 false)
  br label %for.loop.head1

.case.584:                                        ; preds = %.case.558
  %dst.addr5.0.0.014.gep15573 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 5, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %9 = bitcast i64* %dst.addr5.0.0.014.gep15573 to i8*
  %src.addr6.0.0.013.gep16_5579 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_5, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_574587 = bitcast i64* %src.addr6.0.0.013.gep16_5579 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %_574587, i64 8, i1 false)
  br label %for.loop.head1

.case.685:                                        ; preds = %.case.659
  %dst.addr5.0.0.014.gep15592 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 6, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %10 = bitcast i64* %dst.addr5.0.0.014.gep15592 to i8*
  %src.addr6.0.0.013.gep16_6599 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_6, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_675607 = bitcast i64* %src.addr6.0.0.013.gep16_6599 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 %_675607, i64 8, i1 false)
  br label %for.loop.head1

.case.786:                                        ; preds = %.exit52
  %dst.addr5.0.0.014.gep15 = getelementptr [8 x [4096 x %struct.ap_uint.6]], [8 x [4096 x %struct.ap_uint.6]]* %0, i64 0, i64 7, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %11 = bitcast i64* %dst.addr5.0.0.014.gep15 to i8*
  %src.addr6.0.0.013.gep16_7 = getelementptr [4096 x %struct.ap_uint.6], [4096 x %struct.ap_uint.6]* %_7, i64 0, i64 %for.loop.idx317, i32 0, i32 0, i32 0
  %_776 = bitcast i64* %src.addr6.0.0.013.gep16_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %_776, i64 8, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.786, %.case.685, %.case.584, %.case.483, %.case.382, %.case.281, %.case.180, %.case.079, %src.addr6.0.011.case.7, %src.addr6.0.011.case.6, %src.addr6.0.011.case.5, %src.addr6.0.011.case.4, %src.addr6.0.011.case.3, %src.addr6.0.011.case.2, %src.addr6.0.011.case.1, %src.addr6.0.011.case.0, %src.addr6.09.case.7, %src.addr6.09.case.6, %src.addr6.09.case.5, %src.addr6.09.case.4, %src.addr6.09.case.3, %src.addr6.09.case.2, %src.addr6.09.case.1, %src.addr6.09.case.0, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx317, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx18, 1
  %exitcond19 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond19, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_out(i64* "orig.arg.no"="0", i64* noalias readonly align 512 "orig.arg.no"="1", i64* "orig.arg.no"="2", i64* noalias readonly align 512 "orig.arg.no"="3", %"class.hls::stream"* "orig.arg.no"="4", %"class.hls::stream"* noalias align 512 "orig.arg.no"="5", %"class.hls::stream"* "orig.arg.no"="6", %"class.hls::stream"* noalias align 512 "orig.arg.no"="7", %"class.hls::stream.9"* "orig.arg.no"="8", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="9", i16* "orig.arg.no"="10", i16* noalias readonly align 512 "orig.arg.no"="11", i1* "orig.arg.no"="12", i1* noalias readonly align 512 "orig.arg.no"="13", i1* "orig.arg.no"="14", i1* noalias readonly align 512 "orig.arg.no"="15", %"class.hls::stream.9"* "orig.arg.no"="16", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="17", %"class.hls::stream.9"* "orig.arg.no"="18", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="19", %"class.hls::stream.9"* "orig.arg.no"="20", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="21", %"class.hls::stream.9"* "orig.arg.no"="22", %"class.hls::stream.9"* noalias align 512 "orig.arg.no"="23", i16* "orig.arg.no"="24", i16* noalias readonly align 512 "orig.arg.no"="25", i32* "orig.arg.no"="26", i32* noalias readonly align 512 "orig.arg.no"="27", i1* "orig.arg.no"="28", i1* noalias readonly align 512 "orig.arg.no"="29", [8 x [4096 x %struct.ap_uint.6]]* "orig.arg.no"="30", [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_0, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_1, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_2, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_3, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_4, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_5, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_6, [4096 x %struct.ap_uint.6]* noalias "orig.arg.no"="31" %_7) #6 {
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
  call void @onebyonecpy_hls.p0a8a4096struct.ap_uint.6.45.52([8 x [4096 x %struct.ap_uint.6]]* %30, [4096 x %struct.ap_uint.6]* %_0, [4096 x %struct.ap_uint.6]* %_1, [4096 x %struct.ap_uint.6]* %_2, [4096 x %struct.ap_uint.6]* %_3, [4096 x %struct.ap_uint.6]* %_4, [4096 x %struct.ap_uint.6]* %_5, [4096 x %struct.ap_uint.6]* %_6, [4096 x %struct.ap_uint.6]* %_7)
  ret void
}

declare void @apatb_BFS_Scatter_hw(%struct.ap_int.31*, %struct.ap_int.31*, %struct.ap_int.31*, i64*, i64*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.9"*, i16*, i1*, i1*, i32, i32, i8, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, i16*, i32*, i1*, i1, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*)

define void @BFS_Scatter_hw_stub_wrapper(%struct.ap_int.31*, %struct.ap_int.31*, %struct.ap_int.31*, i64*, i64*, %"class.hls::stream"*, %"class.hls::stream"*, %"class.hls::stream.9"*, i16*, i1*, i1*, i32, i32, i8, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, %"class.hls::stream.9"*, i16*, i32*, i1*, i1, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*, [4096 x %struct.ap_uint.6]*) #7 {
entry:
  %30 = alloca [8 x [4096 x %struct.ap_uint.6]]
  call void @copy_out(i64* null, i64* %3, i64* null, i64* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %7, i16* null, i16* %8, i1* null, i1* %9, i1* null, i1* %10, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %17, i16* null, i16* %18, i32* null, i32* %19, i1* null, i1* %20, [8 x [4096 x %struct.ap_uint.6]]* %30, [4096 x %struct.ap_uint.6]* %22, [4096 x %struct.ap_uint.6]* %23, [4096 x %struct.ap_uint.6]* %24, [4096 x %struct.ap_uint.6]* %25, [4096 x %struct.ap_uint.6]* %26, [4096 x %struct.ap_uint.6]* %27, [4096 x %struct.ap_uint.6]* %28, [4096 x %struct.ap_uint.6]* %29)
  %31 = bitcast [8 x [4096 x %struct.ap_uint.6]]* %30 to [4096 x %struct.ap_uint.6]*
  call void @BFS_Scatter_hw_stub(%struct.ap_int.31* %0, %struct.ap_int.31* %1, %struct.ap_int.31* %2, i64* %3, i64* %4, %"class.hls::stream"* %5, %"class.hls::stream"* %6, %"class.hls::stream.9"* %7, i16* %8, i1* %9, i1* %10, i32 %11, i32 %12, i8 %13, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* %17, i16* %18, i32* %19, i1* %20, i1 %21, [4096 x %struct.ap_uint.6]* %31)
  call void @copy_in(i64* null, i64* %3, i64* null, i64* %4, %"class.hls::stream"* null, %"class.hls::stream"* %5, %"class.hls::stream"* null, %"class.hls::stream"* %6, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %7, i16* null, i16* %8, i1* null, i1* %9, i1* null, i1* %10, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %14, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %15, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %16, %"class.hls::stream.9"* null, %"class.hls::stream.9"* %17, i16* null, i16* %18, i32* null, i32* %19, i1* null, i1* %20, [8 x [4096 x %struct.ap_uint.6]]* %30, [4096 x %struct.ap_uint.6]* %22, [4096 x %struct.ap_uint.6]* %23, [4096 x %struct.ap_uint.6]* %24, [4096 x %struct.ap_uint.6]* %25, [4096 x %struct.ap_uint.6]* %26, [4096 x %struct.ap_uint.6]* %27, [4096 x %struct.ap_uint.6]* %28, [4096 x %struct.ap_uint.6]* %29)
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
