; ModuleID = '/Zodiac/GraFlex/ArtifactEvaluation/figure8/BFS_Scalability/PE_4/src/hw/gather/bfs_gather_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.dpkt_t = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i8 }

; Function Attrs: noinline
define void @apatb_BFS_Gather_ir(i8 %peID, i32* %sw_data, i1* %exist, [4096 x %struct.dpkt_t]* %tmp_dist) local_unnamed_addr #0 {
entry:
  %sw_data_copy = alloca i32, align 512
  %exist_copy = alloca i1, align 512
  %malloccall_0 = call i8* @malloc(i64 32768)
  %malloccall_1 = call i8* @malloc(i64 32768)
  %malloccall_2 = call i8* @malloc(i64 32768)
  %malloccall_3 = call i8* @malloc(i64 32768)
  %tmp_dist_copy_0 = bitcast i8* %malloccall_0 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_1 = bitcast i8* %malloccall_1 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_2 = bitcast i8* %malloccall_2 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_3 = bitcast i8* %malloccall_3 to [4096 x %struct.dpkt_t]*
  %0 = bitcast [4096 x %struct.dpkt_t]* %tmp_dist to [4 x [4096 x %struct.dpkt_t]]*
  call void @copy_in(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [4 x [4096 x %struct.dpkt_t]]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3)
  call void @apatb_BFS_Gather_hw(i8 %peID, i32* %sw_data_copy, i1* %exist_copy, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3)
  call void @copy_out(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [4 x [4096 x %struct.dpkt_t]]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #1 {
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #1 {
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

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* noalias nocapture "orig.arg.no"="0", %struct.ap_uint* noalias nocapture "orig.arg.no"="1") #3 {
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
  %11 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #3 {
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
  %11 = getelementptr %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #3 {
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
  %11 = getelementptr %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a4a4096struct.dpkt_t.3.10([4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_3, [4 x [4096 x %struct.dpkt_t]]* noalias "orig.arg.no"="1") #4 {
entry:
  %1 = icmp eq [4096 x %struct.dpkt_t]* %_0, null
  %2 = icmp eq [4 x [4096 x %struct.dpkt_t]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx74 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx373 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %src.addr6.09 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0
  %4 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %5 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %for.loop2
  switch i64 %for.loop.idx74, label %dst.addr5.010.default [
    i64 0, label %dst.addr5.010.case.0
    i64 1, label %dst.addr5.010.case.1
    i64 2, label %dst.addr5.010.case.2
    i64 3, label %dst.addr5.010.case.3
  ]

dst.addr5.010.default:                            ; preds = %6
  unreachable

dst.addr5.010.case.0:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_0, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.1:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_1, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.2:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_2, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.3:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_3, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.0.011 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %8 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %7
  switch i64 %for.loop.idx74, label %dst.addr5.0.012.default [
    i64 0, label %dst.addr5.0.012.case.0
    i64 1, label %dst.addr5.0.012.case.1
    i64 2, label %dst.addr5.0.012.case.2
    i64 3, label %dst.addr5.0.012.case.3
  ]

dst.addr5.0.012.default:                          ; preds = %9
  unreachable

dst.addr5.0.012.case.0:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_0, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.1:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_1, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.2:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_2, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.3:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_3, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

; <label>:10:                                     ; preds = %7
  %src.addr6.0.0.013 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %11 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %10
  switch i64 %for.loop.idx74, label %dst.addr5.0.0.014.default [
    i64 0, label %dst.addr5.0.0.014.case.0
    i64 1, label %dst.addr5.0.0.014.case.1
    i64 2, label %dst.addr5.0.0.014.case.2
    i64 3, label %dst.addr5.0.0.014.case.3
  ]

dst.addr5.0.0.014.default:                        ; preds = %12
  unreachable

dst.addr5.0.0.014.case.0:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_0, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.1:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_1, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.2:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_2, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.3:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_3, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

; <label>:13:                                     ; preds = %10
  %dst.addr5.0.0.0.016_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.0.0.0.016.default [
    i64 0, label %dst.addr5.0.0.0.016.case.0
    i64 1, label %dst.addr5.0.0.0.016.case.1
    i64 2, label %dst.addr5.0.0.0.016.case.2
    i64 3, label %dst.addr5.0.0.0.016.case.3
  ]

dst.addr5.0.0.0.016.default:                      ; preds = %13
  unreachable

dst.addr5.0.0.0.016.case.0:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_0, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.1:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_1, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.2:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_2, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.3:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_3, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.010.exit:                               ; preds = %dst.addr5.0.0.0.016.case.3, %dst.addr5.0.0.0.016.case.2, %dst.addr5.0.0.0.016.case.1, %dst.addr5.0.0.0.016.case.0, %dst.addr5.0.0.014.case.3, %dst.addr5.0.0.014.case.2, %dst.addr5.0.0.014.case.1, %dst.addr5.0.0.014.case.0, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0
  %src.addr6.117 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1
  %14 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %dst.addr5.010.exit
  switch i64 %for.loop.idx74, label %dst.addr5.118.default [
    i64 0, label %dst.addr5.118.case.0
    i64 1, label %dst.addr5.118.case.1
    i64 2, label %dst.addr5.118.case.2
    i64 3, label %dst.addr5.118.case.3
  ]

dst.addr5.118.default:                            ; preds = %16
  unreachable

dst.addr5.118.case.0:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_0, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.1:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_1, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.2:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_2, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.3:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_3, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

; <label>:17:                                     ; preds = %dst.addr5.010.exit
  %src.addr6.1.019 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  switch i64 %for.loop.idx74, label %dst.addr5.1.020.default [
    i64 0, label %dst.addr5.1.020.case.0
    i64 1, label %dst.addr5.1.020.case.1
    i64 2, label %dst.addr5.1.020.case.2
    i64 3, label %dst.addr5.1.020.case.3
  ]

dst.addr5.1.020.default:                          ; preds = %19
  unreachable

dst.addr5.1.020.case.0:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_0, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.1:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_1, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.2:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_2, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.3:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_3, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

; <label>:20:                                     ; preds = %17
  %src.addr6.1.0.021 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  switch i64 %for.loop.idx74, label %dst.addr5.1.0.022.default [
    i64 0, label %dst.addr5.1.0.022.case.0
    i64 1, label %dst.addr5.1.0.022.case.1
    i64 2, label %dst.addr5.1.0.022.case.2
    i64 3, label %dst.addr5.1.0.022.case.3
  ]

dst.addr5.1.0.022.default:                        ; preds = %22
  unreachable

dst.addr5.1.0.022.case.0:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_0, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.1:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_1, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.2:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_2, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.3:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_3, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

; <label>:23:                                     ; preds = %20
  %dst.addr5.1.0.0.024_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.1.0.0.024.default [
    i64 0, label %dst.addr5.1.0.0.024.case.0
    i64 1, label %dst.addr5.1.0.0.024.case.1
    i64 2, label %dst.addr5.1.0.0.024.case.2
    i64 3, label %dst.addr5.1.0.0.024.case.3
  ]

dst.addr5.1.0.0.024.default:                      ; preds = %23
  unreachable

dst.addr5.1.0.0.024.case.0:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_0, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.1:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_1, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.2:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_2, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.3:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_3, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.118.exit:                               ; preds = %dst.addr5.1.0.0.024.case.3, %dst.addr5.1.0.0.024.case.2, %dst.addr5.1.0.0.024.case.1, %dst.addr5.1.0.0.024.case.0, %dst.addr5.1.0.022.case.3, %dst.addr5.1.0.022.case.2, %dst.addr5.1.0.022.case.1, %dst.addr5.1.0.022.case.0, %dst.addr5.1.020.case.3, %dst.addr5.1.020.case.2, %dst.addr5.1.020.case.1, %dst.addr5.1.020.case.0, %dst.addr5.118.case.3, %dst.addr5.118.case.2, %dst.addr5.118.case.1, %dst.addr5.118.case.0
  %src.addr6.225 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2
  %24 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %dst.addr5.118.exit
  switch i64 %for.loop.idx74, label %dst.addr5.226.default [
    i64 0, label %dst.addr5.226.case.0
    i64 1, label %dst.addr5.226.case.1
    i64 2, label %dst.addr5.226.case.2
    i64 3, label %dst.addr5.226.case.3
  ]

dst.addr5.226.default:                            ; preds = %26
  unreachable

dst.addr5.226.case.0:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_0, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.1:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_1, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.2:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_2, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.3:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_3, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

; <label>:27:                                     ; preds = %dst.addr5.118.exit
  %src.addr6.2.027 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %28 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %27
  switch i64 %for.loop.idx74, label %dst.addr5.2.028.default [
    i64 0, label %dst.addr5.2.028.case.0
    i64 1, label %dst.addr5.2.028.case.1
    i64 2, label %dst.addr5.2.028.case.2
    i64 3, label %dst.addr5.2.028.case.3
  ]

dst.addr5.2.028.default:                          ; preds = %29
  unreachable

dst.addr5.2.028.case.0:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_0, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.1:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_1, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.2:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_2, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.3:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_3, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

; <label>:30:                                     ; preds = %27
  %src.addr6.2.0.029 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %31 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %30
  switch i64 %for.loop.idx74, label %dst.addr5.2.0.030.default [
    i64 0, label %dst.addr5.2.0.030.case.0
    i64 1, label %dst.addr5.2.0.030.case.1
    i64 2, label %dst.addr5.2.0.030.case.2
    i64 3, label %dst.addr5.2.0.030.case.3
  ]

dst.addr5.2.0.030.default:                        ; preds = %32
  unreachable

dst.addr5.2.0.030.case.0:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_0, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.1:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_1, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.2:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_2, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.3:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_3, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

; <label>:33:                                     ; preds = %30
  %dst.addr5.2.0.0.032_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.2.0.0.032.default [
    i64 0, label %dst.addr5.2.0.0.032.case.0
    i64 1, label %dst.addr5.2.0.0.032.case.1
    i64 2, label %dst.addr5.2.0.0.032.case.2
    i64 3, label %dst.addr5.2.0.0.032.case.3
  ]

dst.addr5.2.0.0.032.default:                      ; preds = %33
  unreachable

dst.addr5.2.0.0.032.case.0:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_0, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.1:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_1, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.2:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_2, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.3:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_3, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.226.exit:                               ; preds = %dst.addr5.2.0.0.032.case.3, %dst.addr5.2.0.0.032.case.2, %dst.addr5.2.0.0.032.case.1, %dst.addr5.2.0.0.032.case.0, %dst.addr5.2.0.030.case.3, %dst.addr5.2.0.030.case.2, %dst.addr5.2.0.030.case.1, %dst.addr5.2.0.030.case.0, %dst.addr5.2.028.case.3, %dst.addr5.2.028.case.2, %dst.addr5.2.028.case.1, %dst.addr5.2.028.case.0, %dst.addr5.226.case.3, %dst.addr5.226.case.2, %dst.addr5.226.case.1, %dst.addr5.226.case.0
  %src.addr6.333 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3
  %34 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %35 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %dst.addr5.226.exit
  switch i64 %for.loop.idx74, label %dst.addr5.334.default [
    i64 0, label %dst.addr5.334.case.0
    i64 1, label %dst.addr5.334.case.1
    i64 2, label %dst.addr5.334.case.2
    i64 3, label %dst.addr5.334.case.3
  ]

dst.addr5.334.default:                            ; preds = %36
  unreachable

dst.addr5.334.case.0:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_0, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.1:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_1, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.2:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_2, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.3:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_3, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

; <label>:37:                                     ; preds = %dst.addr5.226.exit
  %src.addr6.3.035 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %38 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  switch i64 %for.loop.idx74, label %dst.addr5.3.036.default [
    i64 0, label %dst.addr5.3.036.case.0
    i64 1, label %dst.addr5.3.036.case.1
    i64 2, label %dst.addr5.3.036.case.2
    i64 3, label %dst.addr5.3.036.case.3
  ]

dst.addr5.3.036.default:                          ; preds = %39
  unreachable

dst.addr5.3.036.case.0:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_0, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.1:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_1, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.2:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_2, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.3:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_3, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

; <label>:40:                                     ; preds = %37
  %src.addr6.3.0.037 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %41 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %40
  switch i64 %for.loop.idx74, label %dst.addr5.3.0.038.default [
    i64 0, label %dst.addr5.3.0.038.case.0
    i64 1, label %dst.addr5.3.0.038.case.1
    i64 2, label %dst.addr5.3.0.038.case.2
    i64 3, label %dst.addr5.3.0.038.case.3
  ]

dst.addr5.3.0.038.default:                        ; preds = %42
  unreachable

dst.addr5.3.0.038.case.0:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_0, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.1:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_1, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.2:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_2, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.3:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_3, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

; <label>:43:                                     ; preds = %40
  %dst.addr5.3.0.0.040_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.3.0.0.040.default [
    i64 0, label %dst.addr5.3.0.0.040.case.0
    i64 1, label %dst.addr5.3.0.0.040.case.1
    i64 2, label %dst.addr5.3.0.0.040.case.2
    i64 3, label %dst.addr5.3.0.0.040.case.3
  ]

dst.addr5.3.0.0.040.default:                      ; preds = %43
  unreachable

dst.addr5.3.0.0.040.case.0:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_0, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.1:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_1, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.2:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_2, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.3:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_3, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.334.exit:                               ; preds = %dst.addr5.3.0.0.040.case.3, %dst.addr5.3.0.0.040.case.2, %dst.addr5.3.0.0.040.case.1, %dst.addr5.3.0.0.040.case.0, %dst.addr5.3.0.038.case.3, %dst.addr5.3.0.038.case.2, %dst.addr5.3.0.038.case.1, %dst.addr5.3.0.038.case.0, %dst.addr5.3.036.case.3, %dst.addr5.3.036.case.2, %dst.addr5.3.036.case.1, %dst.addr5.3.036.case.0, %dst.addr5.334.case.3, %dst.addr5.334.case.2, %dst.addr5.334.case.1, %dst.addr5.334.case.0
  %src.addr6.441 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4
  %44 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %45 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %dst.addr5.334.exit
  switch i64 %for.loop.idx74, label %dst.addr5.442.default [
    i64 0, label %dst.addr5.442.case.0
    i64 1, label %dst.addr5.442.case.1
    i64 2, label %dst.addr5.442.case.2
    i64 3, label %dst.addr5.442.case.3
  ]

dst.addr5.442.default:                            ; preds = %46
  unreachable

dst.addr5.442.case.0:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_0, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.1:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_1, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.2:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_2, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.3:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_3, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

; <label>:47:                                     ; preds = %dst.addr5.334.exit
  %src.addr6.4.043 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %48 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %47
  switch i64 %for.loop.idx74, label %dst.addr5.4.044.default [
    i64 0, label %dst.addr5.4.044.case.0
    i64 1, label %dst.addr5.4.044.case.1
    i64 2, label %dst.addr5.4.044.case.2
    i64 3, label %dst.addr5.4.044.case.3
  ]

dst.addr5.4.044.default:                          ; preds = %49
  unreachable

dst.addr5.4.044.case.0:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_0, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.1:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_1, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.2:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_2, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.3:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_3, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

; <label>:50:                                     ; preds = %47
  %src.addr6.4.0.045 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %51 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %50
  switch i64 %for.loop.idx74, label %dst.addr5.4.0.046.default [
    i64 0, label %dst.addr5.4.0.046.case.0
    i64 1, label %dst.addr5.4.0.046.case.1
    i64 2, label %dst.addr5.4.0.046.case.2
    i64 3, label %dst.addr5.4.0.046.case.3
  ]

dst.addr5.4.0.046.default:                        ; preds = %52
  unreachable

dst.addr5.4.0.046.case.0:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_0, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.1:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_1, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.2:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_2, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.3:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_3, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

; <label>:53:                                     ; preds = %50
  %dst.addr5.4.0.0.048_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.4.0.0.048.default [
    i64 0, label %dst.addr5.4.0.0.048.case.0
    i64 1, label %dst.addr5.4.0.0.048.case.1
    i64 2, label %dst.addr5.4.0.0.048.case.2
    i64 3, label %dst.addr5.4.0.0.048.case.3
  ]

dst.addr5.4.0.0.048.default:                      ; preds = %53
  unreachable

dst.addr5.4.0.0.048.case.0:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_0, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.1:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_1, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.2:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_2, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.3:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_3, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.442.exit:                               ; preds = %dst.addr5.4.0.0.048.case.3, %dst.addr5.4.0.0.048.case.2, %dst.addr5.4.0.0.048.case.1, %dst.addr5.4.0.0.048.case.0, %dst.addr5.4.0.046.case.3, %dst.addr5.4.0.046.case.2, %dst.addr5.4.0.046.case.1, %dst.addr5.4.0.046.case.0, %dst.addr5.4.044.case.3, %dst.addr5.4.044.case.2, %dst.addr5.4.044.case.1, %dst.addr5.4.044.case.0, %dst.addr5.442.case.3, %dst.addr5.442.case.2, %dst.addr5.442.case.1, %dst.addr5.442.case.0
  %src.addr6.549 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5
  %54 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %dst.addr5.442.exit
  switch i64 %for.loop.idx74, label %dst.addr5.550.default [
    i64 0, label %dst.addr5.550.case.0
    i64 1, label %dst.addr5.550.case.1
    i64 2, label %dst.addr5.550.case.2
    i64 3, label %dst.addr5.550.case.3
  ]

dst.addr5.550.default:                            ; preds = %56
  unreachable

dst.addr5.550.case.0:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_0, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.1:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_1, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.2:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_2, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.3:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_3, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

; <label>:57:                                     ; preds = %dst.addr5.442.exit
  %src.addr6.5.051 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %58 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %57
  switch i64 %for.loop.idx74, label %dst.addr5.5.052.default [
    i64 0, label %dst.addr5.5.052.case.0
    i64 1, label %dst.addr5.5.052.case.1
    i64 2, label %dst.addr5.5.052.case.2
    i64 3, label %dst.addr5.5.052.case.3
  ]

dst.addr5.5.052.default:                          ; preds = %59
  unreachable

dst.addr5.5.052.case.0:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_0, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.1:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_1, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.2:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_2, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.3:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_3, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

; <label>:60:                                     ; preds = %57
  %src.addr6.5.0.053 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %61 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %60
  switch i64 %for.loop.idx74, label %dst.addr5.5.0.054.default [
    i64 0, label %dst.addr5.5.0.054.case.0
    i64 1, label %dst.addr5.5.0.054.case.1
    i64 2, label %dst.addr5.5.0.054.case.2
    i64 3, label %dst.addr5.5.0.054.case.3
  ]

dst.addr5.5.0.054.default:                        ; preds = %62
  unreachable

dst.addr5.5.0.054.case.0:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_0, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.1:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_1, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.2:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_2, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.3:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_3, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

; <label>:63:                                     ; preds = %60
  %dst.addr5.5.0.0.056_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.5.0.0.056.default [
    i64 0, label %dst.addr5.5.0.0.056.case.0
    i64 1, label %dst.addr5.5.0.0.056.case.1
    i64 2, label %dst.addr5.5.0.0.056.case.2
    i64 3, label %dst.addr5.5.0.0.056.case.3
  ]

dst.addr5.5.0.0.056.default:                      ; preds = %63
  unreachable

dst.addr5.5.0.0.056.case.0:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_0, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.1:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_1, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.2:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_2, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.3:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_3, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.550.exit:                               ; preds = %dst.addr5.5.0.0.056.case.3, %dst.addr5.5.0.0.056.case.2, %dst.addr5.5.0.0.056.case.1, %dst.addr5.5.0.0.056.case.0, %dst.addr5.5.0.054.case.3, %dst.addr5.5.0.054.case.2, %dst.addr5.5.0.054.case.1, %dst.addr5.5.0.054.case.0, %dst.addr5.5.052.case.3, %dst.addr5.5.052.case.2, %dst.addr5.5.052.case.1, %dst.addr5.5.052.case.0, %dst.addr5.550.case.3, %dst.addr5.550.case.2, %dst.addr5.550.case.1, %dst.addr5.550.case.0
  %src.addr6.657 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6
  %64 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %65 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %dst.addr5.550.exit
  switch i64 %for.loop.idx74, label %dst.addr5.658.default [
    i64 0, label %dst.addr5.658.case.0
    i64 1, label %dst.addr5.658.case.1
    i64 2, label %dst.addr5.658.case.2
    i64 3, label %dst.addr5.658.case.3
  ]

dst.addr5.658.default:                            ; preds = %66
  unreachable

dst.addr5.658.case.0:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_0, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.1:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_1, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.2:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_2, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.3:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_3, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

; <label>:67:                                     ; preds = %dst.addr5.550.exit
  %src.addr6.6.059 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %68 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %67
  switch i64 %for.loop.idx74, label %dst.addr5.6.060.default [
    i64 0, label %dst.addr5.6.060.case.0
    i64 1, label %dst.addr5.6.060.case.1
    i64 2, label %dst.addr5.6.060.case.2
    i64 3, label %dst.addr5.6.060.case.3
  ]

dst.addr5.6.060.default:                          ; preds = %69
  unreachable

dst.addr5.6.060.case.0:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_0, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.1:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_1, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.2:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_2, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.3:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_3, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

; <label>:70:                                     ; preds = %67
  %src.addr6.6.0.061 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %71 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %70
  switch i64 %for.loop.idx74, label %dst.addr5.6.0.062.default [
    i64 0, label %dst.addr5.6.0.062.case.0
    i64 1, label %dst.addr5.6.0.062.case.1
    i64 2, label %dst.addr5.6.0.062.case.2
    i64 3, label %dst.addr5.6.0.062.case.3
  ]

dst.addr5.6.0.062.default:                        ; preds = %72
  unreachable

dst.addr5.6.0.062.case.0:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_0, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.1:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_1, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.2:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_2, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.3:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_3, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

; <label>:73:                                     ; preds = %70
  %dst.addr5.6.0.0.064_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.6.0.0.064.default [
    i64 0, label %dst.addr5.6.0.0.064.case.0
    i64 1, label %dst.addr5.6.0.0.064.case.1
    i64 2, label %dst.addr5.6.0.0.064.case.2
    i64 3, label %dst.addr5.6.0.0.064.case.3
  ]

dst.addr5.6.0.0.064.default:                      ; preds = %73
  unreachable

dst.addr5.6.0.0.064.case.0:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_0, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.1:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_1, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.2:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_2, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.3:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_3, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.658.exit:                               ; preds = %dst.addr5.6.0.0.064.case.3, %dst.addr5.6.0.0.064.case.2, %dst.addr5.6.0.0.064.case.1, %dst.addr5.6.0.0.064.case.0, %dst.addr5.6.0.062.case.3, %dst.addr5.6.0.062.case.2, %dst.addr5.6.0.062.case.1, %dst.addr5.6.0.062.case.0, %dst.addr5.6.060.case.3, %dst.addr5.6.060.case.2, %dst.addr5.6.060.case.1, %dst.addr5.6.060.case.0, %dst.addr5.658.case.3, %dst.addr5.658.case.2, %dst.addr5.658.case.1, %dst.addr5.658.case.0
  %src.addr6.765 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7
  %74 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %75 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %dst.addr5.658.exit
  switch i64 %for.loop.idx74, label %dst.addr5.766.default [
    i64 0, label %dst.addr5.766.case.0
    i64 1, label %dst.addr5.766.case.1
    i64 2, label %dst.addr5.766.case.2
    i64 3, label %dst.addr5.766.case.3
  ]

dst.addr5.766.default:                            ; preds = %76
  unreachable

dst.addr5.766.case.0:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_0, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.1:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_1, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.2:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_2, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.3:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_3, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

; <label>:77:                                     ; preds = %dst.addr5.658.exit
  %src.addr6.7.067 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %78 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %77
  switch i64 %for.loop.idx74, label %dst.addr5.7.068.default [
    i64 0, label %dst.addr5.7.068.case.0
    i64 1, label %dst.addr5.7.068.case.1
    i64 2, label %dst.addr5.7.068.case.2
    i64 3, label %dst.addr5.7.068.case.3
  ]

dst.addr5.7.068.default:                          ; preds = %79
  unreachable

dst.addr5.7.068.case.0:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_0, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.1:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_1, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.2:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_2, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.3:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_3, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

; <label>:80:                                     ; preds = %77
  %src.addr6.7.0.069 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %81 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %80
  switch i64 %for.loop.idx74, label %dst.addr5.7.0.070.default [
    i64 0, label %dst.addr5.7.0.070.case.0
    i64 1, label %dst.addr5.7.0.070.case.1
    i64 2, label %dst.addr5.7.0.070.case.2
    i64 3, label %dst.addr5.7.0.070.case.3
  ]

dst.addr5.7.0.070.default:                        ; preds = %82
  unreachable

dst.addr5.7.0.070.case.0:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_0, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.1:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_1, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.2:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_2, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.3:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_3, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

; <label>:83:                                     ; preds = %80
  %dst.addr5.7.0.0.072_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.7.0.0.072.default [
    i64 0, label %dst.addr5.7.0.0.072.case.0
    i64 1, label %dst.addr5.7.0.0.072.case.1
    i64 2, label %dst.addr5.7.0.0.072.case.2
    i64 3, label %dst.addr5.7.0.0.072.case.3
  ]

dst.addr5.7.0.0.072.default:                      ; preds = %83
  unreachable

dst.addr5.7.0.0.072.case.0:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_0, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.1:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_1, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.2:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_2, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.3:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_3, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %dst.addr5.7.0.0.072.case.3, %dst.addr5.7.0.0.072.case.2, %dst.addr5.7.0.0.072.case.1, %dst.addr5.7.0.0.072.case.0, %dst.addr5.7.0.070.case.3, %dst.addr5.7.0.070.case.2, %dst.addr5.7.0.070.case.1, %dst.addr5.7.0.070.case.0, %dst.addr5.7.068.case.3, %dst.addr5.7.068.case.2, %dst.addr5.7.068.case.1, %dst.addr5.7.068.case.0, %dst.addr5.766.case.3, %dst.addr5.766.case.2, %dst.addr5.766.case.1, %dst.addr5.766.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx373, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx74, 1
  %exitcond75 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond75, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_in(i32* readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1", i1* readonly "orig.arg.no"="2", i1* noalias align 512 "orig.arg.no"="3", [4 x [4096 x %struct.dpkt_t]]* "orig.arg.no"="4", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_3) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call void @onebyonecpy_hls.p0a4a4096struct.dpkt_t.3.10([4096 x %struct.dpkt_t]* %_0, [4096 x %struct.dpkt_t]* %_1, [4096 x %struct.dpkt_t]* %_2, [4096 x %struct.dpkt_t]* %_3, [4 x [4096 x %struct.dpkt_t]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* noalias nocapture "orig.arg.no"="0", %struct.ap_uint* noalias nocapture "orig.arg.no"="1") #3 {
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
  %10 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #3 {
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
  %10 = getelementptr %struct.ap_int_base, %struct.ap_int_base* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #3 {
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
  %10 = getelementptr %struct.ssdm_int, %struct.ssdm_int* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a4a4096struct.dpkt_t.15.22([4 x [4096 x %struct.dpkt_t]]* noalias "orig.arg.no"="0", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_3) #4 {
entry:
  %1 = icmp eq [4 x [4096 x %struct.dpkt_t]]* %0, null
  %2 = icmp eq [4096 x %struct.dpkt_t]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx74 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx373 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %src.addr6.09_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0
  %_01 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_12 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_23 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_34 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_05 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_05, label %src.addr6.09.case.0, label %.case.0179

.case.1:                                          ; preds = %for.loop2
  %_16 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_16, label %src.addr6.09.case.1, label %.case.1180

.case.2:                                          ; preds = %for.loop2
  %_27 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_27, label %src.addr6.09.case.2, label %.case.2181

.exit:                                            ; preds = %for.loop2
  %_38 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_38, label %src.addr6.09.case.3, label %.exit178

src.addr6.09.case.0:                              ; preds = %.case.0
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_0)
  br label %.case.015

src.addr6.09.case.1:                              ; preds = %.case.1
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_1)
  br label %.case.116

src.addr6.09.case.2:                              ; preds = %.case.2
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_2)
  br label %.case.217

