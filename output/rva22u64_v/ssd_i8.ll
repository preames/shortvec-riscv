; ModuleID = 'ssd_i8.c'
source_filename = "ssd_i8.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-unknown"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff1_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %conv = sext i8 %sub.i to i32
  %mul = mul nsw i32 %conv, %conv
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff2_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %conv = sext i8 %sub.i to i32
  %mul = mul nsw i32 %conv, %conv
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx2.1 = getelementptr inbounds i8, ptr %b, i64 1
  %3 = load i8, ptr %arrayidx2.1, align 1, !tbaa !6
  %sub.i.1 = sub i8 %2, %3
  %conv.1 = sext i8 %sub.i.1 to i32
  %mul.1 = mul nsw i32 %conv.1, %conv.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  ret i32 %add.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff3_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %a, align 1, !tbaa !6
  %1 = load i8, ptr %b, align 1, !tbaa !6
  %sub.i = sub i8 %0, %1
  %conv = sext i8 %sub.i to i32
  %mul = mul nsw i32 %conv, %conv
  %arrayidx.1 = getelementptr inbounds i8, ptr %a, i64 1
  %2 = load i8, ptr %arrayidx.1, align 1, !tbaa !6
  %arrayidx2.1 = getelementptr inbounds i8, ptr %b, i64 1
  %3 = load i8, ptr %arrayidx2.1, align 1, !tbaa !6
  %sub.i.1 = sub i8 %2, %3
  %conv.1 = sext i8 %sub.i.1 to i32
  %mul.1 = mul nsw i32 %conv.1, %conv.1
  %add.1 = add nuw nsw i32 %mul.1, %mul
  %arrayidx.2 = getelementptr inbounds i8, ptr %a, i64 2
  %4 = load i8, ptr %arrayidx.2, align 1, !tbaa !6
  %arrayidx2.2 = getelementptr inbounds i8, ptr %b, i64 2
  %5 = load i8, ptr %arrayidx2.2, align 1, !tbaa !6
  %sub.i.2 = sub i8 %4, %5
  %conv.2 = sext i8 %sub.i.2 to i32
  %mul.2 = mul nsw i32 %conv.2, %conv.2
  %add.2 = add nuw nsw i32 %mul.2, %add.1
  ret i32 %add.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff4_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff5_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %5, %6
  %conv.4 = sext i8 %sub.i.4 to i32
  %mul.4 = mul nsw i32 %conv.4, %conv.4
  %7 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %7, %mul.4
  ret i32 %op.rdx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff6_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %5, %6
  %conv.4 = sext i8 %sub.i.4 to i32
  %mul.4 = mul nsw i32 %conv.4, %conv.4
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %7 = load i8, ptr %arrayidx.5, align 1, !tbaa !6
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %8 = load i8, ptr %arrayidx2.5, align 1, !tbaa !6
  %sub.i.5 = sub i8 %7, %8
  %conv.5 = sext i8 %sub.i.5 to i32
  %mul.5 = mul nsw i32 %conv.5, %conv.5
  %9 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %9, %mul.4
  %op.rdx10 = add i32 %op.rdx, %mul.5
  ret i32 %op.rdx10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff7_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <4 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <4 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <4 x i8> %0, %1
  %3 = sext <4 x i8> %2 to <4 x i32>
  %4 = mul nsw <4 x i32> %3, %3
  %arrayidx.4 = getelementptr inbounds i8, ptr %a, i64 4
  %5 = load i8, ptr %arrayidx.4, align 1, !tbaa !6
  %arrayidx2.4 = getelementptr inbounds i8, ptr %b, i64 4
  %6 = load i8, ptr %arrayidx2.4, align 1, !tbaa !6
  %sub.i.4 = sub i8 %5, %6
  %conv.4 = sext i8 %sub.i.4 to i32
  %mul.4 = mul nsw i32 %conv.4, %conv.4
  %arrayidx.5 = getelementptr inbounds i8, ptr %a, i64 5
  %7 = load i8, ptr %arrayidx.5, align 1, !tbaa !6
  %arrayidx2.5 = getelementptr inbounds i8, ptr %b, i64 5
  %8 = load i8, ptr %arrayidx2.5, align 1, !tbaa !6
  %sub.i.5 = sub i8 %7, %8
  %conv.5 = sext i8 %sub.i.5 to i32
  %mul.5 = mul nsw i32 %conv.5, %conv.5
  %arrayidx.6 = getelementptr inbounds i8, ptr %a, i64 6
  %9 = load i8, ptr %arrayidx.6, align 1, !tbaa !6
  %arrayidx2.6 = getelementptr inbounds i8, ptr %b, i64 6
  %10 = load i8, ptr %arrayidx2.6, align 1, !tbaa !6
  %sub.i.6 = sub i8 %9, %10
  %conv.6 = sext i8 %sub.i.6 to i32
  %mul.6 = mul nsw i32 %conv.6, %conv.6
  %11 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %op.rdx = add i32 %11, %mul.4
  %op.rdx10 = add nuw nsw i32 %mul.5, %mul.6
  %op.rdx11 = add i32 %op.rdx, %op.rdx10
  ret i32 %op.rdx11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024)
define dso_local signext i32 @sum_of_squared_diff8_(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b) local_unnamed_addr #0 {
entry:
  %0 = load <8 x i8>, ptr %a, align 1, !tbaa !6
  %1 = load <8 x i8>, ptr %b, align 1, !tbaa !6
  %2 = sub <8 x i8> %0, %1
  %3 = sext <8 x i8> %2 to <8 x i32>
  %4 = mul nsw <8 x i32> %3, %3
  %5 = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %4)
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) vscale_range(2,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic-rv64" "target-features"="+64bit,+a,+c,+d,+experimental,+f,+m,+relax,+v,+za64rs,+zba,+zbb,+zbs,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+zicclsm,+ziccrse,+zicntr,+zicsr,+zihintpause,+zihpm,+zkt,+zmmul,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvl128b,+zvl32b,+zvl64b,-b,-e,-experimental-smmpm,-experimental-smnpm,-experimental-ssnpm,-experimental-sspm,-experimental-ssqosid,-experimental-supm,-experimental-zacas,-experimental-zalasr,-experimental-zicfilp,-experimental-zicfiss,-h,-shcounterenw,-shgatpa,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcsrind,-smepmp,-smstateen,-ssaia,-ssccfg,-ssccptr,-sscofpmf,-sscounterenw,-sscsrind,-ssstateen,-ssstrict,-sstc,-sstvala,-sstvecd,-ssu64xl,-svade,-svadu,-svbare,-svinval,-svnapot,-svpbmt,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xsfcease,-xsfvcp,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zaamo,-zabha,-zalrsc,-zama16b,-zawrs,-zbc,-zbkb,-zbkc,-zbkx,-zca,-zcb,-zcd,-zce,-zcf,-zcmop,-zcmp,-zcmt,-zdinx,-zfa,-zfbfmin,-zfh,-zfinx,-zhinx,-zhinxmin,-zicond,-zifencei,-zihintntl,-zimop,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvbb,-zvbc,-zvfbfmin,-zvfbfwma,-zvfh,-zvfhmin,-zvkb,-zvkg,-zvkn,-zvknc,-zvkned,-zvkng,-zvknha,-zvknhb,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvkt,-zvl1024b,-zvl16384b,-zvl2048b,-zvl256b,-zvl32768b,-zvl4096b,-zvl512b,-zvl65536b,-zvl8192b" }
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
