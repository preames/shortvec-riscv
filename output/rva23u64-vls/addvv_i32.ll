; ModuleID = 'addvv_i32.c'
source_filename = "addvv_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec1_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %b, align 4, !tbaa !6
  %1 = load i32, ptr %a, align 4, !tbaa !6
  %add = add nsw i32 %1, %0
  store i32 %add, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec2_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <2 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <2 x i32> %1, %0
  store <2 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec3_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <3 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <3 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <3 x i32> %1, %0
  store <3 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec4_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec7_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <7 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <7 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <7 x i32> %1, %0
  store <7 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec8_addvv_i32(ptr noalias nocapture noundef %a, ptr nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <8 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <8 x i32> %1, %0
  store <8 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec32_addvv_i32_vector_ext(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <32 x i32>, ptr %b, align 128, !tbaa !10
  %1 = load <32 x i32>, ptr %a, align 128, !tbaa !10
  %add = add <32 x i32> %1, %0
  store <32 x i32> %add, ptr %a, align 128, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec4_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %b, align 4, !tbaa !6
  %1 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %2 = add nsw <4 x i32> %1, %0
  store <4 x i32> %2, ptr %a, align 4, !tbaa !6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec32_addvv_i32_vector_ext_scalarized(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #1 {
entry:
  %wide.load = load <vscale x 4 x i32>, ptr %b, align 4, !tbaa !6
  %wide.load7 = load <vscale x 4 x i32>, ptr %a, align 4, !tbaa !6
  %0 = add nsw <vscale x 4 x i32> %wide.load7, %wide.load
  store <vscale x 4 x i32> %0, ptr %a, align 4, !tbaa !6
  %1 = getelementptr inbounds i8, ptr %b, i64 32
  %wide.load.1 = load <vscale x 4 x i32>, ptr %1, align 4, !tbaa !6
  %2 = getelementptr inbounds i8, ptr %a, i64 32
  %wide.load7.1 = load <vscale x 4 x i32>, ptr %2, align 4, !tbaa !6
  %3 = add nsw <vscale x 4 x i32> %wide.load7.1, %wide.load.1
  store <vscale x 4 x i32> %3, ptr %2, align 4, !tbaa !6
  %4 = getelementptr inbounds i8, ptr %b, i64 64
  %wide.load.2 = load <vscale x 4 x i32>, ptr %4, align 4, !tbaa !6
  %5 = getelementptr inbounds i8, ptr %a, i64 64
  %wide.load7.2 = load <vscale x 4 x i32>, ptr %5, align 4, !tbaa !6
  %6 = add nsw <vscale x 4 x i32> %wide.load7.2, %wide.load.2
  store <vscale x 4 x i32> %6, ptr %5, align 4, !tbaa !6
  %7 = getelementptr inbounds i8, ptr %b, i64 96
  %wide.load.3 = load <vscale x 4 x i32>, ptr %7, align 4, !tbaa !6
  %8 = getelementptr inbounds i8, ptr %a, i64 96
  %wide.load7.3 = load <vscale x 4 x i32>, ptr %8, align 4, !tbaa !6
  %9 = add nsw <vscale x 4 x i32> %wide.load7.3, %wide.load.3
  store <vscale x 4 x i32> %9, ptr %8, align 4, !tbaa !6
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zawrs,+zba,+zbb,+zbs,+zca,+zcb,+zcmop,+zfa,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicond,+zicsr,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfhmin,+zvkb,+zvkt,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zbc,-zbkb,-zbkc,-zbkx,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zifencei,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) vscale_range(2,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zawrs,+zba,+zbb,+zbs,+zca,+zcb,+zcmop,+zfa,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicond,+zicsr,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfhmin,+zvkb,+zvkt,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zbc,-zbkb,-zbkc,-zbkx,-zcd,-zce,-zcf,-zcmp,-zcmt,-zdinx,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zifencei,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicond1p0_zicsr2p0_zihintntl1p0_zihintpause2p0_zihpm2p0_zimop1p0_zmmul1p0_za64rs1p0_zawrs1p0_zfa1p0_zfhmin1p0_zca1p0_zcb1p0_zcmop1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfhmin1p0_zvkb1p0_zvkt1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
