	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"sad_strided_i8.c"
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
	lbu	a3, 0(a0)
	lbu	a4, 0(a1)
	subw	a3, a3, a4
	sext.b	a3, a3
	add.uw	a0, a2, a0
	lbu	a0, 0(a0)
	add.uw	a1, a2, a1
	lbu	a1, 0(a1)
	neg	a2, a3
	max	a2, a3, a2
	sext.b	a2, a2
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	add	a0, a0, a2
	ret
.Lfunc_end1:
	.size	sum_of_absolute_diff2_, .Lfunc_end1-sum_of_absolute_diff2_
                                        # -- End function
	.globl	sum_of_absolute_diff3_          # -- Begin function sum_of_absolute_diff3_
	.p2align	1
	.type	sum_of_absolute_diff3_,@function
sum_of_absolute_diff3_:                 # @sum_of_absolute_diff3_
# %bb.0:                                # %entry
	lbu	a3, 0(a0)
	lbu	a4, 0(a1)
	subw	a3, a3, a4
	sext.b	a3, a3
	add.uw	a4, a2, a0
	lbu	a6, 0(a4)
	add.uw	a5, a2, a1
	lbu	a5, 0(a5)
	neg	a4, a3
	max	a3, a3, a4
	sext.b	a3, a3
	subw	a4, a6, a5
	sext.b	a4, a4
	neg	a5, a4
	slli	a2, a2, 1
	add.uw	a0, a2, a0
	lbu	a0, 0(a0)
	add.uw	a1, a2, a1
	lbu	a1, 0(a1)
	max	a2, a4, a5
	sext.b	a2, a2
	add	a2, a2, a3
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	add	a0, a0, a2
	ret
.Lfunc_end2:
	.size	sum_of_absolute_diff3_, .Lfunc_end2-sum_of_absolute_diff3_
                                        # -- End function
	.globl	sum_of_absolute_diff4_          # -- Begin function sum_of_absolute_diff4_
	.p2align	1
	.type	sum_of_absolute_diff4_,@function
