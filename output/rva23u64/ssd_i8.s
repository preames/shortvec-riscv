	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicond1p0_zicsr2p0_zihintntl1p0_zihintpause2p0_zihpm2p0_zimop1p0_zmmul1p0_za64rs1p0_zawrs1p0_zfa1p0_zfhmin1p0_zca1p0_zcb1p0_zcmop1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfhmin1p0_zvkb1p0_zvkt1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ssd_i8.c"
	.globl	sum_of_squared_diff1_           # -- Begin function sum_of_squared_diff1_
	.p2align	1
	.type	sum_of_squared_diff1_,@function
sum_of_squared_diff1_:                  # @sum_of_squared_diff1_
# %bb.0:                                # %entry
	lbu	a0, 0(a0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	ret
.Lfunc_end0:
	.size	sum_of_squared_diff1_, .Lfunc_end0-sum_of_squared_diff1_
                                        # -- End function
	.globl	sum_of_squared_diff2_           # -- Begin function sum_of_squared_diff2_
	.p2align	1
	.type	sum_of_squared_diff2_,@function
sum_of_squared_diff2_:                  # @sum_of_squared_diff2_
# %bb.0:                                # %entry
	lbu	a2, 0(a0)
	lbu	a3, 0(a1)
	lbu	a0, 1(a0)
	lbu	a1, 1(a1)
	subw	a2, a2, a3
	sext.b	a2, a2
	mul	a2, a2, a2
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	add	a0, a0, a2
	ret
.Lfunc_end1:
	.size	sum_of_squared_diff2_, .Lfunc_end1-sum_of_squared_diff2_
                                        # -- End function
	.globl	sum_of_squared_diff3_           # -- Begin function sum_of_squared_diff3_
	.p2align	1
	.type	sum_of_squared_diff3_,@function
sum_of_squared_diff3_:                  # @sum_of_squared_diff3_
# %bb.0:                                # %entry
	lbu	a2, 0(a0)
	lbu	a3, 0(a1)
	lbu	a4, 1(a0)
	lbu	a5, 1(a1)
	subw	a2, a2, a3
	sext.b	a2, a2
	mul	a2, a2, a2
	subw	a4, a4, a5
	lbu	a0, 2(a0)
	lbu	a1, 2(a1)
	sext.b	a4, a4
	mul	a4, a4, a4
	add	a2, a2, a4
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	add	a0, a0, a2
	ret
.Lfunc_end2:
	.size	sum_of_squared_diff3_, .Lfunc_end2-sum_of_squared_diff3_
                                        # -- End function
	.globl	sum_of_squared_diff4_           # -- Begin function sum_of_squared_diff4_
	.p2align	1
	.type	sum_of_squared_diff4_,@function
sum_of_squared_diff4_:                  # @sum_of_squared_diff4_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	vmv.s.x	v9, zero
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end3:
	.size	sum_of_squared_diff4_, .Lfunc_end3-sum_of_squared_diff4_
                                        # -- End function
	.globl	sum_of_squared_diff5_           # -- Begin function sum_of_squared_diff5_
	.p2align	1
	.type	sum_of_squared_diff5_,@function
sum_of_squared_diff5_:                  # @sum_of_squared_diff5_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	lbu	a0, 4(a0)
	lbu	a1, 4(a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	vsetvli	zero, zero, e32, m1, ta, ma
	vmv.s.x	v9, a0
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end4:
	.size	sum_of_squared_diff5_, .Lfunc_end4-sum_of_squared_diff5_
                                        # -- End function
	.globl	sum_of_squared_diff6_           # -- Begin function sum_of_squared_diff6_
	.p2align	1
	.type	sum_of_squared_diff6_,@function
sum_of_squared_diff6_:                  # @sum_of_squared_diff6_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	lbu	a2, 4(a0)
	lbu	a3, 4(a1)
	vwmul.vv	v8, v9, v9
	lbu	a0, 5(a0)
	lbu	a1, 5(a1)
	subw	a2, a2, a3
	sext.b	a2, a2
	mul	a2, a2, a2
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	vsetvli	zero, zero, e32, m1, ta, ma
	vmv.s.x	v9, a2
	vredsum.vs	v8, v8, v9
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end5:
	.size	sum_of_squared_diff6_, .Lfunc_end5-sum_of_squared_diff6_
                                        # -- End function
	.globl	sum_of_squared_diff7_           # -- Begin function sum_of_squared_diff7_
	.p2align	1
	.type	sum_of_squared_diff7_,@function
sum_of_squared_diff7_:                  # @sum_of_squared_diff7_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	lbu	a2, 4(a0)
	lbu	a3, 4(a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	subw	a2, a2, a3
	sext.b	a2, a2
	lbu	a3, 5(a0)
	lbu	a4, 5(a1)
	mul	a2, a2, a2
	lbu	a0, 6(a0)
	lbu	a1, 6(a1)
	subw	a3, a3, a4
	sext.b	a3, a3
	mul	a3, a3, a3
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	vsetvli	zero, zero, e32, m1, ta, ma
	vmv.s.x	v9, a2
	vredsum.vs	v8, v8, v9
	vmv.x.s	a1, v8
	add	a0, a0, a3
	addw	a0, a0, a1
	ret
.Lfunc_end6:
	.size	sum_of_squared_diff7_, .Lfunc_end6-sum_of_squared_diff7_
                                        # -- End function
	.globl	sum_of_squared_diff8_           # -- Begin function sum_of_squared_diff8_
	.p2align	1
	.type	sum_of_squared_diff8_,@function
sum_of_squared_diff8_:                  # @sum_of_squared_diff8_
# %bb.0:                                # %entry
	vsetivli	zero, 8, e8, mf2, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, m1, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v10, v9, v9
	vsetvli	zero, zero, e32, m2, ta, ma
	vmv.s.x	v8, zero
	vredsum.vs	v8, v10, v8
	vmv.x.s	a0, v8
	ret
.Lfunc_end7:
	.size	sum_of_squared_diff8_, .Lfunc_end7-sum_of_squared_diff8_
                                        # -- End function
	.ident	"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
