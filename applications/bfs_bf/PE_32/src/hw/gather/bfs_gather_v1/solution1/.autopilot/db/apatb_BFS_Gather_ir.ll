; ModuleID = '/Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/gather/bfs_gather_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.dpkt_t = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i8 }

; Function Attrs: noinline
define void @apatb_BFS_Gather_ir(i8 %peID, i32* %sw_data, i1* %exist, %struct.dpkt_t* %tmp_dist) local_unnamed_addr #0 {
entry:
  %sw_data_copy = alloca i32, align 512
  %exist_copy = alloca i1, align 512
  %malloccall = tail call i8* @malloc(i64 32768)
  %tmp_dist_copy = bitcast i8* %malloccall to [4096 x %struct.dpkt_t]*
  %0 = bitcast %struct.dpkt_t* %tmp_dist to [4096 x %struct.dpkt_t]*
  call fastcc void @copy_in(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [4096 x %struct.dpkt_t]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy)
  %1 = getelementptr inbounds [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %tmp_dist_copy, i32 0, i32 0
  call void @apatb_BFS_Gather_hw(i8 %peID, i32* %sw_data_copy, i1* %exist_copy, %struct.dpkt_t* %1)
  call fastcc void @copy_out(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [4096 x %struct.dpkt_t]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy)
  tail call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: noinline
define internal fastcc void @copy_in(i32* readonly, i32* noalias align 512, i1* readonly, i1* noalias align 512, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call fastcc void @onebyonecpy_hls.p0a4096struct.dpkt_t([4096 x %struct.dpkt_t]* %5, [4096 x %struct.dpkt_t]* %4)
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

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

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a4096struct.dpkt_t([4096 x %struct.dpkt_t]* noalias, [4096 x %struct.dpkt_t]* noalias) unnamed_addr #4 {
entry:
  %2 = icmp eq [4096 x %struct.dpkt_t]* %0, null
  %3 = icmp eq [4096 x %struct.dpkt_t]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx65 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %src.addr.01 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 0
  %dst.addr.02 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 0
  %5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 0, i32 0, i32 0, i32 0
  %6 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.02, %struct.ap_uint* %src.addr.01)
  br label %15

; <label>:8:                                      ; preds = %for.loop
  %src.addr.0.03 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 0, i32 0
  %9 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.0.04, %struct.ap_int_base* %src.addr.0.03)
  br label %15

; <label>:11:                                     ; preds = %8
  %src.addr.0.0.05 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 0, i32 0, i32 0
  %12 = call i1 @fpga_fifo_exist_1(i8* %5)
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %11
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.0.06, %struct.ssdm_int* %src.addr.0.0.05)
  br label %15

; <label>:14:                                     ; preds = %11
  %dst.addr.0.0.0.08 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.0.0.0.08, i8* align 1 %5, i64 1, i1 false)
  br label %15

; <label>:15:                                     ; preds = %14, %13, %10, %7
  %src.addr.19 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 1
  %dst.addr.110 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 1
  %16 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 1, i32 0, i32 0, i32 0
  %17 = call i1 @fpga_fifo_exist_1(i8* %16)
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.110, %struct.ap_uint* %src.addr.19)
  br label %26

; <label>:19:                                     ; preds = %15
  %src.addr.1.011 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 1, i32 0
  %dst.addr.1.012 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 1, i32 0
  %20 = call i1 @fpga_fifo_exist_1(i8* %16)
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %19
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.1.012, %struct.ap_int_base* %src.addr.1.011)
  br label %26

; <label>:22:                                     ; preds = %19
  %src.addr.1.0.013 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 1, i32 0, i32 0
  %dst.addr.1.0.014 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 1, i32 0, i32 0
  %23 = call i1 @fpga_fifo_exist_1(i8* %16)
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %22
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.1.0.014, %struct.ssdm_int* %src.addr.1.0.013)
  br label %26

; <label>:25:                                     ; preds = %22
  %dst.addr.1.0.0.016 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.1.0.0.016, i8* align 1 %16, i64 1, i1 false)
  br label %26

; <label>:26:                                     ; preds = %25, %24, %21, %18
  %src.addr.217 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 2
  %dst.addr.218 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 2
  %27 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 2, i32 0, i32 0, i32 0
  %28 = call i1 @fpga_fifo_exist_1(i8* %27)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.218, %struct.ap_uint* %src.addr.217)
  br label %37