src.addr6.09.case.3:                              ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_3)
  br label %.exit14

.case.0179:                                       ; preds = %.case.0
  %src.addr6.0.011_04 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.0128 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %_0183 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_0183, label %src.addr6.0.011.case.0, label %.case.0189

.case.1180:                                       ; preds = %.case.1
  %src.addr6.0.011_121 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01224 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0
  %_1184 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_1184, label %src.addr6.0.011.case.1, label %.case.1190

.case.2181:                                       ; preds = %.case.2
  %src.addr6.0.011_233 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01235 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0
  %_2185 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_2185, label %src.addr6.0.011.case.2, label %.case.2191

.exit178:                                         ; preds = %.exit
  %src.addr6.0.011_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0
  %_3186 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_3186, label %src.addr6.0.011.case.3, label %.exit188

src.addr6.0.011.case.0:                           ; preds = %.case.0179
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.0128, %struct.ap_int_base* %src.addr6.0.011_04)
  br label %.case.015

src.addr6.0.011.case.1:                           ; preds = %.case.1180
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01224, %struct.ap_int_base* %src.addr6.0.011_121)
  br label %.case.116

src.addr6.0.011.case.2:                           ; preds = %.case.2181
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01235, %struct.ap_int_base* %src.addr6.0.011_233)
  br label %.case.217