sum_of_absolute_diff4_:                 # @sum_of_absolute_diff4_
# %bb.0:                                # %entry
	lbu	a7, 0(a0)
	lbu	a6, 0(a1)
	add.uw	a5, a2, a0
	lbu	a5, 0(a5)
	add.uw	a4, a2, a1
	lbu	t0, 0(a4)
	slli	a3, a2, 1
	add.uw	a4, a3, a0
	lbu	a4, 0(a4)
	add.uw	a3, a3, a1
	lbu	a3, 0(a3)
	sh1add	a2, a2, a2
	add.uw	a0, a2, a0
	lbu	a0, 0(a0)
	add.uw	a1, a2, a1
	lbu	a1, 0(a1)
	vsetivli	zero, 4, e8, mf4, ta, ma
	vslide1down.vx	v8, v8, a5
	vslide1down.vx	v8, v8, a7
	vslide1down.vx	v8, v8, a4
	vslide1down.vx	v8, v8, a0
	vslide1down.vx	v9, v8, t0
	vslide1down.vx	v9, v9, a6
	vslide1down.vx	v9, v9, a3
	vslide1down.vx	v9, v9, a1
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
	lbu	a7, 0(a0)
	lbu	a6, 0(a1)
	add.uw	a5, a2, a0
	lbu	t1, 0(a5)
	add.uw	a4, a2, a1
	lbu	t0, 0(a4)
	slli	a3, a2, 1
	add.uw	a4, a3, a0
	lbu	a4, 0(a4)
	add.uw	a3, a3, a1
	lbu	t2, 0(a3)
	sh1add	a5, a2, a2
	add.uw	a3, a5, a0
	lbu	a3, 0(a3)
	add.uw	a5, a5, a1
	lbu	a5, 0(a5)
	vsetivli	zero, 4, e8, mf4, ta, ma
	vslide1down.vx	v8, v8, t1
	vslide1down.vx	v8, v8, a7
	vslide1down.vx	v8, v8, a4
	vslide1down.vx	v8, v8, a3
	vslide1down.vx	v9, v8, t0
	vslide1down.vx	v9, v9, a6
	vslide1down.vx	v9, v9, t2
	vslide1down.vx	v9, v9, a5
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	slli	a2, a2, 2
	add.uw	a0, a2, a0
	lbu	a0, 0(a0)
	add.uw	a1, a2, a1
	lbu	a1, 0(a1)
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
	lbu	a7, 0(a0)
	lbu	a6, 0(a1)
	add.uw	a5, a2, a0
	lbu	t1, 0(a5)
	add.uw	a4, a2, a1
	lbu	t0, 0(a4)
	slli	a3, a2, 1
	add.uw	a4, a3, a0
	lbu	a4, 0(a4)
	add.uw	a3, a3, a1
	lbu	t2, 0(a3)
	sh1add	a5, a2, a2
	add.uw	a3, a5, a0
	lbu	a3, 0(a3)
	add.uw	a5, a5, a1
	lbu	a5, 0(a5)
	vsetivli	zero, 4, e8, mf4, ta, ma
	vslide1down.vx	v8, v8, t1
	vslide1down.vx	v8, v8, a7
	vslide1down.vx	v8, v8, a4
	vslide1down.vx	v8, v8, a3
	vslide1down.vx	v9, v8, t0
	vslide1down.vx	v9, v9, a6
	vslide1down.vx	v9, v9, t2
	vslide1down.vx	v9, v9, a5
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	slli	a3, a2, 2
	add.uw	a4, a3, a0
	lbu	a4, 0(a4)
	add.uw	a3, a3, a1
	lbu	a3, 0(a3)
	vsext.vf4	v9, v8
	subw	a4, a4, a3
	sext.b	a3, a4
	sh2add	a2, a2, a2
	add.uw	a0, a2, a0
	lbu	a0, 0(a0)
	add.uw	a1, a2, a1
	lbu	a1, 0(a1)
	neg	a2, a3
	max	a2, a3, a2
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
	lbu	a7, 0(a0)
	lbu	a6, 0(a1)
	add.uw	a5, a2, a0
	lbu	t1, 0(a5)
	add.uw	a4, a2, a1
	lbu	t0, 0(a4)
	slli	a3, a2, 1
	add.uw	a4, a3, a0
	lbu	t3, 0(a4)
	add.uw	a3, a3, a1
	lbu	t2, 0(a3)
	sh1add	t4, a2, a2
	add.uw	a3, t4, a0
	lbu	a3, 0(a3)
	add.uw	a4, t4, a1
	lbu	a4, 0(a4)
	vsetivli	zero, 4, e8, mf4, ta, ma
	vslide1down.vx	v8, v8, t1
	vslide1down.vx	v8, v8, a7
	vslide1down.vx	v8, v8, t3
	vslide1down.vx	v8, v8, a3
	vslide1down.vx	v9, v8, t0
	vslide1down.vx	v9, v9, a6
	vslide1down.vx	v9, v9, t2
	vslide1down.vx	v9, v9, a4
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	slli	a3, a2, 2
	add.uw	a4, a3, a0
	lbu	a4, 0(a4)
	add.uw	a3, a3, a1
	lbu	a3, 0(a3)
	vsext.vf4	v9, v8
	subw	a4, a4, a3
	sext.b	a3, a4
	sh2add	a2, a2, a2
	add.uw	a4, a2, a0
	lbu	a4, 0(a4)
	add.uw	a2, a2, a1
	lbu	a2, 0(a2)
	neg	a5, a3
	max	a3, a3, a5
	sext.b	a3, a3
	subw	a4, a4, a2
	sext.b	a2, a4
	slli	t4, t4, 1
	add.uw	a0, t4, a0
	lbu	a0, 0(a0)
	add.uw	a1, t4, a1
	lbu	a1, 0(a1)
	neg	a4, a2
	max	a2, a2, a4
	sext.b	a2, a2
	subw	a0, a0, a1
	sext.b	a0, a0
	neg	a1, a0
	max	a0, a0, a1
	sext.b	a0, a0
	vmv.s.x	v8, a3
	vredsum.vs	v8, v9, v8
	vmv.x.s	a1, v8
	add	a0, a0, a2
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
	addi	sp, sp, -32
	sd	s0, 24(sp)                      # 8-byte Folded Spill
	sd	s1, 16(sp)                      # 8-byte Folded Spill
	sd	s2, 8(sp)                       # 8-byte Folded Spill
	lbu	t0, 0(a0)
	lbu	a6, 0(a1)
	add.uw	a5, a2, a0
	lbu	t2, 0(a5)
	add.uw	a4, a2, a1
	lbu	a7, 0(a4)
	slli	a4, a2, 1
	add.uw	a3, a4, a0
	lbu	t3, 0(a3)
	add.uw	a4, a4, a1
	lbu	t1, 0(a4)
	sh1add	a4, a2, a2
	add.uw	a5, a4, a0
	lbu	t5, 0(a5)
	add.uw	a3, a4, a1
	lbu	t4, 0(a3)
	slli	a3, a2, 2
	add.uw	a5, a3, a0
	lbu	a5, 0(a5)
	add.uw	a3, a3, a1
	lbu	t6, 0(a3)
	sh2add	a3, a2, a2
	add.uw	s0, a3, a0
	lbu	s0, 0(s0)
	add.uw	a3, a3, a1
	lbu	s2, 0(a3)
	slli	a4, a4, 1
	add.uw	s1, a4, a0
	lbu	s1, 0(s1)
	add.uw	a4, a4, a1
	lbu	a4, 0(a4)
	slli	a3, a2, 3
	subw	a3, a3, a2
	add.uw	a0, a3, a0
	lbu	a0, 0(a0)
	add.uw	a1, a3, a1
	lbu	a1, 0(a1)
	vsetivli	zero, 8, e8, mf2, ta, ma
	vslide1down.vx	v8, v8, t2
	vslide1down.vx	v8, v8, t0
	vslide1down.vx	v8, v8, t3
	vslide1down.vx	v8, v8, t5
	vslide1down.vx	v8, v8, a5
	vslide1down.vx	v8, v8, s0
	vslide1down.vx	v8, v8, s1
	vslide1down.vx	v8, v8, a0
	vslide1down.vx	v9, v8, a7
	vslide1down.vx	v9, v9, a6
	vslide1down.vx	v9, v9, t1
	vslide1down.vx	v9, v9, t4
	vslide1down.vx	v9, v9, t6
	vslide1down.vx	v9, v9, s2
	vslide1down.vx	v9, v9, a4
	vslide1down.vx	v9, v9, a1
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m2, ta, ma
	vsext.vf4	v10, v8
	vmv.s.x	v8, zero
	vredsum.vs	v8, v10, v8
	vmv.x.s	a0, v8
	ld	s0, 24(sp)                      # 8-byte Folded Reload
	ld	s1, 16(sp)                      # 8-byte Folded Reload
	ld	s2, 8(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	sum_of_absolute_diff8_, .Lfunc_end7-sum_of_absolute_diff8_
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 660b740e4b3c4b23dfba36940ae0fe2ad41bfedf)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
