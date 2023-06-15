	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"ssd_i8.c"
	.globl	sum_of_squared_diff1_
	.p2align	1
	.type	sum_of_squared_diff1_,@function
sum_of_squared_diff1_:
	lbu	a0, 0(a0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	sext.b	a0, a0
	mul	a0, a0, a0
	zext.w	a0, a0
	ret
.Lfunc_end0:
	.size	sum_of_squared_diff1_, .Lfunc_end0-sum_of_squared_diff1_

	.globl	sum_of_squared_diff2_
	.p2align	1
	.type	sum_of_squared_diff2_,@function
sum_of_squared_diff2_:
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf4, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmv.x.s	a0, v8
	vsetivli	zero, 1, e32, mf2, ta, ma
	vslidedown.vi	v8, v8, 1
	vmv.x.s	a1, v8
	add	a0, a0, a1
	zext.w	a0, a0
	ret
.Lfunc_end1:
	.size	sum_of_squared_diff2_, .Lfunc_end1-sum_of_squared_diff2_

	.globl	sum_of_squared_diff3_
	.p2align	1
	.type	sum_of_squared_diff3_,@function
sum_of_squared_diff3_:
	lbu	a2, 0(a0)
	lbu	a3, 0(a1)
	addi	a0, a0, 1
	addi	a1, a1, 1
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	subw	a2, a2, a3
	sext.b	a0, a2
	mul	a0, a0, a0
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf4, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmv.x.s	a1, v8
	add	a0, a0, a1
	vsetivli	zero, 1, e32, mf2, ta, ma
	vslidedown.vi	v8, v8, 1
	vmv.x.s	a1, v8
	add	a0, a0, a1
	zext.w	a0, a0
	ret
.Lfunc_end2:
	.size	sum_of_squared_diff3_, .Lfunc_end2-sum_of_squared_diff3_

	.globl	sum_of_squared_diff4_
	.p2align	1
	.type	sum_of_squared_diff4_,@function
sum_of_squared_diff4_:
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

	.globl	sum_of_squared_diff5_
	.p2align	1
	.type	sum_of_squared_diff5_,@function
sum_of_squared_diff5_:
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	lbu	a0, 4(a0)
	lbu	a1, 4(a1)
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

	.globl	sum_of_squared_diff6_
	.p2align	1
	.type	sum_of_squared_diff6_,@function
sum_of_squared_diff6_:
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	addi	a0, a0, 4
	addi	a1, a1, 4
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v9, (a0)
	vle8.v	v10, (a1)
	vsub.vv	v9, v9, v10
	vsetvli	zero, zero, e16, mf4, ta, ma
	vsext.vf2	v10, v9
	vwmul.vv	v9, v10, v10
	vsetvli	zero, zero, e32, mf2, ta, ma
	vmv.x.s	a0, v9
	vsetivli	zero, 4, e32, m1, ta, ma
	vmv.s.x	v10, a0
	vredsum.vs	v8, v8, v10
	vmv.x.s	a0, v8
	vsetivli	zero, 1, e32, mf2, ta, ma
	vslidedown.vi	v8, v9, 1
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end5:
	.size	sum_of_squared_diff6_, .Lfunc_end5-sum_of_squared_diff6_

	.globl	sum_of_squared_diff7_
	.p2align	1
	.type	sum_of_squared_diff7_,@function
sum_of_squared_diff7_:
	vsetivli	zero, 4, e8, mf4, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, mf2, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v8, v9, v9
	lbu	a2, 4(a0)
	lbu	a3, 4(a1)
	addi	a0, a0, 5
	addi	a1, a1, 5
	vsetivli	zero, 2, e8, mf8, ta, ma
	vle8.v	v9, (a0)
	vle8.v	v10, (a1)
	subw	a2, a2, a3
	sext.b	a0, a2
	mul	a0, a0, a0
	vsub.vv	v9, v9, v10
	vsetvli	zero, zero, e16, mf4, ta, ma
	vsext.vf2	v10, v9
	vwmul.vv	v9, v10, v10
	vsetivli	zero, 4, e32, m1, ta, ma
	vmv.s.x	v10, a0
	vredsum.vs	v8, v8, v10
	vmv.x.s	a0, v8
	vmv.x.s	a1, v9
	vsetivli	zero, 1, e32, mf2, ta, ma
	vslidedown.vi	v8, v9, 1
	vmv.x.s	a2, v8
	add	a1, a1, a2
	addw	a0, a0, a1
	ret
.Lfunc_end6:
	.size	sum_of_squared_diff7_, .Lfunc_end6-sum_of_squared_diff7_

	.globl	sum_of_squared_diff8_
	.p2align	1
	.type	sum_of_squared_diff8_,@function
sum_of_squared_diff8_:
	vsetivli	zero, 8, e8, mf2, ta, ma
	vle8.v	v8, (a0)
	vle8.v	v9, (a1)
	vsub.vv	v8, v8, v9
	vsetvli	zero, zero, e16, m1, ta, ma
	vsext.vf2	v9, v8
	vwmul.vv	v10, v9, v9
	vsetivli	zero, 8, e32, m2, ta, ma
	vmv.s.x	v8, zero
	vredsum.vs	v8, v10, v8
	vmv.x.s	a0, v8
	ret
.Lfunc_end7:
	.size	sum_of_squared_diff8_, .Lfunc_end7-sum_of_squared_diff8_

	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git c4a3bd7f8b7c587813d0e54d8d2dde7385895d09)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