src.addr6.0.011.case.3:                           ; preds = %.exit178
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.012, %struct.ap_int_base* %src.addr6.0.011_3)
  br label %.exit14

.case.0189:                                       ; preds = %.case.0179
  %src.addr6.0.0.013_056 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.01460 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_0193 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_0193, label %src.addr6.0.0.013.case.0, label %.case.0199

.case.1190:                                       ; preds = %.case.1180
  %src.addr6.0.0.013_173 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.01476 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_1194 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_1194, label %src.addr6.0.0.013.case.1, label %.case.1200

.case.2191:                                       ; preds = %.case.2181
  %src.addr6.0.0.013_285 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.01487 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_2195 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_2195, label %src.addr6.0.0.013.case.2, label %.case.2201

.exit188:                                         ; preds = %.exit178
  %src.addr6.0.0.013_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_3196 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_3196, label %src.addr6.0.0.013.case.3, label %.case.3202

src.addr6.0.0.013.case.0:                         ; preds = %.case.0189
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.01460, %struct.ssdm_int* %src.addr6.0.0.013_056)
  br label %.case.015

src.addr6.0.0.013.case.1:                         ; preds = %.case.1190
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.01476, %struct.ssdm_int* %src.addr6.0.0.013_173)
  br label %.case.116

src.addr6.0.0.013.case.2:                         ; preds = %.case.2191
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.01487, %struct.ssdm_int* %src.addr6.0.0.013_285)
  br label %.case.217