; <label>:30:                                     ; preds = %26
  %src.addr.2.019 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 2, i32 0
  %dst.addr.2.020 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 2, i32 0
  %31 = call i1 @fpga_fifo_exist_1(i8* %27)
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %30
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.2.020, %struct.ap_int_base* %src.addr.2.019)
  br label %37

; <label>:33:                                     ; preds = %30
  %src.addr.2.0.021 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 2, i32 0, i32 0
  %dst.addr.2.0.022 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 2, i32 0, i32 0
  %34 = call i1 @fpga_fifo_exist_1(i8* %27)
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %33
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.2.0.022, %struct.ssdm_int* %src.addr.2.0.021)
  br label %37

; <label>:36:                                     ; preds = %33
  %dst.addr.2.0.0.024 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.2.0.0.024, i8* align 1 %27, i64 1, i1 false)
  br label %37

; <label>:37:                                     ; preds = %36, %35, %32, %29
  %src.addr.325 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 3
  %dst.addr.326 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 3
  %38 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 3, i32 0, i32 0, i32 0
  %39 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.326, %struct.ap_uint* %src.addr.325)
  br label %48

; <label>:41:                                     ; preds = %37
  %src.addr.3.027 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 3, i32 0
  %dst.addr.3.028 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 3, i32 0
  %42 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %41
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.3.028, %struct.ap_int_base* %src.addr.3.027)
  br label %48

; <label>:44:                                     ; preds = %41
  %src.addr.3.0.029 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 3, i32 0, i32 0
  %dst.addr.3.0.030 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 3, i32 0, i32 0
  %45 = call i1 @fpga_fifo_exist_1(i8* %38)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %44
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.3.0.030, %struct.ssdm_int* %src.addr.3.0.029)
  br label %48

; <label>:47:                                     ; preds = %44
  %dst.addr.3.0.0.032 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.3.0.0.032, i8* align 1 %38, i64 1, i1 false)
  br label %48

; <label>:48:                                     ; preds = %47, %46, %43, %40
  %src.addr.433 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 4
  %dst.addr.434 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 4
  %49 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 4, i32 0, i32 0, i32 0
  %50 = call i1 @fpga_fifo_exist_1(i8* %49)
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.434, %struct.ap_uint* %src.addr.433)
  br label %59

; <label>:52:                                     ; preds = %48
  %src.addr.4.035 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 4, i32 0
  %dst.addr.4.036 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 4, i32 0
  %53 = call i1 @fpga_fifo_exist_1(i8* %49)
  br i1 %53, label %54, label %55

; <label>:54:                                     ; preds = %52
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.4.036, %struct.ap_int_base* %src.addr.4.035)
  br label %59

; <label>:55:                                     ; preds = %52
  %src.addr.4.0.037 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 4, i32 0, i32 0
  %dst.addr.4.0.038 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 4, i32 0, i32 0
  %56 = call i1 @fpga_fifo_exist_1(i8* %49)
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %55
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.4.0.038, %struct.ssdm_int* %src.addr.4.0.037)
  br label %59

; <label>:58:                                     ; preds = %55
  %dst.addr.4.0.0.040 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.4.0.0.040, i8* align 1 %49, i64 1, i1 false)
  br label %59

; <label>:59:                                     ; preds = %58, %57, %54, %51
  %src.addr.541 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 5
  %dst.addr.542 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 5
  %60 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 5, i32 0, i32 0, i32 0
  %61 = call i1 @fpga_fifo_exist_1(i8* %60)
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %59
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.542, %struct.ap_uint* %src.addr.541)
  br label %70

; <label>:63:                                     ; preds = %59
  %src.addr.5.043 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 5, i32 0
  %dst.addr.5.044 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 5, i32 0
  %64 = call i1 @fpga_fifo_exist_1(i8* %60)
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %63
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.5.044, %struct.ap_int_base* %src.addr.5.043)
  br label %70

; <label>:66:                                     ; preds = %63
  %src.addr.5.0.045 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 5, i32 0, i32 0
  %dst.addr.5.0.046 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 5, i32 0, i32 0
  %67 = call i1 @fpga_fifo_exist_1(i8* %60)
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %66
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.5.0.046, %struct.ssdm_int* %src.addr.5.0.045)
  br label %70

