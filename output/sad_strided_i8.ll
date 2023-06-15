; ModuleID = 'sad_strided_i8.c'
source_filename = "sad_strided_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = zext i32 %S to i64
  %1 = load i8, ptr %a, align 1, !tbaa !4
  %2 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %1, %2
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %0
  %3 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %0
  %4 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %sub.i.1 = sub i8 %3, %4
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %sub.i.1 = sub i8 %2, %3
  %spec.select.i.1 = tail call i8 @llvm.abs.i8(i8 %sub.i.1, i1 false)
  %conv.1 = sext i8 %spec.select.i.1 to i32
  %add.1 = add nsw i32 %conv, %conv.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %sub.i.2 = sub i8 %4, %5
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !4
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !4
  %8 = insertelement <4 x i8> poison, i8 %2, i64 0
  %9 = insertelement <4 x i8> %8, i8 %0, i64 1
  %10 = insertelement <4 x i8> %9, i8 %4, i64 2
  %11 = insertelement <4 x i8> %10, i8 %6, i64 3
  %12 = insertelement <4 x i8> poison, i8 %3, i64 0
  %13 = insertelement <4 x i8> %12, i8 %1, i64 1
  %14 = insertelement <4 x i8> %13, i8 %5, i64 2
  %15 = insertelement <4 x i8> %14, i8 %7, i64 3
  %16 = sub <4 x i8> %11, %15
  %17 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %16, i1 false)
  %18 = sext <4 x i8> %17 to <4 x i32>
  %19 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  ret i32 %19
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !4
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !4
  %8 = insertelement <4 x i8> poison, i8 %2, i64 0
  %9 = insertelement <4 x i8> %8, i8 %0, i64 1
  %10 = insertelement <4 x i8> %9, i8 %4, i64 2
  %11 = insertelement <4 x i8> %10, i8 %6, i64 3
  %12 = insertelement <4 x i8> poison, i8 %3, i64 0
  %13 = insertelement <4 x i8> %12, i8 %1, i64 1
  %14 = insertelement <4 x i8> %13, i8 %5, i64 2
  %15 = insertelement <4 x i8> %14, i8 %7, i64 3
  %16 = sub <4 x i8> %11, %15
  %17 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %16, i1 false)
  %18 = sext <4 x i8> %17 to <4 x i32>
  %mul.4 = shl i32 %S, 2
  %idxprom.4 = zext i32 %mul.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 %idxprom.4
  %19 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 %idxprom.4
  %20 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %19, %20
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %21 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %op.rdx = add i32 %21, %conv.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !4
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !4
  %8 = insertelement <4 x i8> poison, i8 %2, i64 0
  %9 = insertelement <4 x i8> %8, i8 %0, i64 1
  %10 = insertelement <4 x i8> %9, i8 %4, i64 2
  %11 = insertelement <4 x i8> %10, i8 %6, i64 3
  %12 = insertelement <4 x i8> poison, i8 %3, i64 0
  %13 = insertelement <4 x i8> %12, i8 %1, i64 1
  %14 = insertelement <4 x i8> %13, i8 %5, i64 2
  %15 = insertelement <4 x i8> %14, i8 %7, i64 3
  %16 = sub <4 x i8> %11, %15
  %17 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %16, i1 false)
  %18 = sext <4 x i8> %17 to <4 x i32>
  %mul.4 = shl i32 %S, 2
  %idxprom.4 = zext i32 %mul.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 %idxprom.4
  %19 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 %idxprom.4
  %20 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %19, %20
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %mul.5 = mul i32 %S, 5
  %idxprom.5 = zext i32 %mul.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 %idxprom.5
  %21 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 %idxprom.5
  %22 = load i8, ptr %arrayidx3.5, align 1, !tbaa !4
  %sub.i.5 = sub i8 %21, %22
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %23 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %op.rdx = add i32 %23, %conv.4
  %op.rdx12 = add i32 %op.rdx, %conv.5
  ret i32 %op.rdx12
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !4
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !4
  %8 = insertelement <4 x i8> poison, i8 %2, i64 0
  %9 = insertelement <4 x i8> %8, i8 %0, i64 1
  %10 = insertelement <4 x i8> %9, i8 %4, i64 2
  %11 = insertelement <4 x i8> %10, i8 %6, i64 3
  %12 = insertelement <4 x i8> poison, i8 %3, i64 0
  %13 = insertelement <4 x i8> %12, i8 %1, i64 1
  %14 = insertelement <4 x i8> %13, i8 %5, i64 2
  %15 = insertelement <4 x i8> %14, i8 %7, i64 3
  %16 = sub <4 x i8> %11, %15
  %17 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %16, i1 false)
  %18 = sext <4 x i8> %17 to <4 x i32>
  %mul.4 = shl i32 %S, 2
  %idxprom.4 = zext i32 %mul.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 %idxprom.4
  %19 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 %idxprom.4
  %20 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %sub.i.4 = sub i8 %19, %20
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %mul.5 = mul i32 %S, 5
  %idxprom.5 = zext i32 %mul.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 %idxprom.5
  %21 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 %idxprom.5
  %22 = load i8, ptr %arrayidx3.5, align 1, !tbaa !4
  %sub.i.5 = sub i8 %21, %22
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %mul.6 = mul i32 %S, 6
  %idxprom.6 = zext i32 %mul.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 %idxprom.6
  %23 = load i8, ptr %arrayidx.6, align 1, !tbaa !4
  %arrayidx3.6 = getelementptr inbounds i8, ptr %b, i64 %idxprom.6
  %24 = load i8, ptr %arrayidx3.6, align 1, !tbaa !4
  %sub.i.6 = sub i8 %23, %24
  %spec.select.i.6 = tail call i8 @llvm.abs.i8(i8 %sub.i.6, i1 false)
  %conv.6 = sext i8 %spec.select.i.6 to i32
  %25 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %op.rdx = add i32 %25, %conv.4
  %op.rdx12 = add nsw i32 %conv.5, %conv.6
  %op.rdx13 = add i32 %op.rdx, %op.rdx12
  ret i32 %op.rdx13
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, i32 noundef signext %S) local_unnamed_addr #0 {
entry:
  %idxprom.1 = zext i32 %S to i64
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 %idxprom.1
  %arrayidx3.1 = getelementptr inbounds i8, ptr %b, i64 %idxprom.1
  %mul.2 = shl i32 %S, 1
  %idxprom.2 = zext i32 %mul.2 to i64
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 %idxprom.2
  %arrayidx3.2 = getelementptr inbounds i8, ptr %b, i64 %idxprom.2
  %mul.3 = mul i32 %S, 3
  %idxprom.3 = zext i32 %mul.3 to i64
  %arrayidx.3 = getelementptr inbounds i8, ptr %a, i64 %idxprom.3
  %arrayidx3.3 = getelementptr inbounds i8, ptr %b, i64 %idxprom.3
  %mul.4 = shl i32 %S, 2
  %idxprom.4 = zext i32 %mul.4 to i64
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 %idxprom.4
  %arrayidx3.4 = getelementptr inbounds i8, ptr %b, i64 %idxprom.4
  %mul.5 = mul i32 %S, 5
  %idxprom.5 = zext i32 %mul.5 to i64
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 %idxprom.5
  %arrayidx3.5 = getelementptr inbounds i8, ptr %b, i64 %idxprom.5
  %mul.6 = mul i32 %S, 6
  %idxprom.6 = zext i32 %mul.6 to i64
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 %idxprom.6
  %arrayidx3.6 = getelementptr inbounds i8, ptr %b, i64 %idxprom.6
  %mul.7 = mul i32 %S, 7
  %idxprom.7 = zext i32 %mul.7 to i64
  %arrayidx.7 = getelementptr inbounds i8, ptr %a, i64 %idxprom.7
  %arrayidx3.7 = getelementptr inbounds i8, ptr %b, i64 %idxprom.7
  %0 = load i8, ptr %a, align 1, !tbaa !4
  %1 = load i8, ptr %b, align 1, !tbaa !4
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !4
  %3 = load i8, ptr %arrayidx3.1, align 1, !tbaa !4
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !4
  %5 = load i8, ptr %arrayidx3.2, align 1, !tbaa !4
  %6 = load i8, ptr %arrayidx.3, align 1, !tbaa !4
  %7 = load i8, ptr %arrayidx3.3, align 1, !tbaa !4
  %8 = load i8, ptr %arrayidx.4, align 1, !tbaa !4
  %9 = load i8, ptr %arrayidx3.4, align 1, !tbaa !4
  %10 = load i8, ptr %arrayidx.5, align 1, !tbaa !4
  %11 = load i8, ptr %arrayidx3.5, align 1, !tbaa !4
  %12 = load i8, ptr %arrayidx.6, align 1, !tbaa !4
  %13 = load i8, ptr %arrayidx3.6, align 1, !tbaa !4
  %14 = load i8, ptr %arrayidx.7, align 1, !tbaa !4
  %15 = load i8, ptr %arrayidx3.7, align 1, !tbaa !4
  %16 = insertelement <8 x i8> poison, i8 %2, i64 0
  %17 = insertelement <8 x i8> %16, i8 %0, i64 1
  %18 = insertelement <8 x i8> %17, i8 %4, i64 2
  %19 = insertelement <8 x i8> %18, i8 %6, i64 3
  %20 = insertelement <8 x i8> %19, i8 %8, i64 4
  %21 = insertelement <8 x i8> %20, i8 %10, i64 5
  %22 = insertelement <8 x i8> %21, i8 %12, i64 6
  %23 = insertelement <8 x i8> %22, i8 %14, i64 7
  %24 = insertelement <8 x i8> poison, i8 %3, i64 0
  %25 = insertelement <8 x i8> %24, i8 %1, i64 1
  %26 = insertelement <8 x i8> %25, i8 %5, i64 2
  %27 = insertelement <8 x i8> %26, i8 %7, i64 3
  %28 = insertelement <8 x i8> %27, i8 %9, i64 4
  %29 = insertelement <8 x i8> %28, i8 %11, i64 5
  %30 = insertelement <8 x i8> %29, i8 %13, i64 6
  %31 = insertelement <8 x i8> %30, i8 %15, i64 7
  %32 = sub <8 x i8> %23, %31
  %33 = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %32, i1 false)
  %34 = sext <8 x i8> %33 to <8 x i32>
  %35 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %34)
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #1

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
