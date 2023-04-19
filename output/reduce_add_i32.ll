; ModuleID = 'reduce_add_i32.c'
source_filename = "reduce_add_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce1_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !4
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce2_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !4
  %arrayidx.1 = getelementptr inbounds i32, ptr %a, i64 1
  %1 = load i32, ptr %arrayidx.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %1, %0
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce3_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !4
  %arrayidx.1 = getelementptr inbounds i32, ptr %a, i64 1
  %1 = load i32, ptr %arrayidx.1, align 4, !tbaa !4
  %add.1 = add nsw i32 %1, %0
  %arrayidx.2 = getelementptr inbounds i32, ptr %a, i64 2
  %2 = load i32, ptr %arrayidx.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %2, %add.1
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce4_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %1 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce5_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %a, i64 4
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !4
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %2, %1
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce6_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %a, i64 4
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !4
  %arrayidx.5 = getelementptr inbounds i32, ptr %a, i64 5
  %2 = load i32, ptr %arrayidx.5, align 4, !tbaa !4
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %3, %1
  %op.rdx6 = add i32 %op.rdx, %2
  ret i32 %op.rdx6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce7_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %a, i64 4
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !4
  %arrayidx.5 = getelementptr inbounds i32, ptr %a, i64 5
  %2 = load i32, ptr %arrayidx.5, align 4, !tbaa !4
  %arrayidx.6 = getelementptr inbounds i32, ptr %a, i64 6
  %3 = load i32, ptr %arrayidx.6, align 4, !tbaa !4
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %4, %1
  %op.rdx6 = add i32 %2, %3
  %op.rdx7 = add i32 %op.rdx, %op.rdx6
  ret i32 %op.rdx7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce8_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %a, align 4, !tbaa !4
  %1 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %0)
  ret i32 %1
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
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