src.addr6.0.0.013.case.3:                         ; preds = %.exit188
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014, %struct.ssdm_int* %src.addr6.0.0.013_3)
  br label %.exit14

.case.0199:                                       ; preds = %.case.0189
  %dst.addr5.0.0.0.016108 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016108, i8* align 1 %_01, i64 1, i1 false)
  br label %.case.015

.case.1200:                                       ; preds = %.case.1190
  %dst.addr5.0.0.0.016111 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016111, i8* align 1 %_12, i64 1, i1 false)
  br label %.case.116

.case.2201:                                       ; preds = %.case.2191
  %dst.addr5.0.0.0.016114 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016114, i8* align 1 %_23, i64 1, i1 false)
  br label %.case.217

.case.3202:                                       ; preds = %.exit188
  %dst.addr5.0.0.0.016 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016, i8* align 1 %_34, i64 1, i1 false)
  br label %.exit14

.case.015:                                        ; preds = %.case.0199, %src.addr6.0.0.013.case.0, %src.addr6.0.011.case.0, %src.addr6.09.case.0
  %src.addr6.117_0116 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118120 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1
  %_09121 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_019 = call i1 @fpga_fifo_exist_1(i8* %_09121)
  br i1 %_019, label %src.addr6.117.case.0, label %.case.0169

.case.116:                                        ; preds = %.case.1200, %src.addr6.0.0.013.case.1, %src.addr6.0.011.case.1, %src.addr6.09.case.1
  %src.addr6.117_1146 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118149 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1
  %_110151 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_120 = call i1 @fpga_fifo_exist_1(i8* %_110151)
  br i1 %_120, label %src.addr6.117.case.1, label %.case.1170

.case.217:                                        ; preds = %.case.2201, %src.addr6.0.0.013.case.2, %src.addr6.0.011.case.2, %src.addr6.09.case.2
  %src.addr6.117_2167 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118169 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1
  %_211172 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_221 = call i1 @fpga_fifo_exist_1(i8* %_211172)
  br i1 %_221, label %src.addr6.117.case.2, label %.case.2171

.exit14:                                          ; preds = %.case.3202, %src.addr6.0.0.013.case.3, %src.addr6.0.011.case.3, %src.addr6.09.case.3
  %src.addr6.117_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1
  %_312 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_322 = call i1 @fpga_fifo_exist_1(i8* %_312)
  br i1 %_322, label %src.addr6.117.case.3, label %.exit168

src.addr6.117.case.0:                             ; preds = %.case.015
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118120, %struct.ap_uint* %src.addr6.117_0116)
  br label %.case.029

src.addr6.117.case.1:                             ; preds = %.case.116
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118149, %struct.ap_uint* %src.addr6.117_1146)
  br label %.case.130

src.addr6.117.case.2:                             ; preds = %.case.217
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118169, %struct.ap_uint* %src.addr6.117_2167)
  br label %.case.231

src.addr6.117.case.3:                             ; preds = %.exit14
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_3)
  br label %.exit28

.case.0169:                                       ; preds = %.case.015
  %src.addr6.1.019_0202 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020206 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %_0173 = call i1 @fpga_fifo_exist_1(i8* %_09121)
  br i1 %_0173, label %src.addr6.1.019.case.0, label %.case.0205

.case.1170:                                       ; preds = %.case.116
  %src.addr6.1.019_1227 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020230 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0
  %_1174 = call i1 @fpga_fifo_exist_1(i8* %_110151)
  br i1 %_1174, label %src.addr6.1.019.case.1, label %.case.1206

.case.2171:                                       ; preds = %.case.217
  %src.addr6.1.019_2243 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020245 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0
  %_2175 = call i1 @fpga_fifo_exist_1(i8* %_211172)
  br i1 %_2175, label %src.addr6.1.019.case.2, label %.case.2207

.exit168:                                         ; preds = %.exit14
  %src.addr6.1.019_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0
  %_3176 = call i1 @fpga_fifo_exist_1(i8* %_312)
  br i1 %_3176, label %src.addr6.1.019.case.3, label %.exit204

src.addr6.1.019.case.0:                           ; preds = %.case.0169
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020206, %struct.ap_int_base* %src.addr6.1.019_0202)
  br label %.case.029

src.addr6.1.019.case.1:                           ; preds = %.case.1170
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020230, %struct.ap_int_base* %src.addr6.1.019_1227)
  br label %.case.130

src.addr6.1.019.case.2:                           ; preds = %.case.2171
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020245, %struct.ap_int_base* %src.addr6.1.019_2243)
  br label %.case.231

src.addr6.1.019.case.3:                           ; preds = %.exit168
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020, %struct.ap_int_base* %src.addr6.1.019_3)
  br label %.exit28

.case.0205:                                       ; preds = %.case.0169
  %src.addr6.1.0.021_0274 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022278 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_0209 = call i1 @fpga_fifo_exist_1(i8* %_09121)
  br i1 %_0209, label %src.addr6.1.0.021.case.0, label %.case.0215

.case.1206:                                       ; preds = %.case.1170
  %src.addr6.1.0.021_1299 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022302 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_1210 = call i1 @fpga_fifo_exist_1(i8* %_110151)
  br i1 %_1210, label %src.addr6.1.0.021.case.1, label %.case.1216

.case.2207:                                       ; preds = %.case.2171
  %src.addr6.1.0.021_2315 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022317 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_2211 = call i1 @fpga_fifo_exist_1(i8* %_211172)
  br i1 %_2211, label %src.addr6.1.0.021.case.2, label %.case.2217

.exit204:                                         ; preds = %.exit168
  %src.addr6.1.0.021_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_3212 = call i1 @fpga_fifo_exist_1(i8* %_312)
  br i1 %_3212, label %src.addr6.1.0.021.case.3, label %.case.3218

src.addr6.1.0.021.case.0:                         ; preds = %.case.0205
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022278, %struct.ssdm_int* %src.addr6.1.0.021_0274)
  br label %.case.029

src.addr6.1.0.021.case.1:                         ; preds = %.case.1206
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022302, %struct.ssdm_int* %src.addr6.1.0.021_1299)
  br label %.case.130

src.addr6.1.0.021.case.2:                         ; preds = %.case.2207
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022317, %struct.ssdm_int* %src.addr6.1.0.021_2315)
  br label %.case.231

src.addr6.1.0.021.case.3:                         ; preds = %.exit204
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022, %struct.ssdm_int* %src.addr6.1.0.021_3)
  br label %.exit28

.case.0215:                                       ; preds = %.case.0205
  %dst.addr5.1.0.0.024346 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024346, i8* align 1 %_09121, i64 1, i1 false)
  br label %.case.029

.case.1216:                                       ; preds = %.case.1206
  %dst.addr5.1.0.0.024350 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024350, i8* align 1 %_110151, i64 1, i1 false)
  br label %.case.130

.case.2217:                                       ; preds = %.case.2207
  %dst.addr5.1.0.0.024354 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024354, i8* align 1 %_211172, i64 1, i1 false)
  br label %.case.231

.case.3218:                                       ; preds = %.exit204
  %dst.addr5.1.0.0.024 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024, i8* align 1 %_312, i64 1, i1 false)
  br label %.exit28

.case.029:                                        ; preds = %.case.0215, %src.addr6.1.0.021.case.0, %src.addr6.1.019.case.0, %src.addr6.117.case.0
  %src.addr6.225_0357 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226361 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2
  %_023362 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_033 = call i1 @fpga_fifo_exist_1(i8* %_023362)
  br i1 %_033, label %src.addr6.225.case.0, label %.case.0159

.case.130:                                        ; preds = %.case.1216, %src.addr6.1.0.021.case.1, %src.addr6.1.019.case.1, %src.addr6.117.case.1
  %src.addr6.225_1387 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226390 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2
  %_124392 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_134 = call i1 @fpga_fifo_exist_1(i8* %_124392)
  br i1 %_134, label %src.addr6.225.case.1, label %.case.1160

.case.231:                                        ; preds = %.case.2217, %src.addr6.1.0.021.case.2, %src.addr6.1.019.case.2, %src.addr6.117.case.2
  %src.addr6.225_2408 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226410 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2
  %_225413 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_235 = call i1 @fpga_fifo_exist_1(i8* %_225413)
  br i1 %_235, label %src.addr6.225.case.2, label %.case.2161

