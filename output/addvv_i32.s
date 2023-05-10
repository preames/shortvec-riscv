	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"addvv_i32.c"
	.globl	vec1_addvv_i64
	.p2align	1
	.type	vec1_addvv_i64,@function
vec1_addvv_i64:
	lw	a1, 0(a1)
	lw	a2, 0(a0)
	add	a1, a1, a2
	sw	a1, 0(a0)
	ret
.Lfunc_end0:
	.size	vec1_addvv_i64, .Lfunc_end0-vec1_addvv_i64

	.globl	vec2_addvv_i64
	.p2align	1
	.type	vec2_addvv_i64,@function
vec2_addvv_i64:
	vsetivli	zero, 2, e32, mf2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end1:
	.size	vec2_addvv_i64, .Lfunc_end1-vec2_addvv_i64

	.globl	vec3_addvv_i64
	.p2align	1
	.type	vec3_addvv_i64,@function
vec3_addvv_i64:
	vsetivli	zero, 2, e32, mf2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	lw	a1, 8(a1)
	lw	a2, 8(a0)
	add	a1, a1, a2
	sw	a1, 8(a0)
	ret
.Lfunc_end2:
	.size	vec3_addvv_i64, .Lfunc_end2-vec3_addvv_i64

	.globl	vec4_addvv_i64
	.p2align	1
	.type	vec4_addvv_i64,@function
vec4_addvv_i64:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end3:
	.size	vec4_addvv_i64, .Lfunc_end3-vec4_addvv_i64

	.globl	vec5_addvv_i64
	.p2align	1
	.type	vec5_addvv_i64,@function
vec5_addvv_i64:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	lw	a1, 16(a1)
	lw	a2, 16(a0)
	add	a1, a1, a2
	sw	a1, 16(a0)
	ret
.Lfunc_end4:
	.size	vec5_addvv_i64, .Lfunc_end4-vec5_addvv_i64

	.globl	vec6_addvv_i64
	.p2align	1
	.type	vec6_addvv_i64,@function
vec6_addvv_i64:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	addi	a1, a1, 16
	addi	a0, a0, 16
	vsetivli	zero, 2, e32, mf2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end5:
	.size	vec6_addvv_i64, .Lfunc_end5-vec6_addvv_i64

	.globl	vec7_addvv_i64
	.p2align	1
	.type	vec7_addvv_i64,@function
vec7_addvv_i64:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	addi	a2, a1, 16
	addi	a3, a0, 16
	vsetivli	zero, 2, e32, mf2, ta, ma
	vle32.v	v8, (a2)
	vle32.v	v9, (a3)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a3)
	lw	a1, 24(a1)
	lw	a2, 24(a0)
	add	a1, a1, a2
	sw	a1, 24(a0)
	ret
.Lfunc_end6:
	.size	vec7_addvv_i64, .Lfunc_end6-vec7_addvv_i64

	.globl	vec8_addvv_i64
	.p2align	1
	.type	vec8_addvv_i64,@function
vec8_addvv_i64:
	vsetivli	zero, 8, e32, m2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v10, (a0)
	vadd.vv	v8, v10, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end7:
	.size	vec8_addvv_i64, .Lfunc_end7-vec8_addvv_i64

	.globl	vec4_addvv_i64_vector_ext
	.p2align	1
	.type	vec4_addvv_i64_vector_ext,@function
vec4_addvv_i64_vector_ext:
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end8:
	.size	vec4_addvv_i64_vector_ext, .Lfunc_end8-vec4_addvv_i64_vector_ext

	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git c501aa88431db19cdda33d8f4d2ada9bf54e336e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
