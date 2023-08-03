	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0_zbc1p0_zbs1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"addvv_i32.c"
	.globl	vec1_addvv_i32                  # -- Begin function vec1_addvv_i32
	.p2align	1
	.type	vec1_addvv_i32,@function
vec1_addvv_i32:                         # @vec1_addvv_i32
# %bb.0:                                # %entry
	lw	a1, 0(a1)
	lw	a2, 0(a0)
	add	a1, a1, a2
	sw	a1, 0(a0)
	ret
.Lfunc_end0:
	.size	vec1_addvv_i32, .Lfunc_end0-vec1_addvv_i32
                                        # -- End function
	.globl	vec2_addvv_i32                  # -- Begin function vec2_addvv_i32
	.p2align	1
	.type	vec2_addvv_i32,@function
vec2_addvv_i32:                         # @vec2_addvv_i32
# %bb.0:                                # %entry
	vsetivli	zero, 2, e32, mf2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end1:
	.size	vec2_addvv_i32, .Lfunc_end1-vec2_addvv_i32
                                        # -- End function
	.globl	vec3_addvv_i32                  # -- Begin function vec3_addvv_i32
	.p2align	1
	.type	vec3_addvv_i32,@function
vec3_addvv_i32:                         # @vec3_addvv_i32
# %bb.0:                                # %entry
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
	.size	vec3_addvv_i32, .Lfunc_end2-vec3_addvv_i32
                                        # -- End function
	.globl	vec4_addvv_i32                  # -- Begin function vec4_addvv_i32
	.p2align	1
	.type	vec4_addvv_i32,@function
vec4_addvv_i32:                         # @vec4_addvv_i32
# %bb.0:                                # %entry
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end3:
	.size	vec4_addvv_i32, .Lfunc_end3-vec4_addvv_i32
                                        # -- End function
	.globl	vec5_addvv_i32                  # -- Begin function vec5_addvv_i32
	.p2align	1
	.type	vec5_addvv_i32,@function
vec5_addvv_i32:                         # @vec5_addvv_i32
# %bb.0:                                # %entry
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
	.size	vec5_addvv_i32, .Lfunc_end4-vec5_addvv_i32
                                        # -- End function
	.globl	vec6_addvv_i32                  # -- Begin function vec6_addvv_i32
	.p2align	1
	.type	vec6_addvv_i32,@function
vec6_addvv_i32:                         # @vec6_addvv_i32
# %bb.0:                                # %entry
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
	.size	vec6_addvv_i32, .Lfunc_end5-vec6_addvv_i32
                                        # -- End function
	.globl	vec7_addvv_i32                  # -- Begin function vec7_addvv_i32
	.p2align	1
	.type	vec7_addvv_i32,@function
vec7_addvv_i32:                         # @vec7_addvv_i32
# %bb.0:                                # %entry
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
	.size	vec7_addvv_i32, .Lfunc_end6-vec7_addvv_i32
                                        # -- End function
	.globl	vec8_addvv_i32                  # -- Begin function vec8_addvv_i32
	.p2align	1
	.type	vec8_addvv_i32,@function
vec8_addvv_i32:                         # @vec8_addvv_i32
# %bb.0:                                # %entry
	vsetivli	zero, 8, e32, m2, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v10, (a0)
	vadd.vv	v8, v10, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end7:
	.size	vec8_addvv_i32, .Lfunc_end7-vec8_addvv_i32
                                        # -- End function
	.globl	vec4_addvv_i32_vector_ext       # -- Begin function vec4_addvv_i32_vector_ext
	.p2align	1
	.type	vec4_addvv_i32_vector_ext,@function
vec4_addvv_i32_vector_ext:              # @vec4_addvv_i32_vector_ext
# %bb.0:                                # %entry
	li	a2, 32
	vsetvli	zero, a2, e32, m8, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v16, (a0)
	vadd.vv	v8, v16, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end8:
	.size	vec4_addvv_i32_vector_ext, .Lfunc_end8-vec4_addvv_i32_vector_ext
                                        # -- End function
	.globl	vec4_addvv_i32_vector_ext_scalarized # -- Begin function vec4_addvv_i32_vector_ext_scalarized
	.p2align	1
	.type	vec4_addvv_i32_vector_ext_scalarized,@function
vec4_addvv_i32_vector_ext_scalarized:   # @vec4_addvv_i32_vector_ext_scalarized
# %bb.0:                                # %entry
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a1)
	vle32.v	v9, (a0)
	vadd.vv	v8, v9, v8
	vse32.v	v8, (a0)
	ret
.Lfunc_end9:
	.size	vec4_addvv_i32_vector_ext_scalarized, .Lfunc_end9-vec4_addvv_i32_vector_ext_scalarized
                                        # -- End function
	.globl	vec32_addvv_i32_vector_ext_scalarized # -- Begin function vec32_addvv_i32_vector_ext_scalarized
	.p2align	1
	.type	vec32_addvv_i32_vector_ext_scalarized,@function
vec32_addvv_i32_vector_ext_scalarized:  # @vec32_addvv_i32_vector_ext_scalarized
# %bb.0:                                # %entry
	csrr	a3, vlenb
	srli	a2, a3, 3
	li	a4, 8
	bgeu	a4, a2, .LBB10_2
# %bb.1:
	li	a6, 0
	j	.LBB10_5
.LBB10_2:                               # %vector.ph
	li	a4, 60
	mul	a2, a2, a4
	andi	a6, a2, 32
	srli	a7, a3, 1
	slli	a3, a3, 1
	vsetvli	a2, zero, e32, m2, ta, ma
	mv	a5, a6
	mv	a4, a0
	mv	a2, a1
.LBB10_3:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vl2re32.v	v8, (a2)
	vl2re32.v	v10, (a4)
	vadd.vv	v8, v10, v8
	vs2r.v	v8, (a4)
	add	a2, a2, a3
	sub	a5, a5, a7
	add	a4, a4, a3
	bnez	a5, .LBB10_3
# %bb.4:                                # %middle.block
	bnez	a6, .LBB10_7
.LBB10_5:                               # %for.body.preheader
	sh2add	a0, a6, a0
	sh2add	a1, a6, a1
	addi	a2, a6, -32
.LBB10_6:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	lw	a3, 0(a1)
	lw	a4, 0(a0)
	add	a3, a3, a4
	sw	a3, 0(a0)
	addi	a0, a0, 4
	addi	a2, a2, 1
	addi	a1, a1, 4
	bnez	a2, .LBB10_6
.LBB10_7:                               # %for.cond.cleanup
	ret
.Lfunc_end10:
	.size	vec32_addvv_i32_vector_ext_scalarized, .Lfunc_end10-vec32_addvv_i32_vector_ext_scalarized
                                        # -- End function
	.ident	"clang version 18.0.0 (https://github.com/llvm/llvm-project.git 660b740e4b3c4b23dfba36940ae0fe2ad41bfedf)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