.exit28:                                          ; preds = %.case.3218, %src.addr6.1.0.021.case.3, %src.addr6.1.019.case.3, %src.addr6.117.case.3
  %src.addr6.225_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2
  %_326 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_336 = call i1 @fpga_fifo_exist_1(i8* %_326)
  br i1 %_336, label %src.addr6.225.case.3, label %.exit158

src.addr6.225.case.0:                             ; preds = %.case.029
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226361, %struct.ap_uint* %src.addr6.225_0357)
  br label %.case.043

src.addr6.225.case.1:                             ; preds = %.case.130
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226390, %struct.ap_uint* %src.addr6.225_1387)
  br label %.case.144

src.addr6.225.case.2:                             ; preds = %.case.231
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226410, %struct.ap_uint* %src.addr6.225_2408)
  br label %.case.245

src.addr6.225.case.3:                             ; preds = %.exit28
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_3)
  br label %.exit42

.case.0159:                                       ; preds = %.case.029
  %src.addr6.2.027_0443 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028447 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %_0163 = call i1 @fpga_fifo_exist_1(i8* %_023362)
  br i1 %_0163, label %src.addr6.2.027.case.0, label %.case.0221

.case.1160:                                       ; preds = %.case.130
  %src.addr6.2.027_1468 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028471 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0
  %_1164 = call i1 @fpga_fifo_exist_1(i8* %_124392)
  br i1 %_1164, label %src.addr6.2.027.case.1, label %.case.1222

.case.2161:                                       ; preds = %.case.231
  %src.addr6.2.027_2484 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028486 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0
  %_2165 = call i1 @fpga_fifo_exist_1(i8* %_225413)
  br i1 %_2165, label %src.addr6.2.027.case.2, label %.case.2223

.exit158:                                         ; preds = %.exit28
  %src.addr6.2.027_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0
  %_3166 = call i1 @fpga_fifo_exist_1(i8* %_326)
  br i1 %_3166, label %src.addr6.2.027.case.3, label %.exit220

src.addr6.2.027.case.0:                           ; preds = %.case.0159
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028447, %struct.ap_int_base* %src.addr6.2.027_0443)
  br label %.case.043

src.addr6.2.027.case.1:                           ; preds = %.case.1160
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028471, %struct.ap_int_base* %src.addr6.2.027_1468)
  br label %.case.144

src.addr6.2.027.case.2:                           ; preds = %.case.2161
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028486, %struct.ap_int_base* %src.addr6.2.027_2484)
  br label %.case.245

src.addr6.2.027.case.3:                           ; preds = %.exit158
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028, %struct.ap_int_base* %src.addr6.2.027_3)
  br label %.exit42

.case.0221:                                       ; preds = %.case.0159
  %src.addr6.2.0.029_0515 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030519 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_0225 = call i1 @fpga_fifo_exist_1(i8* %_023362)
  br i1 %_0225, label %src.addr6.2.0.029.case.0, label %.case.0231

.case.1222:                                       ; preds = %.case.1160
  %src.addr6.2.0.029_1540 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030543 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_1226 = call i1 @fpga_fifo_exist_1(i8* %_124392)
  br i1 %_1226, label %src.addr6.2.0.029.case.1, label %.case.1232

.case.2223:                                       ; preds = %.case.2161
  %src.addr6.2.0.029_2556 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030558 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_2227 = call i1 @fpga_fifo_exist_1(i8* %_225413)
  br i1 %_2227, label %src.addr6.2.0.029.case.2, label %.case.2233

.exit220:                                         ; preds = %.exit158
  %src.addr6.2.0.029_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_3228 = call i1 @fpga_fifo_exist_1(i8* %_326)
  br i1 %_3228, label %src.addr6.2.0.029.case.3, label %.case.3234

src.addr6.2.0.029.case.0:                         ; preds = %.case.0221
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030519, %struct.ssdm_int* %src.addr6.2.0.029_0515)
  br label %.case.043

src.addr6.2.0.029.case.1:                         ; preds = %.case.1222
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030543, %struct.ssdm_int* %src.addr6.2.0.029_1540)
  br label %.case.144

src.addr6.2.0.029.case.2:                         ; preds = %.case.2223
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030558, %struct.ssdm_int* %src.addr6.2.0.029_2556)
  br label %.case.245

src.addr6.2.0.029.case.3:                         ; preds = %.exit220
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030, %struct.ssdm_int* %src.addr6.2.0.029_3)
  br label %.exit42

.case.0231:                                       ; preds = %.case.0221
  %dst.addr5.2.0.0.032587 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032587, i8* align 1 %_023362, i64 1, i1 false)
  br label %.case.043

.case.1232:                                       ; preds = %.case.1222
  %dst.addr5.2.0.0.032591 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032591, i8* align 1 %_124392, i64 1, i1 false)
  br label %.case.144

.case.2233:                                       ; preds = %.case.2223
  %dst.addr5.2.0.0.032595 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032595, i8* align 1 %_225413, i64 1, i1 false)
  br label %.case.245

.case.3234:                                       ; preds = %.exit220
  %dst.addr5.2.0.0.032 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032, i8* align 1 %_326, i64 1, i1 false)
  br label %.exit42

.case.043:                                        ; preds = %.case.0231, %src.addr6.2.0.029.case.0, %src.addr6.2.027.case.0, %src.addr6.225.case.0
  %src.addr6.333_0598 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334602 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3
  %_037603 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_047 = call i1 @fpga_fifo_exist_1(i8* %_037603)
  br i1 %_047, label %src.addr6.333.case.0, label %.case.0149

.case.144:                                        ; preds = %.case.1232, %src.addr6.2.0.029.case.1, %src.addr6.2.027.case.1, %src.addr6.225.case.1
  %src.addr6.333_1628 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334631 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3
  %_138633 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_148 = call i1 @fpga_fifo_exist_1(i8* %_138633)
  br i1 %_148, label %src.addr6.333.case.1, label %.case.1150

.case.245:                                        ; preds = %.case.2233, %src.addr6.2.0.029.case.2, %src.addr6.2.027.case.2, %src.addr6.225.case.2
  %src.addr6.333_2649 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334651 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3
  %_239654 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_249 = call i1 @fpga_fifo_exist_1(i8* %_239654)
  br i1 %_249, label %src.addr6.333.case.2, label %.case.2151

.exit42:                                          ; preds = %.case.3234, %src.addr6.2.0.029.case.3, %src.addr6.2.027.case.3, %src.addr6.225.case.3
  %src.addr6.333_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3
  %_340 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_350 = call i1 @fpga_fifo_exist_1(i8* %_340)
  br i1 %_350, label %src.addr6.333.case.3, label %.exit148

src.addr6.333.case.0:                             ; preds = %.case.043
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334602, %struct.ap_uint* %src.addr6.333_0598)
  br label %.case.057

src.addr6.333.case.1:                             ; preds = %.case.144
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334631, %struct.ap_uint* %src.addr6.333_1628)
  br label %.case.158

src.addr6.333.case.2:                             ; preds = %.case.245
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334651, %struct.ap_uint* %src.addr6.333_2649)
  br label %.case.259

src.addr6.333.case.3:                             ; preds = %.exit42
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_3)
  br label %.exit56

.case.0149:                                       ; preds = %.case.043
  %src.addr6.3.035_0684 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036688 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %_0153 = call i1 @fpga_fifo_exist_1(i8* %_037603)
  br i1 %_0153, label %src.addr6.3.035.case.0, label %.case.0237

.case.1150:                                       ; preds = %.case.144
  %src.addr6.3.035_1709 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036712 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0
  %_1154 = call i1 @fpga_fifo_exist_1(i8* %_138633)
  br i1 %_1154, label %src.addr6.3.035.case.1, label %.case.1238

.case.2151:                                       ; preds = %.case.245
  %src.addr6.3.035_2725 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036727 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0
  %_2155 = call i1 @fpga_fifo_exist_1(i8* %_239654)
  br i1 %_2155, label %src.addr6.3.035.case.2, label %.case.2239

.exit148:                                         ; preds = %.exit42
  %src.addr6.3.035_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0
  %_3156 = call i1 @fpga_fifo_exist_1(i8* %_340)
  br i1 %_3156, label %src.addr6.3.035.case.3, label %.exit236

src.addr6.3.035.case.0:                           ; preds = %.case.0149
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.036688, %struct.ap_int_base* %src.addr6.3.035_0684)
  br label %.case.057

src.addr6.3.035.case.1:                           ; preds = %.case.1150
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.036712, %struct.ap_int_base* %src.addr6.3.035_1709)
  br label %.case.158

src.addr6.3.035.case.2:                           ; preds = %.case.2151
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.036727, %struct.ap_int_base* %src.addr6.3.035_2725)
  br label %.case.259

src.addr6.3.035.case.3:                           ; preds = %.exit148
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.036, %struct.ap_int_base* %src.addr6.3.035_3)
  br label %.exit56

.case.0237:                                       ; preds = %.case.0149
  %src.addr6.3.0.037_0756 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038760 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_0241 = call i1 @fpga_fifo_exist_1(i8* %_037603)
  br i1 %_0241, label %src.addr6.3.0.037.case.0, label %.case.0247

.case.1238:                                       ; preds = %.case.1150
  %src.addr6.3.0.037_1781 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038784 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_1242 = call i1 @fpga_fifo_exist_1(i8* %_138633)
  br i1 %_1242, label %src.addr6.3.0.037.case.1, label %.case.1248

.case.2239:                                       ; preds = %.case.2151
  %src.addr6.3.0.037_2797 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038799 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_2243 = call i1 @fpga_fifo_exist_1(i8* %_239654)
  br i1 %_2243, label %src.addr6.3.0.037.case.2, label %.case.2249

.exit236:                                         ; preds = %.exit148
  %src.addr6.3.0.037_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_3244 = call i1 @fpga_fifo_exist_1(i8* %_340)
  br i1 %_3244, label %src.addr6.3.0.037.case.3, label %.case.3250

