; ModuleID = 'ssd_i8.c'
source_filename = "ssd_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %conv = sext i8 %sub.i to i32
  %mul = mul nsw i32 %conv, %conv
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <2 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <2 x i8> %0, %1
  %3 = sext <2 x i8> %2 to <2 x i32>
  %4 = mul nsw <2 x i32> %3, %3
  %5 = extractelement <2 x i32> %4, i64 0
  %6 = extractelement <2 x i32> %4, i64 1
  %add.1 = add nuw nsw i32 %6, %5
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %conv = sext i8 %sub.i to i32
  %mul = mul nsw i32 %conv, %conv
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 1
  %arrayidx2.1 = getelementptr inbounds i8, ptr %b, i64 1
  %2 = load <2 x i8>, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load <2 x i8>, ptr %arrayidx2.1, align 1, !tbaa !4
  %4 = sub <2 x i8> %2, %3
  %5 = sext <2 x i8> %4 to <2 x i32>
  %6 = mul nsw <2 x i32> %5, %5
  %7 = extractelement <2 x i32> %6, i64 0
  %add.1 = add nuw nsw i32 %7, %mul
  %8 = extractelement <2 x i32> %6, i64 1
  %add.2 = add nuw nsw i32 %8, %add.1
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %5, %6
  %conv.4 = sext i8 %sub.i.4 to i32
  %mul.4 = mul nsw i32 %conv.4, %conv.4
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %7, %mul.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %5 = load <2 x i8>, ptr %arrayidx.4, align 1, !tbaa !4
  %6 = load <2 x i8>, ptr %arrayidx2.4, align 1, !tbaa !4
  %7 = sub <2 x i8> %5, %6
  %8 = sext <2 x i8> %7 to <2 x i32>
  %9 = mul nsw <2 x i32> %8, %8
  %10 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %11 = extractelement <2 x i32> %9, i64 0
  %op.rdx = add i32 %10, %11
  %12 = extractelement <2 x i32> %9, i64 1
  %op.rdx10 = add i32 %op.rdx, %12
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %5, %6
  %conv.4 = sext i8 %sub.i.4 to i32
  %mul.4 = mul nsw i32 %conv.4, %conv.4
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %7 = load <2 x i8>, ptr %arrayidx.5, align 1, !tbaa !4
  %8 = load <2 x i8>, ptr %arrayidx2.5, align 1, !tbaa !4
  %9 = sub <2 x i8> %7, %8
  %10 = sext <2 x i8> %9 to <2 x i32>
  %11 = mul nsw <2 x i32> %10, %10
  %12 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %12, %mul.4
  %13 = extractelement <2 x i32> %11, i64 0
  %14 = extractelement <2 x i32> %11, i64 1
  %op.rdx10 = add nuw nsw i32 %13, %14
  %op.rdx11 = add i32 %op.rdx, %op.rdx10
  ret i32 %op.rdx11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i8>, ptr %a, align 1, !tbaa !4
  %1 = load <8 x i8>, ptr %b, align 1, !tbaa !4
  %2 = sub <8 x i8> %0, %1
  %3 = sext <8 x i8> %2 to <8 x i32>
  %4 = mul nsw <8 x i32> %3, %3
  %5 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-experimental-zvkb,-experimental-zvkg,-experimental-zvkn,-experimental-zvkned,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksed,-experimental-zvksh,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 8, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 7f596bb50944ee41a9dd1cb95c196dc6f8873b21)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