; <label>:69:                                     ; preds = %66
  %dst.addr.5.0.0.048 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.5.0.0.048, i8* align 1 %60, i64 1, i1 false)
  br label %70

; <label>:70:                                     ; preds = %69, %68, %65, %62
  %src.addr.649 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 6
  %dst.addr.650 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 6
  %71 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 6, i32 0, i32 0, i32 0
  %72 = call i1 @fpga_fifo_exist_1(i8* %71)
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %70
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.650, %struct.ap_uint* %src.addr.649)
  br label %81

; <label>:74:                                     ; preds = %70
  %src.addr.6.051 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 6, i32 0
  %dst.addr.6.052 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 6, i32 0
  %75 = call i1 @fpga_fifo_exist_1(i8* %71)
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %74
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.6.052, %struct.ap_int_base* %src.addr.6.051)
  br label %81

; <label>:77:                                     ; preds = %74
  %src.addr.6.0.053 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 6, i32 0, i32 0
  %dst.addr.6.0.054 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 6, i32 0, i32 0
  %78 = call i1 @fpga_fifo_exist_1(i8* %71)
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %77
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.6.0.054, %struct.ssdm_int* %src.addr.6.0.053)
  br label %81

; <label>:80:                                     ; preds = %77
  %dst.addr.6.0.0.056 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.6.0.0.056, i8* align 1 %71, i64 1, i1 false)
  br label %81

; <label>:81:                                     ; preds = %80, %79, %76, %73
  %src.addr.757 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 7
  %dst.addr.758 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 7
  %82 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 7, i32 0, i32 0, i32 0
  %83 = call i1 @fpga_fifo_exist_1(i8* %82)
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %81
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr.758, %struct.ap_uint* %src.addr.757)
  br label %for.loop.head

; <label>:85:                                     ; preds = %81
  %src.addr.7.059 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 7, i32 0
  %dst.addr.7.060 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 7, i32 0
  %86 = call i1 @fpga_fifo_exist_1(i8* %82)
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %85
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.7.060, %struct.ap_int_base* %src.addr.7.059)
  br label %for.loop.head

; <label>:88:                                     ; preds = %85
  %src.addr.7.0.061 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %1, i64 0, i64 %for.loop.idx65, i32 7, i32 0, i32 0
  %dst.addr.7.0.062 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 7, i32 0, i32 0
  %89 = call i1 @fpga_fifo_exist_1(i8* %82)
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %88
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.7.0.062, %struct.ssdm_int* %src.addr.7.0.061)
  br label %for.loop.head

; <label>:91:                                     ; preds = %88
  %dst.addr.7.0.0.064 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %0, i64 0, i64 %for.loop.idx65, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr.7.0.0.064, i8* align 1 %82, i64 1, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %91, %90, %87, %84
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx65, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture, %struct.ap_uint* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture, %struct.ap_int_base* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture, %struct.ssdm_int* noalias nocapture) unnamed_addr #5 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out(i32*, i32* noalias readonly align 512, i1*, i1* noalias readonly align 512, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]* noalias) unnamed_addr #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a4096struct.dpkt_t([4096 x %struct.dpkt_t]* %4, [4096 x %struct.dpkt_t]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_BFS_Gather_hw(i8, i32*, i1*, %struct.dpkt_t*)

define void @BFS_Gather_hw_stub_wrapper(i8, i32*, i1*, %struct.dpkt_t*) #7 {
entry:
  %4 = bitcast %struct.dpkt_t* %3 to [4096 x %struct.dpkt_t]*
  call void @copy_out(i32* null, i32* %1, i1* null, i1* %2, [4096 x %struct.dpkt_t]* null, [4096 x %struct.dpkt_t]* %4)
  %5 = bitcast [4096 x %struct.dpkt_t]* %4 to %struct.dpkt_t*
  call void @BFS_Gather_hw_stub(i8 %0, i32* %1, i1* %2, %struct.dpkt_t* %5)
  call void @copy_in(i32* null, i32* %1, i1* null, i1* %2, [4096 x %struct.dpkt_t]* null, [4096 x %struct.dpkt_t]* %4)
  ret void
}

declare void @BFS_Gather_hw_stub(i8, i32*, i1*, %struct.dpkt_t*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
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
