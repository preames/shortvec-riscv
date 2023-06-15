	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"addvx_i64.c"
	.globl	vec1_addvx_i64
	.p2align	1
	.type	vec1_addvx_i64,@function
vec1_addvx_i64:
	ld	a2, 0(a0)
	add	a1, a1, a2
	sd	a1, 0(a0)
	ret
.Lfunc_end0:
	.size	vec1_addvx_i64, .Lfunc_end0-vec1_addvx_i64

	.globl	vec2_addvx_i64
	.p2align	1
	.type	vec2_addvx_i64,@function
vec2_addvx_i64:
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ret
.Lfunc_end1:
	.size	vec2_addvx_i64, .Lfunc_end1-vec2_addvx_i64

	.globl	vec3_addvx_i64
	.p2align	1
	.type	vec3_addvx_i64,@function
vec3_addvx_i64:
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ld	a2, 16(a0)
	add	a1, a1, a2
	sd	a1, 16(a0)
	ret
.Lfunc_end2:
	.size	vec3_addvx_i64, .Lfunc_end2-vec3_addvx_i64

	.globl	vec4_addvx_i64
	.p2align	1
	.type	vec4_addvx_i64,@function
vec4_addvx_i64:
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ret
.Lfunc_end3:
	.size	vec4_addvx_i64, .Lfunc_end3-vec4_addvx_i64

	.globl	vec5_addvx_i64
	.p2align	1
	.type	vec5_addvx_i64,@function
vec5_addvx_i64:
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ld	a2, 32(a0)
	add	a1, a1, a2
	sd	a1, 32(a0)
	ret
.Lfunc_end4:
	.size	vec5_addvx_i64, .Lfunc_end4-vec5_addvx_i64

	.globl	vec6_addvx_i64
	.p2align	1
	.type	vec6_addvx_i64,@function
vec6_addvx_i64:
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	addi	a0, a0, 32
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ret
.Lfunc_end5:
	.size	vec6_addvx_i64, .Lfunc_end5-vec6_addvx_i64

	.globl	vec7_addvx_i64
	.p2align	1
	.type	vec7_addvx_i64,@function
vec7_addvx_i64:
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	addi	a2, a0, 32
	vsetivli	zero, 2, e64, m1, ta, ma
	vle64.v	v8, (a2)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a2)
	ld	a2, 48(a0)
	add	a1, a1, a2
	sd	a1, 48(a0)
	ret
.Lfunc_end6:
	.size	vec7_addvx_i64, .Lfunc_end6-vec7_addvx_i64

	.globl	vec8_addvx_i64
	.p2align	1
	.type	vec8_addvx_i64,@function
vec8_addvx_i64:
	vsetivli	zero, 4, e64, m2, ta, ma
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	addi	a0, a0, 32
	vle64.v	v8, (a0)
	vadd.vx	v8, v8, a1
	vse64.v	v8, (a0)
	ret
.Lfunc_end7:
	.size	vec8_addvx_i64, .Lfunc_end7-vec8_addvx_i64

	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git c4a3bd7f8b7c587813d0e54d8d2dde7385895d09)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
