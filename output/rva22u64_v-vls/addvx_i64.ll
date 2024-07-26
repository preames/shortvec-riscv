; ModuleID = 'addvx_i64.c'
source_filename = "addvx_i64.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec1_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %a, align 8, !tbaa !6
  %add = add nsw i64 %0, %b
  store i64 %add, ptr %a, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec2_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <2 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <2 x i64> %1, <2 x i64> poison, <2 x i32> zeroinitializer
  %3 = add nsw <2 x i64> %0, %2
  store <2 x i64> %3, ptr %a, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec3_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <2 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <2 x i64> %1, <2 x i64> poison, <2 x i32> zeroinitializer
  %3 = add nsw <2 x i64> %0, %2
  store <2 x i64> %3, ptr %a, align 8, !tbaa !6
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 16
  %4 = load i64, ptr %arrayidx.2, align 8, !tbaa !6
  %add.2 = add nsw i64 %4, %b
  store i64 %add.2, ptr %arrayidx.2, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec4_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <4 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = add nsw <4 x i64> %0, %2
  store <4 x i64> %3, ptr %a, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec5_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <4 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = add nsw <4 x i64> %0, %2
  store <4 x i64> %3, ptr %a, align 8, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 32
  %4 = load i64, ptr %arrayidx.4, align 8, !tbaa !6
  %add.4 = add nsw i64 %4, %b
  store i64 %add.4, ptr %arrayidx.4, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec6_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <4 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = add nsw <4 x i64> %0, %2
  store <4 x i64> %3, ptr %a, align 8, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 32
  %4 = load <2 x i64>, ptr %arrayidx.4, align 8, !tbaa !6
  %5 = insertelement <2 x i64> poison, i64 %b, i64 0
  %6 = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer
  %7 = add nsw <2 x i64> %4, %6
  store <2 x i64> %7, ptr %arrayidx.4, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec7_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <4 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = add nsw <4 x i64> %0, %2
  store <4 x i64> %3, ptr %a, align 8, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 32
  %4 = load <2 x i64>, ptr %arrayidx.4, align 8, !tbaa !6
  %5 = insertelement <2 x i64> poison, i64 %b, i64 0
  %6 = shufflevector <2 x i64> %5, <2 x i64> poison, <2 x i32> zeroinitializer
  %7 = add nsw <2 x i64> %4, %6
  store <2 x i64> %7, ptr %arrayidx.4, align 8, !tbaa !6
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 48
  %8 = load i64, ptr %arrayidx.6, align 8, !tbaa !6
  %add.6 = add nsw i64 %8, %b
  store i64 %add.6, ptr %arrayidx.6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2)
define dso_local void @vec8_addvx_i64(ptr nocapture noundef %a, i64 noundef %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i64>, ptr %a, align 8, !tbaa !6
  %1 = insertelement <4 x i64> poison, i64 %b, i64 0
  %2 = shufflevector <4 x i64> %1, <4 x i64> poison, <4 x i32> zeroinitializer
  %3 = add nsw <4 x i64> %0, %2
  store <4 x i64> %3, ptr %a, align 8, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 32
  %4 = load <4 x i64>, ptr %arrayidx.4, align 8, !tbaa !6
  %5 = add nsw <4 x i64> %4, %2
  store <4 x i64> %5, ptr %arrayidx.4, align 8, !tbaa !6
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) vscale_range(2,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zba,+zbb,+zbs,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicsr,+zihintpause,+zihpm,+zkt,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zawrs,-zbc,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zicond,-zifencei,-zihintntl,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }

!llvm.module.flags = !{!0, !1, !2, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"target-abi", !"lp64d"}
!2 = !{i32 6, !"riscv-isa", !3}
!3 = !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicsr2p0_zihintpause2p0_zihpm2p0_zmmul1p0_za64rs1p0_zfhmin1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"}
!4 = !{i32 8, !"SmallDataLimit", i32 8}
!5 = !{!"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
