; ModuleID = 'sad_i8.c'
source_filename = "sad_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %spec.select.i = tail call i8 @llvm.abs.i8(i8 %sub.i, i1 false)
  %conv = sext i8 %spec.select.i to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <2 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <2 x i8> %0, %1
  %3 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %2, i1 false)
  %4 = extractelement <2 x i8> %3, i64 0
  %5 = sext i8 %4 to i32
  %6 = extractelement <2 x i8> %3, i64 1
  %7 = sext i8 %6 to i32
  %add.1 = add nsw i32 %5, %7
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <2 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <2 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <2 x i8> %0, %1
  %3 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %2, i1 false)
  %4 = extractelement <2 x i8> %3, i64 0
  %5 = sext i8 %4 to i32
  %6 = extractelement <2 x i8> %3, i64 1
  %7 = sext i8 %6 to i32
  %add.1 = add nsw i32 %5, %7
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 2
  %8 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx2.2 = getelementptr inbounds i8, ptr %b, i64 2
  %9 = load i8, ptr %arrayidx2.2, align 1, !tbaa !6
  %sub.i.2 = sub i8 %8, %9
  %spec.select.i.2 = tail call i8 @llvm.abs.i8(i8 %sub.i.2, i1 false)
  %conv.2 = sext i8 %spec.select.i.2 to i32
  %add.2 = add nsw i32 %add.1, %conv.2
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %4 = sext <4 x i8> %3 to <4 x i16>
  %5 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %4)
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %4 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %5 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %4, %5
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %6 = sext <4 x i8> %3 to <4 x i16>
  %7 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %6)
  %8 = sext i16 %7 to i32
  %op.rdx = add nsw i32 %8, %conv.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %4 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %5 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %4, %5
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %6 = load i8, ptr %arrayidx.5, align 1, !tbaa !6
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %7 = load i8, ptr %arrayidx2.5, align 1, !tbaa !6
  %sub.i.5 = sub i8 %6, %7
  %spec.select.i.5 = tail call i8 @llvm.abs.i8(i8 %sub.i.5, i1 false)
  %conv.5 = sext i8 %spec.select.i.5 to i32
  %8 = sext <4 x i8> %3 to <4 x i16>
  %9 = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %8)
  %10 = sext i16 %9 to i32
  %op.rdx = add nsw i32 %10, %conv.4
  %op.rdx10 = add nsw i32 %op.rdx, %conv.5
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = tail call <4 x i8> @llvm.abs.v4i8(<4 x i8> %2, i1 false)
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %4 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %5 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %4, %5
  %spec.select.i.4 = tail call i8 @llvm.abs.i8(i8 %sub.i.4, i1 false)
  %conv.4 = sext i8 %spec.select.i.4 to i32
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %6 = load <2 x i8>, ptr %arrayidx.5, align 1, !tbaa !6
  %7 = load <2 x i8>, ptr %arrayidx2.5, align 1, !tbaa !6
  %8 = sub <2 x i8> %6, %7
  %9 = tail call <2 x i8> @llvm.abs.v2i8(<2 x i8> %8, i1 false)
  %10 = sext <4 x i8> %3 to <4 x i32>
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %op.rdx = add i32 %11, %conv.4
  %12 = extractelement <2 x i8> %9, i64 0
  %13 = sext i8 %12 to i32
  %14 = extractelement <2 x i8> %9, i64 1
  %15 = sext i8 %14 to i32
  %op.rdx10 = add nsw i32 %13, %15
  %op.rdx11 = add i32 %op.rdx, %op.rdx10
  ret i32 %op.rdx11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_absolute_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <8 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <8 x i8> %0, %1
  %3 = tail call <8 x i8> @llvm.abs.v8i8(<8 x i8> %2, i1 false)
  %4 = sext <8 x i8> %3 to <8 x i32>
  %5 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i8> @llvm.abs.v2i8(<2 x i8>, i1 immarg) #1

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
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
