; ModuleID = 'sad_stridedc_i8.c'
source_filename = "sad_stridedc_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 64
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 64
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %sub.i.1 = sub i8 %2, %3
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 64
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 64
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %sub.i.1 = sub i8 %2, %3
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 128
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 128
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %sub.i.2 = sub i8 %4, %5
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %1 = shufflevector <4 x ptr> %0, <4 x ptr> poison, <4 x i32> zeroinitializer
  %2 = getelementptr i8, <4 x ptr> %1, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %3 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %4 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <4 x i32> zeroinitializer
  %5 = getelementptr i8, <4 x ptr> %4, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %6 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %2, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %7 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %5, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %8 = sub <4 x i8> %6, %7
  %9 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %8, i1 false)
  %10 = sext <4 x i8> %9 to <4 x i32>
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  ret i32 %11
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %1 = shufflevector <4 x ptr> %0, <4 x ptr> poison, <4 x i32> zeroinitializer
  %2 = getelementptr i8, <4 x ptr> %1, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %3 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %4 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <4 x i32> zeroinitializer
  %5 = getelementptr i8, <4 x ptr> %4, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %6 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %2, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %7 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %5, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %8 = sub <4 x i8> %6, %7
  %9 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %8, i1 false)
  %10 = sext <4 x i8> %9 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 256
  %11 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 256
  %12 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %11, %12
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %13 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %op.rdx = add i32 %13, %conv.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %1 = shufflevector <4 x ptr> %0, <4 x ptr> poison, <4 x i32> zeroinitializer
  %2 = getelementptr i8, <4 x ptr> %1, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %3 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %4 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <4 x i32> zeroinitializer
  %5 = getelementptr i8, <4 x ptr> %4, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %6 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %2, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %7 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %5, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %8 = sub <4 x i8> %6, %7
  %9 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %8, i1 false)
  %10 = sext <4 x i8> %9 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 256
  %11 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 256
  %12 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %11, %12
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 320
  %13 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 320
  %14 = load i8, ptr %arrayidx3.5, align 1, !tbaa !4
  %sub.i.5 = sub i8 %13, %14
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %15 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %op.rdx = add i32 %15, %conv.4
  %op.rdx12 = add i32 %op.rdx, %conv.5
  ret i32 %op.rdx12
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %1 = shufflevector <4 x ptr> %0, <4 x ptr> poison, <4 x i32> zeroinitializer
  %2 = getelementptr i8, <4 x ptr> %1, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %3 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %4 = shufflevector <4 x ptr> %3, <4 x ptr> poison, <4 x i32> zeroinitializer
  %5 = getelementptr i8, <4 x ptr> %4, <4 x i64> <i64 64, i64 0, i64 128, i64 192>
  %6 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %2, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %7 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %5, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !4
  %8 = sub <4 x i8> %6, %7
  %9 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %8, i1 false)
  %10 = sext <4 x i8> %9 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 256
  %11 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 256
  %12 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %11, %12
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 320
  %13 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 320
  %14 = load i8, ptr %arrayidx3.5, align 1, !tbaa !4
  %sub.i.5 = sub i8 %13, %14
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 384
  %15 = load i8, ptr %arrayidx.6, align 1, !tbaa !4
  %arrayidx3.6 = getelementptr inbounds i8, ptr %b, i64 384
  %16 = load i8, ptr %arrayidx3.6, align 1, !tbaa !4
  %sub.i.6 = sub i8 %15, %16
  %spec.select.i.6 = tail call i8 @llvm.abs.i8(i8 %sub.i.6, i1 false)
  %conv.6 = sext i8 %spec.select.i.6 to i32
  %17 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %op.rdx = add i32 %17, %conv.4
  %op.rdx12 = add nsw i32 %conv.5, %conv.6
  %op.rdx13 = add i32 %op.rdx, %op.rdx12
  ret i32 %op.rdx13
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = insertelement <8 x ptr> poison, ptr %a, i64 0
  %1 = shufflevector <8 x ptr> %0, <8 x ptr> poison, <8 x i32> zeroinitializer
  %2 = getelementptr i8, <8 x ptr> %1, <8 x i64> <i64 64, i64 0, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448>
  %3 = insertelement <8 x ptr> poison, ptr %b, i64 0
  %4 = shufflevector <8 x ptr> %3, <8 x ptr> poison, <8 x i32> zeroinitializer
  %5 = getelementptr i8, <8 x ptr> %4, <8 x i64> <i64 64, i64 0, i64 128, i64 192, i64 256, i64 320, i64 384, i64 448>
  %6 = tail call <8 x i8> @llvm.masked.gather.v8i8.v8p0(<8 x ptr> %2, i32 1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i8> poison), !tbaa !4
  %7 = tail call <8 x i8> @llvm.masked.gather.v8i8.v8p0(<8 x ptr> %5, i32 1, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i8> poison), !tbaa !4
  %8 = sub <8 x i8> %6, %7
  %9 = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %8, i1 false)
  %10 = sext <8 x i8> %9 to <8 x i32>
  %11 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %10)
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr>, i32 immarg, <4 x i1>, <4 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i8> @llvm.masked.gather.v8i8.v8p0(<8 x ptr>, i32 immarg, <8 x i1>, <8 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.abs.v8i8(<8 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-smaia,-experimental-ssaia,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zcmp,-experimental-zcmt,-experimental-zfa,-experimental-zfbfmin,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvbb,-experimental-zvbc,-experimental-zvfbfmin,-experimental-zvfbfwma,-experimental-zvfh,-experimental-zvkg,-experimental-zvkn,-experimental-zvknc,-experimental-zvkned,-experimental-zvkng,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksc,-experimental-zvksed,-experimental-zvksg,-experimental-zvksh,-experimental-zvkt,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicntr,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 8, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git c4a3bd7f8b7c587813d0e54d8d2dde7385895d09)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
