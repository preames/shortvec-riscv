; ModuleID = 'sad_i8.c'
source_filename = "sad_i8.c"
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
  %0 = load <2 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <2 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <2 x i8> %0, %1
  %3 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %2, i1 false)
  %4 = sext <2 x i8> %3 to <2 x i32>
  %5 = extractelement <2 x i32> %4, i64 0
  %6 = extractelement <2 x i32> %4, i64 1
  %add.1 = add nsw i32 %5, %6
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <2 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <2 x i8> %0, %1
  %3 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %2, i1 false)
  %4 = sext <2 x i8> %3 to <2 x i32>
  %5 = extractelement <2 x i32> %4, i64 0
  %6 = extractelement <2 x i32> %4, i64 1
  %add.1 = add nsw i32 %5, %6
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 2
  %7 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %arrayidx2.2 = getelementptr inbounds i8, ptr %b, i64 2
  %8 = load i8, ptr %arrayidx2.2, align 1, !tbaa !4
  %sub.i.2 = sub i8 %7, %8
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %4 = sext <4 x i8> %3 to <4 x i32>
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %4 = sext <4 x i8> %3 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %5, %6
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %7, %conv.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %4 = sext <4 x i8> %3 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %5, %6
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %7 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %8 = load i8, ptr %arrayidx2.5, align 1, !tbaa !4
  %sub.i.5 = sub i8 %7, %8
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %9 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %9, %conv.4
  %op.rdx10 = add i32 %op.rdx, %conv.5
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %4 = sext <4 x i8> %3 to <4 x i32>
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 6
  %5 = load i8, ptr %arrayidx.6, align 1, !tbaa !4
  %arrayidx2.6 = getelementptr inbounds i8, ptr %b, i64 6
  %6 = load i8, ptr %arrayidx2.6, align 1, !tbaa !4
  %sub.i.6 = sub i8 %5, %6
  %spec.select.i.6 = tail call i8 @llvm.abs.i8(i8 %sub.i.6, i1 false)
  %conv.6 = sext i8 %spec.select.i.6 to i32
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %8 = load <2 x i8>, ptr %arrayidx.4, align 1, !tbaa !4
  %9 = load <2 x i8>, ptr %arrayidx2.4, align 1, !tbaa !4
  %10 = sub <2 x i8> %8, %9
  %11 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %10, i1 false)
  %12 = sext <2 x i8> %11 to <2 x i32>
  %13 = insertelement <2 x i32> poison, i32 %7, i64 0
  %14 = insertelement <2 x i32> %13, i32 %conv.6, i64 1
  %15 = add <2 x i32> %14, %12
  %16 = extractelement <2 x i32> %15, i64 0
  %17 = extractelement <2 x i32> %15, i64 1
  %op.rdx11 = add i32 %16, %17
  ret i32 %op.rdx11
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <8 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <8 x i8> %0, %1
  %3 = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %2, i1 false)
  %4 = sext <8 x i8> %3 to <8 x i32>
  %5 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.abs.v2i8(<2 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.abs.v8i8(<8 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-smaia,-experimental-ssaia,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zcmp,-experimental-zcmt,-experimental-zfa,-experimental-zfbfmin,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvbb,-experimental-zvbc,-experimental-zvfbfmin,-experimental-zvfbfwma,-experimental-zvfh,-experimental-zvkg,-experimental-zvkn,-experimental-zvknc,-experimental-zvkned,-experimental-zvkng,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksc,-experimental-zvksed,-experimental-zvksg,-experimental-zvksh,-experimental-zvkt,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicntr,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 8, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git c4a3bd7f8b7c587813d0e54d8d2dde7385895d09)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
