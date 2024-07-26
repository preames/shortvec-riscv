; ModuleID = 'addvv_i32.c'
source_filename = "addvv_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec1_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %b, align 4, !tbaa !6
  %1 = load i32, ptr %a, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec2_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <2 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <2 x i32> %1, %0
  store <2 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec3_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <3 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <3 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <3 x i32> %1, %0
  store <3 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec4_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec5_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %b, i64 16
  %3 = load i32, ptr %arrayidx.4, align 4, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %a, i64 16
  %4 = load i32, ptr %arrayidx2.4, align 4, !tbaa !6
  %add.4 = add nsw i32 %4, %3
  store i32 %add.4, ptr %arrayidx2.4, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec6_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %b, i64 16
  %arrayidx2.4 = getelementptr inbounds i8, ptr %a, i64 16
  %3 = load <2 x i32>, ptr %arrayidx.4, align 4, !tbaa !6
  %4 = load <2 x i32>, ptr %arrayidx2.4, align 4, !tbaa !6
  %5 = add nsw <2 x i32> %4, %3
  store <2 x i32> %5, ptr %arrayidx2.4, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec7_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <7 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <7 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <7 x i32> %1, %0
  store <7 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec8_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <8 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <8 x i32> %1, %0
  store <8 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec32_addvv_i32_vector_ext(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <32 x i32>, ptr %b, align 128, !tbaa !10
  %1 = load <32 x i32>, ptr %a, align 128, !tbaa !10
  %add = add <32 x i32> %1, %0
  store <32 x i32> %add, ptr %a, align 128, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec4_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024)
define dso_local void @vec32_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %0 = tail call i64 @llvm.vscale.i64()
  %min.iters.check = icmp ugt i64 %0, 8
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

for.body.preheader:                               ; preds = %middle.block, %entry
  %indvars.iv.ph = phi i64 [ 0, %entry ], [ %n.vec, %middle.block ]
  br label %for.body

vector.ph:                                        ; preds = %entry
  %1 = tail call i64 @llvm.vscale.i64()
  %.neg = mul nuw nsw i64 %1, 60
  %n.vec = and i64 %.neg, 32
  %2 = tail call i64 @llvm.vscale.i64()
  %3 = shl nuw nsw i64 %2, 2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %4 = getelementptr inbounds i32, ptr %b, i64 %index
  %wide.load = load <vscale x 4 x i32>, ptr %4, align 4, !tbaa !6
  %5 = getelementptr inbounds i32, ptr %a, i64 %index
  %wide.load7 = load <vscale x 4 x i32>, ptr %5, align 4, !tbaa !6
  %6 = add nsw <vscale x 4 x i32> %wide.load7, %wide.load
  store <vscale x 4 x i32> %6, ptr %5, align 4, !tbaa !6
  %index.next = add nuw i64 %index, %3
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n.not = icmp eq i64 %n.vec, 0
  br i1 %cmp.n.not, label %for.body.preheader, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body, %middle.block
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, ptr %b, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !6
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx2, align 4, !tbaa !6
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %arrayidx2, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.vscale.i64() #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zba,+zbb,+zbs,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicsr,+zihintpause,+zihpm,+zkt,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zawrs,-zbc,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zicond,-zifencei,-zihintntl,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zba,+zbb,+zbs,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicsr,+zihintpause,+zihpm,+zkt,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zawrs,-zbc,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zicond,-zifencei,-zihintntl,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicsr2p0_zihintpause2p0_zihpm2p0_zmmul1p0_za64rs1p0_zfhmin1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !14, !13}
