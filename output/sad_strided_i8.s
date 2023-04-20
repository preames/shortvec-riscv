	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"sad_strided_i8.c"
	.globl	sum_of_absolute_diff1_
	.p2align	1
	.type	sum_of_absolute_diff1_,@function
sum_of_absolute_diff1_:
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

	.globl	sum_of_absolute_diff2_
	.p2align	1
	.type	sum_of_absolute_diff2_,@function
sum_of_absolute_diff2_:
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

	.globl	sum_of_absolute_diff3_
	.p2align	1
	.type	sum_of_absolute_diff3_,@function
sum_of_absolute_diff3_:
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

	.globl	sum_of_absolute_diff4_
	.p2align	1
	.type	sum_of_absolute_diff4_,@function
sum_of_absolute_diff4_:
	addi	sp, sp, -16
	add.uw	a6, a2, a0
	add.uw	a7, a2, a1
	slli	a5, a2, 1
	add.uw	a3, a5, a0
	add.uw	a5, a5, a1
	sh1add	a2, a2, a2
	add.uw	a4, a2, a0
	add.uw	a2, a2, a1
	lbu	a0, 0(a0)
	lbu	t0, 0(a1)
	lbu	a1, 0(a6)
	lbu	a6, 0(a7)
	lbu	a3, 0(a3)
	lbu	a5, 0(a5)
	lbu	a4, 0(a4)
	lbu	a2, 0(a2)
	sb	a0, 9(sp)
	sb	a1, 8(sp)
	sb	a4, 11(sp)
	sb	a3, 10(sp)
	addi	a0, sp, 8
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	sb	t0, 13(sp)
	sb	a6, 12(sp)
	sb	a2, 15(sp)
	sb	a5, 14(sp)
	addi	a0, sp, 12
	vle8.v	v9, (a0)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m1, ta, ma
	vsext.vf4	v9, v8
	vmv.s.x	v8, zero
	vredsum.vs	v8, v9, v8
	vmv.x.s	a0, v8
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	sum_of_absolute_diff4_, .Lfunc_end3-sum_of_absolute_diff4_

	.globl	sum_of_absolute_diff5_
	.p2align	1
	.type	sum_of_absolute_diff5_,@function
sum_of_absolute_diff5_:
	addi	sp, sp, -16
	add.uw	a6, a2, a0
	add.uw	a7, a2, a1
	slli	a5, a2, 1
	add.uw	t0, a5, a0
	add.uw	t1, a5, a1
	sh1add	a4, a2, a2
	add.uw	t3, a4, a0
	add.uw	t4, a4, a1
	lbu	t5, 0(a0)
	lbu	t2, 0(a1)
	lbu	a3, 0(a6)
	lbu	a6, 0(a7)
	lbu	a4, 0(t0)
	lbu	a7, 0(t1)
	lbu	a5, 0(t3)
	lbu	t0, 0(t4)
	sb	t5, 9(sp)
	sb	a3, 8(sp)
	sb	a5, 11(sp)
	sb	a4, 10(sp)
	addi	a3, sp, 8
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a3)
	sb	t2, 13(sp)
	sb	a6, 12(sp)
	sb	t0, 15(sp)
	sb	a7, 14(sp)
	addi	a3, sp, 12
	vle8.v	v9, (a3)
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
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	sum_of_absolute_diff5_, .Lfunc_end4-sum_of_absolute_diff5_

	.globl	sum_of_absolute_diff6_
	.p2align	1
	.type	sum_of_absolute_diff6_,@function
sum_of_absolute_diff6_:
	addi	sp, sp, -16
	add.uw	a6, a2, a0
	add.uw	a7, a2, a1
	slli	a5, a2, 1
	add.uw	t0, a5, a0
	add.uw	t1, a5, a1
	sh1add	a4, a2, a2
	add.uw	t3, a4, a0
	add.uw	t4, a4, a1
	lbu	t5, 0(a0)
	lbu	t2, 0(a1)
	lbu	a3, 0(a6)
	lbu	a6, 0(a7)
	lbu	a4, 0(t0)
	lbu	a7, 0(t1)
	lbu	a5, 0(t3)
	lbu	t0, 0(t4)
	sb	t5, 9(sp)
	sb	a3, 8(sp)
	sb	a5, 11(sp)
	sb	a4, 10(sp)
	addi	a3, sp, 8
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a3)
	sb	t2, 13(sp)
	sb	a6, 12(sp)
	sb	t0, 15(sp)
	sb	a7, 14(sp)
	addi	a3, sp, 12
	vle8.v	v9, (a3)
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
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	sum_of_absolute_diff6_, .Lfunc_end5-sum_of_absolute_diff6_

	.globl	sum_of_absolute_diff7_
	.p2align	1
	.type	sum_of_absolute_diff7_,@function
