; ModuleID = 'sad_strided_i8.c'
source_filename = "sad_strided_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = zext i32 %S to i64
  %1 = load i8, ptr %a, align 1, !tbaa !6
  %2 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %1, %2
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %0
  %3 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %0
  %4 = load i8, ptr %arrayidx3.1, align 1, !tbaa !6
  %sub.i.1 = sub i8 %3, %4
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !6
  %sub.i.1 = sub i8 %2, %3
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !6
  %sub.i.2 = sub i8 %4, %5
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !6
  %sub.i.1 = sub i8 %2, %3
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !6
  %sub.i.2 = sub i8 %4, %5
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !6
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !6
  %sub.i.3 = sub i8 %6, %7
  %spec.select.i.3 = tail call i8 @llvm.abs.i8(i8 %sub.i.3, i1 false)
  %conv.3 = sext i8 %spec.select.i.3 to i32
  %add.3 = add nsw i32 %add.2, %conv.3
  ret i32 %add.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %mul.2 = shl i32 %S, 1
  %mul.3 = mul i32 %S, 3
  %mul.4 = shl i32 %S, 2
  %2 = insertelement <4 x i32> poison, i32 %S, i64 0
  %3 = insertelement <4 x i32> %2, i32 %mul.2, i64 1
  %4 = insertelement <4 x i32> %3, i32 %mul.3, i64 2
  %5 = insertelement <4 x i32> %4, i32 %mul.4, i64 3
  %6 = zext <4 x i32> %5 to <4 x i64>
  %7 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> zeroinitializer
  %9 = getelementptr i8, <4 x ptr> %8, <4 x i64> %6
  %10 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %9, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %11 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %13 = getelementptr i8, <4 x ptr> %12, <4 x i64> %6
  %14 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %13, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %15 = sub <4 x i8> %10, %14
  %16 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %15, i1 false)
  %17 = sext <4 x i8> %16 to <4 x i16>
  %18 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %17)
  %19 = sext i16 %18 to i32
  %op.rdx = add nsw i32 %19, %conv
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %mul.2 = shl i32 %S, 1
  %mul.3 = mul i32 %S, 3
  %mul.4 = shl i32 %S, 2
  %2 = insertelement <4 x i32> poison, i32 %S, i64 0
  %3 = insertelement <4 x i32> %2, i32 %mul.2, i64 1
  %4 = insertelement <4 x i32> %3, i32 %mul.3, i64 2
  %5 = insertelement <4 x i32> %4, i32 %mul.4, i64 3
  %6 = zext <4 x i32> %5 to <4 x i64>
  %7 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %8 = shufflevector <4 x ptr> %7, <4 x ptr> poison, <4 x i32> zeroinitializer
  %9 = getelementptr i8, <4 x ptr> %8, <4 x i64> %6
  %10 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %9, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %11 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %12 = shufflevector <4 x ptr> %11, <4 x ptr> poison, <4 x i32> zeroinitializer
  %13 = getelementptr i8, <4 x ptr> %12, <4 x i64> %6
  %14 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %13, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %15 = sub <4 x i8> %10, %14
  %16 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %15, i1 false)
  %mul.5 = mul i32 %S, 5
  %idxprom.5 = zext i32 %mul.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 %idxprom.5
  %17 = load i8, ptr %arrayidx.5, align 1, !tbaa !6
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 %idxprom.5
  %18 = load i8, ptr %arrayidx3.5, align 1, !tbaa !6
  %sub.i.5 = sub i8 %17, %18
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %19 = sext <4 x i8> %16 to <4 x i16>
  %20 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %19)
  %21 = sext i16 %20 to i32
  %op.rdx = add nsw i32 %21, %conv
  %op.rdx12 = add nsw i32 %op.rdx, %conv.5
  ret i32 %op.rdx12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !6
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !6
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !6
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !6
  %8 = insertelement <4 x i8> poison, i8 %0, i64 0
  %9 = insertelement <4 x i8> %8, i8 %2, i64 1
  %10 = insertelement <4 x i8> %9, i8 %4, i64 2
  %11 = insertelement <4 x i8> %10, i8 %6, i64 3
  %12 = insertelement <4 x i8> poison, i8 %1, i64 0
  %13 = insertelement <4 x i8> %12, i8 %3, i64 1
  %14 = insertelement <4 x i8> %13, i8 %5, i64 2
  %15 = insertelement <4 x i8> %14, i8 %7, i64 3
  %16 = sub <4 x i8> %11, %15
  %17 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %16, i1 false)
  %mul.4 = shl i32 %S, 2
  %idxprom.4 = zext i32 %mul.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 %idxprom.4
  %18 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 %idxprom.4
  %19 = load i8, ptr %arrayidx3.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %18, %19
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %mul.5 = mul i32 %S, 5
  %idxprom.5 = zext i32 %mul.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 %idxprom.5
  %20 = load i8, ptr %arrayidx.5, align 1, !tbaa !6
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 %idxprom.5
  %21 = load i8, ptr %arrayidx3.5, align 1, !tbaa !6
  %sub.i.5 = sub i8 %20, %21
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %mul.6 = mul i32 %S, 6
  %idxprom.6 = zext i32 %mul.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 %idxprom.6
  %22 = load i8, ptr %arrayidx.6, align 1, !tbaa !6
  %arrayidx3.6 = getelementptr inbounds i8, ptr %b, i64 %idxprom.6
  %23 = load i8, ptr %arrayidx3.6, align 1, !tbaa !6
  %sub.i.6 = sub i8 %22, %23
  %spec.select.i.6 = tail call i8 @llvm.abs.i8(i8 %sub.i.6, i1 false)
  %conv.6 = sext i8 %spec.select.i.6 to i32
  %24 = sext <4 x i8> %17 to <4 x i32>
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %op.rdx = add i32 %25, %conv.4
  %op.rdx12 = add nsw i32 %conv.5, %conv.6
  %op.rdx13 = add i32 %op.rdx, %op.rdx12
  ret i32 %op.rdx13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2)
