; ModuleID = 'addvv_i32.c'
source_filename = "addvv_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec1_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %b, align 4, !tbaa !4
  %1 = load i32, ptr %a, align 4, !tbaa !4
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec2_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <2 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <2 x i32> %1, %0
  store <2 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec3_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
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
define dso_local void @vec4_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec5_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
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
define dso_local void @vec6_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
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
define dso_local void @vec7_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
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
define dso_local void @vec8_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <8 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <8 x i32> %1, %0
  store <8 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec4_addvv_i32_vector_ext(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <32 x i32>, ptr %b, align 128, !tbaa !8
  %1 = load <32 x i32>, ptr %a, align 128, !tbaa !8
  %add = add <32 x i32> %1, %0
  store <32 x i32> %add, ptr %a, align 128, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec4_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !4
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !4
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec32_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %0 = tail call i64 @llvm.vscale.i64()
  %min.iters.check = icmp ugt i64 %0, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %entry
  %1 = tail call i64 @llvm.vscale.i64()
  %2 = shl nuw nsw i64 %1, 2
  %n.mod.vf = urem i64 32, %2
  %n.vec = sub nuw nsw i64 32, %n.mod.vf
  %3 = tail call i64 @llvm.vscale.i64()
  %4 = shl nuw nsw i64 %3, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds i32, ptr %b, i64 %index
  %wide.load = load <vscale x 4 x i32>, ptr %5, align 4, !tbaa !4
  %6 = getelementptr inbounds i32, ptr %a, i64 %index
  %wide.load7 = load <vscale x 4 x i32>, ptr %6, align 4, !tbaa !4
  %7 = add nsw <vscale x 4 x i32> %wide.load7, %wide.load
  store <vscale x 4 x i32> %7, ptr %6, align 4, !tbaa !4
  %index.next = add nuw i64 %index, %4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %entry, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx2, align 4, !tbaa !4
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %arrayidx2, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-smaia,-experimental-ssaia,-experimental-zacas,-experimental-zfa,-experimental-zfbfmin,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvbb,-experimental-zvbc,-experimental-zvfbfmin,-experimental-zvfbfwma,-experimental-zvfh,-experimental-zvkg,-experimental-zvkn,-experimental-zvknc,-experimental-zvkned,-experimental-zvkng,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksc,-experimental-zvksed,-experimental-zvksg,-experimental-zvksh,-experimental-zvkt,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfcie,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zcf,-zcmp,-zcmt,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicntr,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+zba,+zbb,+zbc,+zbs,+zicsr,+zifencei,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-e,-experimental-smaia,-experimental-ssaia,-experimental-zacas,-experimental-zfa,-experimental-zfbfmin,-experimental-zicond,-experimental-zihintntl,-experimental-ztso,-experimental-zvbb,-experimental-zvbc,-experimental-zvfbfmin,-experimental-zvfbfwma,-experimental-zvfh,-experimental-zvkg,-experimental-zvkn,-experimental-zvknc,-experimental-zvkned,-experimental-zvkng,-experimental-zvknha,-experimental-zvknhb,-experimental-zvks,-experimental-zvksc,-experimental-zvksed,-experimental-zvksg,-experimental-zvksh,-experimental-zvkt,-h,-save-restore,-svinval,-svnapot,-svpbmt,-xsfcie,-xsfvcp,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-zawrs,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zcf,-zcmp,-zcmt,-zdinx,-zfh,-zfhmin,-zfinx,-zhinx,-zhinxmin,-zicbom,-zicbop,-zicboz,-zicntr,-zihintpause,-zihpm,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-zkt,-zmmul,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 8, !"SmallDataLimit", i32 8}
!3 = !{!"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2d7d988115c1b67b0175be5d6bc95153945b5be)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !12, !11}
