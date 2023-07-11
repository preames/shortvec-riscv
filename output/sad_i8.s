	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"sad_i8.c"
	.globl	sum_of_absolute_diff1_          # -- Begin function sum_of_absolute_diff1_
	.p2align	1
	.type	sum_of_absolute_diff1_,@function
sum_of_absolute_diff1_:                 # @sum_of_absolute_diff1_
# %bb.0:                                # %entry
	lbu	a0, 0(a0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	ret
.Lfunc_end0:
	.size	sum_of_absolute_diff1_, .Lfunc_end0-sum_of_absolute_diff1_
                                        # -- End function
	.globl	sum_of_absolute_diff2_          # -- Begin function sum_of_absolute_diff2_
	.p2align	1
	.type	sum_of_absolute_diff2_,@function
sum_of_absolute_diff2_:                 # @sum_of_absolute_diff2_
# %bb.0:                                # %entry
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, mf2, ta, ma
	vsext.vf4	v9, v8
	vmv.x.s	a0, v9
	vslidedown.vi	v8, v9, 1
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end1:
	.size	sum_of_absolute_diff2_, .Lfunc_end1-sum_of_absolute_diff2_
                                        # -- End function
	.globl	sum_of_absolute_diff3_          # -- Begin function sum_of_absolute_diff3_
	.p2align	1
	.type	sum_of_absolute_diff3_,@function
sum_of_absolute_diff3_:                 # @sum_of_absolute_diff3_
# %bb.0:                                # %entry
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, mf2, ta, ma
	vsext.vf4	v9, v8
	lbu	a0, 2(a0)
	lbu	a1, 2(a1)
	vmv.x.s	a2, v9
	vslidedown.vi	v8, v9, 1
	vmv.x.s	a3, v8
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	add	a0, a0, a2
	addw	a0, a0, a3
	ret
.Lfunc_end2:
	.size	sum_of_absolute_diff3_, .Lfunc_end2-sum_of_absolute_diff3_
                                        # -- End function
	.globl	sum_of_absolute_diff4_          # -- Begin function sum_of_absolute_diff4_
	.p2align	1
	.type	sum_of_absolute_diff4_,@function
sum_of_absolute_diff4_:                 # @sum_of_absolute_diff4_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	vsext.vf4	v9, v8
	vmv.s.x	v8, zero
	vredsum.vs	v8, v9, v8
	vmv.x.s	a0, v8
	ret
.Lfunc_end3:
	.size	sum_of_absolute_diff4_, .Lfunc_end3-sum_of_absolute_diff4_
                                        # -- End function
	.globl	sum_of_absolute_diff5_          # -- Begin function sum_of_absolute_diff5_
	.p2align	1
	.type	sum_of_absolute_diff5_,@function
sum_of_absolute_diff5_:                 # @sum_of_absolute_diff5_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	lbu	a0, 4(a0)
	lbu	a1, 4(a1)
	vsext.vf4	v9, v8
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	vmv.s.x	v8, a0
	vredsum.vs	v8, v9, v8
	vmv.x.s	a0, v8
	ret
.Lfunc_end4:
	.size	sum_of_absolute_diff5_, .Lfunc_end4-sum_of_absolute_diff5_
                                        # -- End function
	.globl	sum_of_absolute_diff6_          # -- Begin function sum_of_absolute_diff6_
	.p2align	1
	.type	sum_of_absolute_diff6_,@function
sum_of_absolute_diff6_:                 # @sum_of_absolute_diff6_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	lbu	a2, 4(a0)
	lbu	a3, 4(a1)
	vsext.vf4	v9, v8
	subw	a2, a2, a3
	sext.b	a2, a2
	lbu	a0, 5(a0)
	lbu	a1, 5(a1)
	neg	a3, a2
	max	a2, a2, a3
	sext.b	a2, a2
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	vmv.s.x	v8, a2
	vredsum.vs	v8, v9, v8
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end5:
	.size	sum_of_absolute_diff6_, .Lfunc_end5-sum_of_absolute_diff6_
                                        # -- End function
	.globl	sum_of_absolute_diff7_          # -- Begin function sum_of_absolute_diff7_
	.p2align	1
	.type	sum_of_absolute_diff7_,@function
sum_of_absolute_diff7_:                 # @sum_of_absolute_diff7_
# %bb.0:                                # %entry
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	lbu	a2, 6(a0)
	lbu	a3, 6(a1)
	vsext.vf4	v9, v8
	addi	a0, a0, 4
	addi	a1, a1, 4
	subw	a2, a2, a3
	sext.b	a2, a2
	vmv.s.x	v8, zero
	vredsum.vs	v8, v9, v8
	vmv.x.s	a3, v8
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	neg	a0, a2
	max	a0, a2, a0
	sext.b	a0, a0
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, mf2, ta, ma
	vslide1down.vx	v9, v8, a3
	vslide1down.vx	v9, v9, a0
	vsetvli	zero, zero, e16, mf4, ta, ma
	vsext.vf2	v10, v8
	vwadd.wv	v9, v9, v10
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmv.x.s	a0, v9
	vsetivli	zero, 1, e32, mf2, ta, ma
	vslidedown.vi	v8, v9, 1
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end6:
	.size	sum_of_absolute_diff7_, .Lfunc_end6-sum_of_absolute_diff7_
                                        # -- End function
	.globl	sum_of_absolute_diff8_          # -- Begin function sum_of_absolute_diff8_
	.p2align	1
	.type	sum_of_absolute_diff8_,@function
sum_of_absolute_diff8_:                 # @sum_of_absolute_diff8_
# %bb.0:                                # %entry
	vsetivli	zero, 8, e8, mf2, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m2, ta, ma
	vsext.vf4	v10, v8
	vmv.s.x	v8, zero
	vredsum.vs	v8, v10, v8
	vmv.x.s	a0, v8
	ret
.Lfunc_end7:
	.size	sum_of_absolute_diff8_, .Lfunc_end7-sum_of_absolute_diff8_
                                        # -- End function
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git e2d7d988115c1b67b0175be5d6bc95153945b5be)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