src.addr6.3.0.037.case.0:                         ; preds = %.case.0237
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.038760, %struct.ssdm_int* %src.addr6.3.0.037_0756)
  br label %.case.057

src.addr6.3.0.037.case.1:                         ; preds = %.case.1238
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.038784, %struct.ssdm_int* %src.addr6.3.0.037_1781)
  br label %.case.158

src.addr6.3.0.037.case.2:                         ; preds = %.case.2239
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.038799, %struct.ssdm_int* %src.addr6.3.0.037_2797)
  br label %.case.259

src.addr6.3.0.037.case.3:                         ; preds = %.exit236
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.038, %struct.ssdm_int* %src.addr6.3.0.037_3)
  br label %.exit56

.case.0247:                                       ; preds = %.case.0237
  %dst.addr5.3.0.0.040828 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040828, i8* align 1 %_037603, i64 1, i1 false)
  br label %.case.057

.case.1248:                                       ; preds = %.case.1238
  %dst.addr5.3.0.0.040832 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040832, i8* align 1 %_138633, i64 1, i1 false)
  br label %.case.158

.case.2249:                                       ; preds = %.case.2239
  %dst.addr5.3.0.0.040836 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040836, i8* align 1 %_239654, i64 1, i1 false)
  br label %.case.259

.case.3250:                                       ; preds = %.exit236
  %dst.addr5.3.0.0.040 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040, i8* align 1 %_340, i64 1, i1 false)
  br label %.exit56

.case.057:                                        ; preds = %.case.0247, %src.addr6.3.0.037.case.0, %src.addr6.3.035.case.0, %src.addr6.333.case.0
  %src.addr6.441_0839 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442843 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4
  %_051844 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_061 = call i1 @fpga_fifo_exist_1(i8* %_051844)
  br i1 %_061, label %src.addr6.441.case.0, label %.case.0139

.case.158:                                        ; preds = %.case.1248, %src.addr6.3.0.037.case.1, %src.addr6.3.035.case.1, %src.addr6.333.case.1
  %src.addr6.441_1869 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442872 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4
  %_152874 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_162 = call i1 @fpga_fifo_exist_1(i8* %_152874)
  br i1 %_162, label %src.addr6.441.case.1, label %.case.1140

.case.259:                                        ; preds = %.case.2249, %src.addr6.3.0.037.case.2, %src.addr6.3.035.case.2, %src.addr6.333.case.2
  %src.addr6.441_2890 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442892 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4
  %_253895 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_263 = call i1 @fpga_fifo_exist_1(i8* %_253895)
  br i1 %_263, label %src.addr6.441.case.2, label %.case.2141

.exit56:                                          ; preds = %.case.3250, %src.addr6.3.0.037.case.3, %src.addr6.3.035.case.3, %src.addr6.333.case.3
  %src.addr6.441_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4
  %_354 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_364 = call i1 @fpga_fifo_exist_1(i8* %_354)
  br i1 %_364, label %src.addr6.441.case.3, label %.exit138

src.addr6.441.case.0:                             ; preds = %.case.057
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442843, %struct.ap_uint* %src.addr6.441_0839)
  br label %.case.071

src.addr6.441.case.1:                             ; preds = %.case.158
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442872, %struct.ap_uint* %src.addr6.441_1869)
  br label %.case.172

src.addr6.441.case.2:                             ; preds = %.case.259
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442892, %struct.ap_uint* %src.addr6.441_2890)
  br label %.case.273

src.addr6.441.case.3:                             ; preds = %.exit56
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_3)
  br label %.exit70

.case.0139:                                       ; preds = %.case.057
  %src.addr6.4.043_0925 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044929 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %_0143 = call i1 @fpga_fifo_exist_1(i8* %_051844)
  br i1 %_0143, label %src.addr6.4.043.case.0, label %.case.0253

.case.1140:                                       ; preds = %.case.158
  %src.addr6.4.043_1950 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044953 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0
  %_1144 = call i1 @fpga_fifo_exist_1(i8* %_152874)
  br i1 %_1144, label %src.addr6.4.043.case.1, label %.case.1254

.case.2141:                                       ; preds = %.case.259
  %src.addr6.4.043_2966 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044968 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0
  %_2145 = call i1 @fpga_fifo_exist_1(i8* %_253895)
  br i1 %_2145, label %src.addr6.4.043.case.2, label %.case.2255

.exit138:                                         ; preds = %.exit56
  %src.addr6.4.043_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0
  %_3146 = call i1 @fpga_fifo_exist_1(i8* %_354)
  br i1 %_3146, label %src.addr6.4.043.case.3, label %.exit252

src.addr6.4.043.case.0:                           ; preds = %.case.0139
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.044929, %struct.ap_int_base* %src.addr6.4.043_0925)
  br label %.case.071

src.addr6.4.043.case.1:                           ; preds = %.case.1140
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.044953, %struct.ap_int_base* %src.addr6.4.043_1950)
  br label %.case.172

src.addr6.4.043.case.2:                           ; preds = %.case.2141
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.044968, %struct.ap_int_base* %src.addr6.4.043_2966)
  br label %.case.273

src.addr6.4.043.case.3:                           ; preds = %.exit138
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.044, %struct.ap_int_base* %src.addr6.4.043_3)
  br label %.exit70

.case.0253:                                       ; preds = %.case.0139
  %src.addr6.4.0.045_0997 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461001 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_0257 = call i1 @fpga_fifo_exist_1(i8* %_051844)
  br i1 %_0257, label %src.addr6.4.0.045.case.0, label %.case.0263

.case.1254:                                       ; preds = %.case.1140
  %src.addr6.4.0.045_11022 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461025 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_1258 = call i1 @fpga_fifo_exist_1(i8* %_152874)
  br i1 %_1258, label %src.addr6.4.0.045.case.1, label %.case.1264

.case.2255:                                       ; preds = %.case.2141
  %src.addr6.4.0.045_21038 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461040 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_2259 = call i1 @fpga_fifo_exist_1(i8* %_253895)
  br i1 %_2259, label %src.addr6.4.0.045.case.2, label %.case.2265

.exit252:                                         ; preds = %.exit138
  %src.addr6.4.0.045_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_3260 = call i1 @fpga_fifo_exist_1(i8* %_354)
  br i1 %_3260, label %src.addr6.4.0.045.case.3, label %.case.3266

src.addr6.4.0.045.case.0:                         ; preds = %.case.0253
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461001, %struct.ssdm_int* %src.addr6.4.0.045_0997)
  br label %.case.071

src.addr6.4.0.045.case.1:                         ; preds = %.case.1254
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461025, %struct.ssdm_int* %src.addr6.4.0.045_11022)
  br label %.case.172

src.addr6.4.0.045.case.2:                         ; preds = %.case.2255
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461040, %struct.ssdm_int* %src.addr6.4.0.045_21038)
  br label %.case.273

src.addr6.4.0.045.case.3:                         ; preds = %.exit252
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.046, %struct.ssdm_int* %src.addr6.4.0.045_3)
  br label %.exit70

.case.0263:                                       ; preds = %.case.0253
  %dst.addr5.4.0.0.0481069 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481069, i8* align 1 %_051844, i64 1, i1 false)
  br label %.case.071

.case.1264:                                       ; preds = %.case.1254
  %dst.addr5.4.0.0.0481073 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481073, i8* align 1 %_152874, i64 1, i1 false)
  br label %.case.172

.case.2265:                                       ; preds = %.case.2255
  %dst.addr5.4.0.0.0481077 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481077, i8* align 1 %_253895, i64 1, i1 false)
  br label %.case.273

.case.3266:                                       ; preds = %.exit252
  %dst.addr5.4.0.0.048 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048, i8* align 1 %_354, i64 1, i1 false)
  br label %.exit70

.case.071:                                        ; preds = %.case.0263, %src.addr6.4.0.045.case.0, %src.addr6.4.043.case.0, %src.addr6.441.case.0
  %src.addr6.549_01080 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.5501084 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5
  %_0651085 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_075 = call i1 @fpga_fifo_exist_1(i8* %_0651085)
  br i1 %_075, label %src.addr6.549.case.0, label %.case.0129

.case.172:                                        ; preds = %.case.1264, %src.addr6.4.0.045.case.1, %src.addr6.4.043.case.1, %src.addr6.441.case.1
  %src.addr6.549_11110 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.5501113 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5
  %_1661115 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_176 = call i1 @fpga_fifo_exist_1(i8* %_1661115)
  br i1 %_176, label %src.addr6.549.case.1, label %.case.1130

.case.273:                                        ; preds = %.case.2265, %src.addr6.4.0.045.case.2, %src.addr6.4.043.case.2, %src.addr6.441.case.2
  %src.addr6.549_21131 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.5501133 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5
  %_2671136 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_277 = call i1 @fpga_fifo_exist_1(i8* %_2671136)
  br i1 %_277, label %src.addr6.549.case.2, label %.case.2131

.exit70:                                          ; preds = %.case.3266, %src.addr6.4.0.045.case.3, %src.addr6.4.043.case.3, %src.addr6.441.case.3
  %src.addr6.549_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5
  %_368 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_378 = call i1 @fpga_fifo_exist_1(i8* %_368)
  br i1 %_378, label %src.addr6.549.case.3, label %.exit128

src.addr6.549.case.0:                             ; preds = %.case.071
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.5501084, %struct.ap_uint* %src.addr6.549_01080)
  br label %.case.085

src.addr6.549.case.1:                             ; preds = %.case.172
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.5501113, %struct.ap_uint* %src.addr6.549_11110)
  br label %.case.186

src.addr6.549.case.2:                             ; preds = %.case.273
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.5501133, %struct.ap_uint* %src.addr6.549_21131)
  br label %.case.287

src.addr6.549.case.3:                             ; preds = %.exit70
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_3)
  br label %.exit84