sum_of_absolute_diff7_:
	addi	sp, sp, -16
	add.uw	a6, a2, a0
	add.uw	t0, a2, a1
	slli	a5, a2, 1
	add.uw	t1, a5, a0
	add.uw	t2, a5, a1
	sh1add	a7, a2, a2
	add.uw	t5, a7, a0
	add.uw	t4, a7, a1
	lbu	t6, 0(a0)
	lbu	t3, 0(a1)
	lbu	a3, 0(a6)
	lbu	a6, 0(t0)
	lbu	a4, 0(t1)
	lbu	t0, 0(t2)
	lbu	a5, 0(t5)
	lbu	t1, 0(t4)
	sb	t6, 9(sp)
	sb	a3, 8(sp)
	sb	a5, 11(sp)
	sb	a4, 10(sp)
	addi	a3, sp, 8
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a3)
	sb	t3, 13(sp)
	sb	a6, 12(sp)
	sb	t1, 15(sp)
	sb	t0, 14(sp)
	addi	a3, sp, 12
	vle8.v	v9, (a3)
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
	slli	a7, a7, 1
	add.uw	a0, a7, a0
	lbu	a0, 0(a0)
	add.uw	a1, a7, a1
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
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	sum_of_absolute_diff7_, .Lfunc_end6-sum_of_absolute_diff7_

	.globl	sum_of_absolute_diff8_
	.p2align	1
	.type	sum_of_absolute_diff8_,@function
sum_of_absolute_diff8_:
	addi	sp, sp, -80
	sd	s0, 72(sp)
	sd	s1, 64(sp)
	sd	s2, 56(sp)
	sd	s3, 48(sp)
	sd	s4, 40(sp)
	sd	s5, 32(sp)
	sd	s6, 24(sp)
	add.uw	a6, a2, a0
	add.uw	a7, a2, a1
	slli	a5, a2, 1
	add.uw	t0, a5, a0
	add.uw	t1, a5, a1
	sh1add	a4, a2, a2
	add.uw	t2, a4, a0
	add.uw	t3, a4, a1
	slli	a3, a2, 2
	add.uw	t5, a3, a0
	add.uw	t4, a3, a1
	sh2add	a3, a2, a2
	add.uw	s3, a3, a0
	add.uw	t6, a3, a1
	slli	a4, a4, 1
	add.uw	s4, a4, a0
	add.uw	s5, a4, a1
	slli	s0, a2, 3
	subw	s0, s0, a2
	add.uw	a2, s0, a0
	add.uw	s0, s0, a1
	lbu	a0, 0(a0)
	lbu	s2, 0(a1)
	lbu	a1, 0(a6)
	lbu	a6, 0(a7)
	lbu	s6, 0(t0)
	lbu	a7, 0(t1)
	lbu	a5, 0(t2)
	lbu	t0, 0(t3)
	lbu	a3, 0(t5)
	lbu	t1, 0(t4)
	lbu	a4, 0(s3)
	lbu	t2, 0(t6)
	lbu	s1, 0(s4)
	lbu	t3, 0(s5)
	lbu	a2, 0(a2)
	lbu	s0, 0(s0)
	sb	a0, 9(sp)
	sb	a1, 8(sp)
	sb	a4, 13(sp)
	sb	a3, 12(sp)
	sb	a5, 11(sp)
	sb	s6, 10(sp)
	sb	a2, 15(sp)
	sb	s1, 14(sp)
	addi	a0, sp, 8
	vsetivli	zero, 8, e8, mf2, ta, ma
	vle8.v	v8, (a0)
	sb	s2, 17(sp)
	sb	a6, 16(sp)
	sb	t2, 21(sp)
	sb	t1, 20(sp)
	sb	t0, 19(sp)
	sb	a7, 18(sp)
	sb	s0, 23(sp)
	sb	t3, 22(sp)
	addi	a0, sp, 16
	vle8.v	v9, (a0)
	vsub.vv	v8, v8, v9
	vrsub.vi	v9, v8, 0
	vmax.vv	v8, v8, v9
	vsetvli	zero, zero, e32, m2, ta, ma
	vsext.vf4	v10, v8
	vmv.s.x	v8, zero
	vredsum.vs	v8, v10, v8
	vmv.x.s	a0, v8
	ld	s0, 72(sp)
	ld	s1, 64(sp)
	ld	s2, 56(sp)
	ld	s3, 48(sp)
	ld	s4, 40(sp)
	ld	s5, 32(sp)
	ld	s6, 24(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end7:
	.size	sum_of_absolute_diff8_, .Lfunc_end7-sum_of_absolute_diff8_

	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 7f596bb50944ee41a9dd1cb95c196dc6f8873b21)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