define dso_local signext i32 @sum_of_absolute_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !6
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !6
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !6
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !6
  %8 = insertelement <4 x i32> poison, i32 %S, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %10 = mul <4 x i32> %9, <i32 4, i32 5, i32 6, i32 7>
  %11 = zext <4 x i32> %10 to <4 x i64>
  %12 = insertelement <4 x ptr> poison, ptr %a, i64 0
  %13 = shufflevector <4 x ptr> %12, <4 x ptr> poison, <4 x i32> zeroinitializer
  %14 = getelementptr i8, <4 x ptr> %13, <4 x i64> %11
  %15 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %14, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %16 = insertelement <4 x ptr> poison, ptr %b, i64 0
  %17 = shufflevector <4 x ptr> %16, <4 x ptr> poison, <4 x i32> zeroinitializer
  %18 = getelementptr i8, <4 x ptr> %17, <4 x i64> %11
  %19 = tail call <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr> %18, i32 1, <4 x i1> <i1 true, i1 true, i1 true, i1 true>, <4 x i8> poison), !tbaa !6
  %20 = insertelement <8 x i8> poison, i8 %0, i64 0
  %21 = insertelement <8 x i8> %20, i8 %2, i64 1
  %22 = insertelement <8 x i8> %21, i8 %4, i64 2
  %23 = insertelement <8 x i8> %22, i8 %6, i64 3
  %24 = shufflevector <4 x i8> %15, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %25 = shufflevector <8 x i8> %23, <8 x i8> %24, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %26 = insertelement <8 x i8> poison, i8 %1, i64 0
  %27 = insertelement <8 x i8> %26, i8 %3, i64 1
  %28 = insertelement <8 x i8> %27, i8 %5, i64 2
  %29 = insertelement <8 x i8> %28, i8 %7, i64 3
  %30 = shufflevector <4 x i8> %19, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %31 = shufflevector <8 x i8> %29, <8 x i8> %30, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %32 = sub <8 x i8> %25, %31
  %33 = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %32, i1 false)
  %34 = sext <8 x i8> %33 to <8 x i32>
  %35 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %34)
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i8> @llvm.masked.gather.v4i8.v4p0(<4 x ptr>, i32 immarg, <4 x i1>, <4 x i8>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.abs.v4i8(<4 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.abs.v8i8(<8 x i8>, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zawrs,+zba,+zbb,+zbs,+zca,+zcb,+zcmop,+zfa,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicond,+zicsr,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfhmin,+zvkb,+zvkt,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zbc,-zbkb,-zbkc,-zbkx,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zifencei,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicond1p0_zicsr2p0_zihintntl1p0_zihintpause2p0_zihpm2p0_zimop1p0_zmmul1p0_za64rs1p0_zawrs1p0_zfa1p0_zfhmin1p0_zca1p0_zcb1p0_zcmop1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfhmin1p0_zvkb1p0_zvkt1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