.case.0129:                                       ; preds = %.case.071
  %src.addr6.5.051_01166 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521170 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %_0133 = call i1 @fpga_fifo_exist_1(i8* %_0651085)
  br i1 %_0133, label %src.addr6.5.051.case.0, label %.case.0269

.case.1130:                                       ; preds = %.case.172
  %src.addr6.5.051_11191 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521194 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0
  %_1134 = call i1 @fpga_fifo_exist_1(i8* %_1661115)
  br i1 %_1134, label %src.addr6.5.051.case.1, label %.case.1270

.case.2131:                                       ; preds = %.case.273
  %src.addr6.5.051_21207 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521209 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0
  %_2135 = call i1 @fpga_fifo_exist_1(i8* %_2671136)
  br i1 %_2135, label %src.addr6.5.051.case.2, label %.case.2271

.exit128:                                         ; preds = %.exit70
  %src.addr6.5.051_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0
  %_3136 = call i1 @fpga_fifo_exist_1(i8* %_368)
  br i1 %_3136, label %src.addr6.5.051.case.3, label %.exit268

src.addr6.5.051.case.0:                           ; preds = %.case.0129
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521170, %struct.ap_int_base* %src.addr6.5.051_01166)
  br label %.case.085

src.addr6.5.051.case.1:                           ; preds = %.case.1130
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521194, %struct.ap_int_base* %src.addr6.5.051_11191)
  br label %.case.186

src.addr6.5.051.case.2:                           ; preds = %.case.2131
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521209, %struct.ap_int_base* %src.addr6.5.051_21207)
  br label %.case.287

src.addr6.5.051.case.3:                           ; preds = %.exit128
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.052, %struct.ap_int_base* %src.addr6.5.051_3)
  br label %.exit84

.case.0269:                                       ; preds = %.case.0129
  %src.addr6.5.0.053_01238 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0541242 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_0273 = call i1 @fpga_fifo_exist_1(i8* %_0651085)
  br i1 %_0273, label %src.addr6.5.0.053.case.0, label %.case.0279

.case.1270:                                       ; preds = %.case.1130
  %src.addr6.5.0.053_11263 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0541266 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_1274 = call i1 @fpga_fifo_exist_1(i8* %_1661115)
  br i1 %_1274, label %src.addr6.5.0.053.case.1, label %.case.1280

.case.2271:                                       ; preds = %.case.2131
  %src.addr6.5.0.053_21279 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0541281 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_2275 = call i1 @fpga_fifo_exist_1(i8* %_2671136)
  br i1 %_2275, label %src.addr6.5.0.053.case.2, label %.case.2281

.exit268:                                         ; preds = %.exit128
  %src.addr6.5.0.053_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_3276 = call i1 @fpga_fifo_exist_1(i8* %_368)
  br i1 %_3276, label %src.addr6.5.0.053.case.3, label %.case.3282

src.addr6.5.0.053.case.0:                         ; preds = %.case.0269
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0541242, %struct.ssdm_int* %src.addr6.5.0.053_01238)
  br label %.case.085

src.addr6.5.0.053.case.1:                         ; preds = %.case.1270
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0541266, %struct.ssdm_int* %src.addr6.5.0.053_11263)
  br label %.case.186

src.addr6.5.0.053.case.2:                         ; preds = %.case.2271
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0541281, %struct.ssdm_int* %src.addr6.5.0.053_21279)
  br label %.case.287

src.addr6.5.0.053.case.3:                         ; preds = %.exit268
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.054, %struct.ssdm_int* %src.addr6.5.0.053_3)
  br label %.exit84

.case.0279:                                       ; preds = %.case.0269
  %dst.addr5.5.0.0.0561310 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0561310, i8* align 1 %_0651085, i64 1, i1 false)
  br label %.case.085

.case.1280:                                       ; preds = %.case.1270
  %dst.addr5.5.0.0.0561314 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0561314, i8* align 1 %_1661115, i64 1, i1 false)
  br label %.case.186

.case.2281:                                       ; preds = %.case.2271
  %dst.addr5.5.0.0.0561318 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0561318, i8* align 1 %_2671136, i64 1, i1 false)
  br label %.case.287

.case.3282:                                       ; preds = %.exit268
  %dst.addr5.5.0.0.056 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056, i8* align 1 %_368, i64 1, i1 false)
  br label %.exit84

.case.085:                                        ; preds = %.case.0279, %src.addr6.5.0.053.case.0, %src.addr6.5.051.case.0, %src.addr6.549.case.0
  %src.addr6.657_01321 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.6581325 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6
  %_0791326 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_089 = call i1 @fpga_fifo_exist_1(i8* %_0791326)
  br i1 %_089, label %src.addr6.657.case.0, label %.case.0119

.case.186:                                        ; preds = %.case.1280, %src.addr6.5.0.053.case.1, %src.addr6.5.051.case.1, %src.addr6.549.case.1
  %src.addr6.657_11351 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.6581354 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6
  %_1801356 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_190 = call i1 @fpga_fifo_exist_1(i8* %_1801356)
  br i1 %_190, label %src.addr6.657.case.1, label %.case.1120

.case.287:                                        ; preds = %.case.2281, %src.addr6.5.0.053.case.2, %src.addr6.5.051.case.2, %src.addr6.549.case.2
  %src.addr6.657_21372 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.6581374 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6
  %_2811377 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_291 = call i1 @fpga_fifo_exist_1(i8* %_2811377)
  br i1 %_291, label %src.addr6.657.case.2, label %.case.2121

.exit84:                                          ; preds = %.case.3282, %src.addr6.5.0.053.case.3, %src.addr6.5.051.case.3, %src.addr6.549.case.3
  %src.addr6.657_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6
  %_382 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_392 = call i1 @fpga_fifo_exist_1(i8* %_382)
  br i1 %_392, label %src.addr6.657.case.3, label %.exit118

src.addr6.657.case.0:                             ; preds = %.case.085
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.6581325, %struct.ap_uint* %src.addr6.657_01321)
  br label %.case.099

src.addr6.657.case.1:                             ; preds = %.case.186
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.6581354, %struct.ap_uint* %src.addr6.657_11351)
  br label %.case.1100

src.addr6.657.case.2:                             ; preds = %.case.287
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.6581374, %struct.ap_uint* %src.addr6.657_21372)
  br label %.case.2101

src.addr6.657.case.3:                             ; preds = %.exit84
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_3)
  br label %.exit98

.case.0119:                                       ; preds = %.case.085
  %src.addr6.6.059_01407 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0601411 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %_0123 = call i1 @fpga_fifo_exist_1(i8* %_0791326)
  br i1 %_0123, label %src.addr6.6.059.case.0, label %.case.0285

.case.1120:                                       ; preds = %.case.186
  %src.addr6.6.059_11432 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0601435 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0
  %_1124 = call i1 @fpga_fifo_exist_1(i8* %_1801356)
  br i1 %_1124, label %src.addr6.6.059.case.1, label %.case.1286

.case.2121:                                       ; preds = %.case.287
  %src.addr6.6.059_21448 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0601450 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0
  %_2125 = call i1 @fpga_fifo_exist_1(i8* %_2811377)
  br i1 %_2125, label %src.addr6.6.059.case.2, label %.case.2287

.exit118:                                         ; preds = %.exit84
  %src.addr6.6.059_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0
  %_3126 = call i1 @fpga_fifo_exist_1(i8* %_382)
  br i1 %_3126, label %src.addr6.6.059.case.3, label %.exit284

src.addr6.6.059.case.0:                           ; preds = %.case.0119
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0601411, %struct.ap_int_base* %src.addr6.6.059_01407)
  br label %.case.099

src.addr6.6.059.case.1:                           ; preds = %.case.1120
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0601435, %struct.ap_int_base* %src.addr6.6.059_11432)
  br label %.case.1100

src.addr6.6.059.case.2:                           ; preds = %.case.2121
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0601450, %struct.ap_int_base* %src.addr6.6.059_21448)
  br label %.case.2101

src.addr6.6.059.case.3:                           ; preds = %.exit118
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.060, %struct.ap_int_base* %src.addr6.6.059_3)
  br label %.exit98

.case.0285:                                       ; preds = %.case.0119
  %src.addr6.6.0.061_01479 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0621483 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_0289 = call i1 @fpga_fifo_exist_1(i8* %_0791326)
  br i1 %_0289, label %src.addr6.6.0.061.case.0, label %.case.0295

.case.1286:                                       ; preds = %.case.1120
  %src.addr6.6.0.061_11504 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0621507 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_1290 = call i1 @fpga_fifo_exist_1(i8* %_1801356)
  br i1 %_1290, label %src.addr6.6.0.061.case.1, label %.case.1296

.case.2287:                                       ; preds = %.case.2121
  %src.addr6.6.0.061_21520 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0621522 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_2291 = call i1 @fpga_fifo_exist_1(i8* %_2811377)
  br i1 %_2291, label %src.addr6.6.0.061.case.2, label %.case.2297

.exit284:                                         ; preds = %.exit118
  %src.addr6.6.0.061_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_3292 = call i1 @fpga_fifo_exist_1(i8* %_382)
  br i1 %_3292, label %src.addr6.6.0.061.case.3, label %.case.3298

src.addr6.6.0.061.case.0:                         ; preds = %.case.0285
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0621483, %struct.ssdm_int* %src.addr6.6.0.061_01479)
  br label %.case.099

src.addr6.6.0.061.case.1:                         ; preds = %.case.1286
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0621507, %struct.ssdm_int* %src.addr6.6.0.061_11504)
  br label %.case.1100

src.addr6.6.0.061.case.2:                         ; preds = %.case.2287
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0621522, %struct.ssdm_int* %src.addr6.6.0.061_21520)
  br label %.case.2101

src.addr6.6.0.061.case.3:                         ; preds = %.exit284
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.062, %struct.ssdm_int* %src.addr6.6.0.061_3)
  br label %.exit98

