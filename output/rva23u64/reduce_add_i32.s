	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_zicclsm1p0_ziccrse1p0_zicntr2p0_zicond1p0_zicsr2p0_zihintntl1p0_zihintpause2p0_zihpm2p0_zimop1p0_zmmul1p0_za64rs1p0_zawrs1p0_zfa1p0_zfhmin1p0_zca1p0_zcb1p0_zcmop1p0_zba1p0_zbb1p0_zbs1p0_zkt1p0_zvbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfhmin1p0_zvkb1p0_zvkt1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"reduce_add_i32.c"
	.globl	reduce1_add_i32                 # -- Begin function reduce1_add_i32
	.p2align	1
	.type	reduce1_add_i32,@function
reduce1_add_i32:                        # @reduce1_add_i32
# %bb.0:                                # %entry
	lw	a0, 0(a0)
	ret
.Lfunc_end0:
	.size	reduce1_add_i32, .Lfunc_end0-reduce1_add_i32
                                        # -- End function
	.globl	reduce2_add_i32                 # -- Begin function reduce2_add_i32
	.p2align	1
	.type	reduce2_add_i32,@function
reduce2_add_i32:                        # @reduce2_add_i32
# %bb.0:                                # %entry
	lw	a1, 0(a0)
	lw	a0, 4(a0)
	addw	a0, a0, a1
	ret
.Lfunc_end1:
	.size	reduce2_add_i32, .Lfunc_end1-reduce2_add_i32
                                        # -- End function
	.globl	reduce3_add_i32                 # -- Begin function reduce3_add_i32
	.p2align	1
	.type	reduce3_add_i32,@function
reduce3_add_i32:                        # @reduce3_add_i32
# %bb.0:                                # %entry
	lw	a1, 0(a0)
	lw	a2, 4(a0)
	lw	a0, 8(a0)
	add	a1, a1, a2
	addw	a0, a0, a1
	ret
.Lfunc_end2:
	.size	reduce3_add_i32, .Lfunc_end2-reduce3_add_i32
                                        # -- End function
	.globl	reduce4_add_i32                 # -- Begin function reduce4_add_i32
	.p2align	1
	.type	reduce4_add_i32,@function
reduce4_add_i32:                        # @reduce4_add_i32
# %bb.0:                                # %entry
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a0)
	vmv.s.x	v9, zero
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end3:
	.size	reduce4_add_i32, .Lfunc_end3-reduce4_add_i32
                                        # -- End function
	.globl	reduce5_add_i32                 # -- Begin function reduce5_add_i32
	.p2align	1
	.type	reduce5_add_i32,@function
reduce5_add_i32:                        # @reduce5_add_i32
# %bb.0:                                # %entry
	lw	a1, 16(a0)
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a0)
	vmv.s.x	v9, a1
	vredsum.vs	v8, v8, v9
	vmv.x.s	a0, v8
	ret
.Lfunc_end4:
	.size	reduce5_add_i32, .Lfunc_end4-reduce5_add_i32
                                        # -- End function
	.globl	reduce6_add_i32                 # -- Begin function reduce6_add_i32
	.p2align	1
	.type	reduce6_add_i32,@function
reduce6_add_i32:                        # @reduce6_add_i32
# %bb.0:                                # %entry
	lw	a1, 16(a0)
	vsetivli	zero, 4, e32, m1, ta, ma
	vle32.v	v8, (a0)
	lw	a0, 20(a0)
	vmv.s.x	v9, a1
	vredsum.vs	v8, v8, v9
	vmv.x.s	a1, v8
	addw	a0, a0, a1
	ret
.Lfunc_end5:
	.size	reduce6_add_i32, .Lfunc_end5-reduce6_add_i32
                                        # -- End function
	.globl	reduce7_add_i32                 # -- Begin function reduce7_add_i32
	.p2align	1
	.type	reduce7_add_i32,@function
reduce7_add_i32:                        # @reduce7_add_i32
# %bb.0:                                # %entry
	lw	a1, 16(a0)
	vsetivli	zero, 4, e32, m1, ta, ma
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
                                        # -- End function
	.globl	reduce8_add_i32                 # -- Begin function reduce8_add_i32
	.p2align	1
	.type	reduce8_add_i32,@function
reduce8_add_i32:                        # @reduce8_add_i32
# %bb.0:                                # %entry
	vsetivli	zero, 8, e32, m2, ta, ma
	vle32.v	v8, (a0)
	vmv.s.x	v10, zero
	vredsum.vs	v8, v8, v10
	vmv.x.s	a0, v8
	ret
.Lfunc_end7:
	.size	reduce8_add_i32, .Lfunc_end7-reduce8_add_i32
                                        # -- End function
	.ident	"clang version 20.0.0git (https://github.com/llvm/llvm-project.git d3fd28a13478786b3ebf092b8ebfcfd0c5e34928)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
