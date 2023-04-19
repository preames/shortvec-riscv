; ModuleID = 'addvv_i32.c'
source_filename = "addvv_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec1_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %b, align 4, !tbaa !4
  %1 = load i32, ptr %a, align 4, !tbaa !4
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec2_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <2 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <2 x i32> %1, %0
  store <2 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec3_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <2 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <2 x i32> %1, %0
  store <2 x i32> %2, ptr %a, align 4, !tbaa !4
  %arrayidx.2 = getelementptr inbounds i32, ptr %b, i64 2
  %3 = load i32, ptr %arrayidx.2, align 4, !tbaa !4
  %arrayidx2.2 = getelementptr inbounds i32, ptr %a, i64 2
  %4 = load i32, ptr %arrayidx2.2, align 4, !tbaa !4
  %add.2 = add nsw i32 %4, %3
  store i32 %add.2, ptr %arrayidx2.2, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec4_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec5_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %b, i64 4
  %3 = load i32, ptr %arrayidx.4, align 4, !tbaa !4
  %arrayidx2.4 = getelementptr inbounds i32, ptr %a, i64 4
  %4 = load i32, ptr %arrayidx2.4, align 4, !tbaa !4
  %add.4 = add nsw i32 %4, %3
  store i32 %add.4, ptr %arrayidx2.4, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec6_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %b, i64 4
  %arrayidx2.4 = getelementptr inbounds i32, ptr %a, i64 4
  %3 = load <2 x i32>, ptr %arrayidx.4, align 4, !tbaa !4
  %4 = load <2 x i32>, ptr %arrayidx2.4, align 4, !tbaa !4
  %5 = add nsw <2 x i32> %4, %3
  store <2 x i32> %5, ptr %arrayidx2.4, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec7_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  %arrayidx.4 = getelementptr inbounds i32, ptr %b, i64 4
  %arrayidx2.4 = getelementptr inbounds i32, ptr %a, i64 4
  %3 = load <2 x i32>, ptr %arrayidx.4, align 4, !tbaa !4
  %4 = load <2 x i32>, ptr %arrayidx2.4, align 4, !tbaa !4
  %5 = add nsw <2 x i32> %4, %3
  store <2 x i32> %5, ptr %arrayidx2.4, align 4, !tbaa !4
  %arrayidx.6 = getelementptr inbounds i32, ptr %b, i64 6
  %6 = load i32, ptr %arrayidx.6, align 4, !tbaa !4
  %arrayidx2.6 = getelementptr inbounds i32, ptr %a, i64 6
  %7 = load i32, ptr %arrayidx2.6, align 4, !tbaa !4
  %add.6 = add nsw i32 %7, %6
  store i32 %add.6, ptr %arrayidx2.6, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec8_addvv_i64(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <8 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <8 x i32> %1, %0
  store <8 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-zca,-experimental-zcb,-experimental-zcd,-experimental-zcf,-experimental-zfa,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvfh,-experimental-zvkb,-experimental-zvkg,-experimental-zvkn,-experimental-zvkned,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksed,-experimental-zvksh,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zihintpause,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }

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
