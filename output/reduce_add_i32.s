	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"reduce_add_i32.c"
	.globl	reduce1_add_i32
	.p2align	1
	.type	reduce1_add_i32,@function
reduce1_add_i32:
	lw	a0, 0(a0)
	ret
.Lfunc_end0:
	.size	reduce1_add_i32, .Lfunc_end0-reduce1_add_i32

	.globl	reduce2_add_i32
	.p2align	1
	.type	reduce2_add_i32,@function
reduce2_add_i32:
	lw	a1, 0(a0)
	lw	a0, 4(a0)
	addw	a0, a0, a1
	ret
.Lfunc_end1:
	.size	reduce2_add_i32, .Lfunc_end1-reduce2_add_i32

	.globl	reduce3_add_i32
	.p2align	1
	.type	reduce3_add_i32,@function
reduce3_add_i32:
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	lw	a0, 8(a0)
	add	a1, a1, a2
	addw	a0, a0, a1
	ret
.Lfunc_end2:
	.size	reduce3_add_i32, .Lfunc_end2-reduce3_add_i32

	.globl	reduce4_add_i32
	.p2align	1
	.type	reduce4_add_i32,@function
reduce4_add_i32:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a0)
	vmv.s.x	v9, zero
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end3:
	.size	reduce4_add_i32, .Lfunc_end3-reduce4_add_i32

	.globl	reduce5_add_i32
	.p2align	1
	.type	reduce5_add_i32,@function
reduce5_add_i32:
	vsetivli	zero, 4, e32, m1, ta, ma
	lw	a1, 16(a0)
	vle32.v	v8, (a0)
	vmv.s.x	v9, a1
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end4:
	.size	reduce5_add_i32, .Lfunc_end4-reduce5_add_i32

	.globl	reduce6_add_i32
	.p2align	1
	.type	reduce6_add_i32,@function
reduce6_add_i32:
	vsetivli	zero, 4, e32, m1, ta, ma
	lw	a1, 16(a0)
	vle32.v	v8, (a0)
	lw	a0, 20(a0)
	vmv.s.x	v9, a1
	vredsum.vs	v8, v8, v9
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end5:
	.size	reduce6_add_i32, .Lfunc_end5-reduce6_add_i32

	.globl	reduce7_add_i32
	.p2align	1
	.type	reduce7_add_i32,@function
reduce7_add_i32:
	vsetivli	zero, 4, e32, m1, ta, ma
	lw	a1, 16(a0)
	vle32.v	v8, (a0)
	lw	a2, 20(a0)
	lw	a0, 24(a0)
	vmv.s.x	v9, a1
	vredsum.vs	v8, v8, v9
	vmv.x.s	a1, v8
	add	a0, a0, a2
	addw	a0, a0, a1
	ret
.Lfunc_end6:
	.size	reduce7_add_i32, .Lfunc_end6-reduce7_add_i32

	.globl	reduce8_add_i32
	.p2align	1
	.type	reduce8_add_i32,@function
reduce8_add_i32:
	vsetivli	zero, 8, e32, m2, ta, ma
	vle32.v	v8, (a0)
	vmv.s.x	v10, zero
	vredsum.vs	v8, v8, v10
	vmv.x.s	a0, v8
	ret
.Lfunc_end7:
	.size	reduce8_add_i32, .Lfunc_end7-reduce8_add_i32

	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 7f596bb50944ee41a9dd1cb95c196dc6f8873b21)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
