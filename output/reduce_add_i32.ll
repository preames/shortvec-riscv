; ModuleID = 'reduce_add_i32.c'
source_filename = "reduce_add_i32.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce1_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !6
  ret i32 %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce2_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !6
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 4
  %1 = load i32, ptr %arrayidx.1, align 4, !tbaa !6
  %add.1 = add nsw i32 %1, %0
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce3_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !6
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 4
  %1 = load i32, ptr %arrayidx.1, align 4, !tbaa !6
  %add.1 = add nsw i32 %1, %0
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 8
  %2 = load i32, ptr %arrayidx.2, align 4, !tbaa !6
  %add.2 = add nsw i32 %2, %add.1
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce4_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %1 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce5_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 16
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !6
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %2, %1
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce6_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 16
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !6
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 20
  %2 = load i32, ptr %arrayidx.5, align 4, !tbaa !6
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %3, %1
  %op.rdx6 = add i32 %op.rdx, %2
  ret i32 %op.rdx6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce7_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i32>, ptr %a, align 4, !tbaa !6
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 16
  %1 = load i32, ptr %arrayidx.4, align 4, !tbaa !6
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 20
  %2 = load i32, ptr %arrayidx.5, align 4, !tbaa !6
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 24
  %3 = load i32, ptr %arrayidx.6, align 4, !tbaa !6
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %0)
  %op.rdx = add i32 %4, %1
  %op.rdx6 = add i32 %2, %3
  %op.rdx7 = add i32 %op.rdx, %op.rdx6
  ret i32 %op.rdx7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @reduce8_add_i32(ptr nocapture noundef readonly %a) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i32>, ptr %a, align 4, !tbaa !6
  %1 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %0)
  ret i32 %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+f,+m,+relax,+v,+za64rs,+zba,+zbb,+zbs,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicsr,+zihintpause,+zihpm,+zkt,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zawrs,-zbc,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zicond,-zifencei,-zihintntl,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