.case.0295:                                       ; preds = %.case.0285
  %dst.addr5.6.0.0.0641551 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0641551, i8* align 1 %_0791326, i64 1, i1 false)
  br label %.case.099

.case.1296:                                       ; preds = %.case.1286
  %dst.addr5.6.0.0.0641555 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0641555, i8* align 1 %_1801356, i64 1, i1 false)
  br label %.case.1100

.case.2297:                                       ; preds = %.case.2287
  %dst.addr5.6.0.0.0641559 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0641559, i8* align 1 %_2811377, i64 1, i1 false)
  br label %.case.2101

.case.3298:                                       ; preds = %.exit284
  %dst.addr5.6.0.0.064 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064, i8* align 1 %_382, i64 1, i1 false)
  br label %.exit98

.case.099:                                        ; preds = %.case.0295, %src.addr6.6.0.061.case.0, %src.addr6.6.059.case.0, %src.addr6.657.case.0
  %src.addr6.765_01562 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.7661566 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7
  %_0931567 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_0103 = call i1 @fpga_fifo_exist_1(i8* %_0931567)
  br i1 %_0103, label %src.addr6.765.case.0, label %.case.0109

.case.1100:                                       ; preds = %.case.1296, %src.addr6.6.0.061.case.1, %src.addr6.6.059.case.1, %src.addr6.657.case.1
  %src.addr6.765_11592 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.7661595 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7
  %_1941597 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_1104 = call i1 @fpga_fifo_exist_1(i8* %_1941597)
  br i1 %_1104, label %src.addr6.765.case.1, label %.case.1110

.case.2101:                                       ; preds = %.case.2297, %src.addr6.6.0.061.case.2, %src.addr6.6.059.case.2, %src.addr6.657.case.2
  %src.addr6.765_21613 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.7661615 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7
  %_2951618 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_2105 = call i1 @fpga_fifo_exist_1(i8* %_2951618)
  br i1 %_2105, label %src.addr6.765.case.2, label %.case.2111

.exit98:                                          ; preds = %.case.3298, %src.addr6.6.0.061.case.3, %src.addr6.6.059.case.3, %src.addr6.657.case.3
  %src.addr6.765_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7
  %_396 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_3106 = call i1 @fpga_fifo_exist_1(i8* %_396)
  br i1 %_3106, label %src.addr6.765.case.3, label %.exit108

src.addr6.765.case.0:                             ; preds = %.case.099
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.7661566, %struct.ap_uint* %src.addr6.765_01562)
  br label %for.loop.head1

src.addr6.765.case.1:                             ; preds = %.case.1100
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.7661595, %struct.ap_uint* %src.addr6.765_11592)
  br label %for.loop.head1

src.addr6.765.case.2:                             ; preds = %.case.2101
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.7661615, %struct.ap_uint* %src.addr6.765_21613)
  br label %for.loop.head1

src.addr6.765.case.3:                             ; preds = %.exit98
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_3)
  br label %for.loop.head1

.case.0109:                                       ; preds = %.case.099
  %src.addr6.7.067_01648 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0681652 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %_0113 = call i1 @fpga_fifo_exist_1(i8* %_0931567)
  br i1 %_0113, label %src.addr6.7.067.case.0, label %.case.0301

.case.1110:                                       ; preds = %.case.1100
  %src.addr6.7.067_11673 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0681676 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0
  %_1114 = call i1 @fpga_fifo_exist_1(i8* %_1941597)
  br i1 %_1114, label %src.addr6.7.067.case.1, label %.case.1302

.case.2111:                                       ; preds = %.case.2101
  %src.addr6.7.067_21689 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0681691 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0
  %_2115 = call i1 @fpga_fifo_exist_1(i8* %_2951618)
  br i1 %_2115, label %src.addr6.7.067.case.2, label %.case.2303

.exit108:                                         ; preds = %.exit98
  %src.addr6.7.067_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0
  %_3116 = call i1 @fpga_fifo_exist_1(i8* %_396)
  br i1 %_3116, label %src.addr6.7.067.case.3, label %.exit300

src.addr6.7.067.case.0:                           ; preds = %.case.0109
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0681652, %struct.ap_int_base* %src.addr6.7.067_01648)
  br label %for.loop.head1

src.addr6.7.067.case.1:                           ; preds = %.case.1110
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0681676, %struct.ap_int_base* %src.addr6.7.067_11673)
  br label %for.loop.head1

src.addr6.7.067.case.2:                           ; preds = %.case.2111
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0681691, %struct.ap_int_base* %src.addr6.7.067_21689)
  br label %for.loop.head1

src.addr6.7.067.case.3:                           ; preds = %.exit108
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.068, %struct.ap_int_base* %src.addr6.7.067_3)
  br label %for.loop.head1

.case.0301:                                       ; preds = %.case.0109
  %src.addr6.7.0.069_01720 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0701724 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_0305 = call i1 @fpga_fifo_exist_1(i8* %_0931567)
  br i1 %_0305, label %src.addr6.7.0.069.case.0, label %.case.0311

.case.1302:                                       ; preds = %.case.1110
  %src.addr6.7.0.069_11745 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0701748 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_1306 = call i1 @fpga_fifo_exist_1(i8* %_1941597)
  br i1 %_1306, label %src.addr6.7.0.069.case.1, label %.case.1312

.case.2303:                                       ; preds = %.case.2111
  %src.addr6.7.0.069_21761 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0701763 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_2307 = call i1 @fpga_fifo_exist_1(i8* %_2951618)
  br i1 %_2307, label %src.addr6.7.0.069.case.2, label %.case.2313

.exit300:                                         ; preds = %.exit108
  %src.addr6.7.0.069_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_3308 = call i1 @fpga_fifo_exist_1(i8* %_396)
  br i1 %_3308, label %src.addr6.7.0.069.case.3, label %.case.3314

src.addr6.7.0.069.case.0:                         ; preds = %.case.0301
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0701724, %struct.ssdm_int* %src.addr6.7.0.069_01720)
  br label %for.loop.head1

src.addr6.7.0.069.case.1:                         ; preds = %.case.1302
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0701748, %struct.ssdm_int* %src.addr6.7.0.069_11745)
  br label %for.loop.head1

src.addr6.7.0.069.case.2:                         ; preds = %.case.2303
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0701763, %struct.ssdm_int* %src.addr6.7.0.069_21761)
  br label %for.loop.head1

src.addr6.7.0.069.case.3:                         ; preds = %.exit300
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.070, %struct.ssdm_int* %src.addr6.7.0.069_3)
  br label %for.loop.head1

.case.0311:                                       ; preds = %.case.0301
  %dst.addr5.7.0.0.0721792 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0721792, i8* align 1 %_0931567, i64 1, i1 false)
  br label %for.loop.head1

.case.1312:                                       ; preds = %.case.1302
  %dst.addr5.7.0.0.0721796 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0721796, i8* align 1 %_1941597, i64 1, i1 false)
  br label %for.loop.head1

.case.2313:                                       ; preds = %.case.2303
  %dst.addr5.7.0.0.0721800 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0721800, i8* align 1 %_2951618, i64 1, i1 false)
  br label %for.loop.head1

.case.3314:                                       ; preds = %.exit300
  %dst.addr5.7.0.0.072 = getelementptr [4 x [4096 x %struct.dpkt_t]], [4 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072, i8* align 1 %_396, i64 1, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.3314, %.case.2313, %.case.1312, %.case.0311, %src.addr6.7.0.069.case.3, %src.addr6.7.0.069.case.2, %src.addr6.7.0.069.case.1, %src.addr6.7.0.069.case.0, %src.addr6.7.067.case.3, %src.addr6.7.067.case.2, %src.addr6.7.067.case.1, %src.addr6.7.067.case.0, %src.addr6.765.case.3, %src.addr6.765.case.2, %src.addr6.765.case.1, %src.addr6.765.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx373, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx74, 1
  %exitcond75 = icmp ne i64 %for.loop.idx.next, 4
  br i1 %exitcond75, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_out(i32* "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1", i1* "orig.arg.no"="2", i1* noalias readonly align 512 "orig.arg.no"="3", [4 x [4096 x %struct.dpkt_t]]* "orig.arg.no"="4", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_3) #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call void @onebyonecpy_hls.p0a4a4096struct.dpkt_t.15.22([4 x [4096 x %struct.dpkt_t]]* %4, [4096 x %struct.dpkt_t]* %_0, [4096 x %struct.dpkt_t]* %_1, [4096 x %struct.dpkt_t]* %_2, [4096 x %struct.dpkt_t]* %_3)
  ret void
}

declare void @apatb_BFS_Gather_hw(i8, i32*, i1*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*)

define void @BFS_Gather_hw_stub_wrapper(i8, i32*, i1*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*) #7 {
entry:
  %7 = alloca [4 x [4096 x %struct.dpkt_t]]
  call void @copy_out(i32* null, i32* %1, i1* null, i1* %2, [4 x [4096 x %struct.dpkt_t]]* %7, [4096 x %struct.dpkt_t]* %3, [4096 x %struct.dpkt_t]* %4, [4096 x %struct.dpkt_t]* %5, [4096 x %struct.dpkt_t]* %6)
  %8 = bitcast [4 x [4096 x %struct.dpkt_t]]* %7 to [4096 x %struct.dpkt_t]*
  call void @BFS_Gather_hw_stub(i8 %0, i32* %1, i1* %2, [4096 x %struct.dpkt_t]* %8)
  call void @copy_in(i32* null, i32* %1, i1* null, i1* %2, [4 x [4096 x %struct.dpkt_t]]* %7, [4096 x %struct.dpkt_t]* %3, [4096 x %struct.dpkt_t]* %4, [4096 x %struct.dpkt_t]* %5, [4096 x %struct.dpkt_t]* %6)
  ret void
}

declare void @BFS_Gather_hw_stub(i8, i32*, i1*, [4096 x %struct.dpkt_t]*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
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
