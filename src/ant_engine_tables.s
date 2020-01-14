	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
$Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.globl	step_west
$LFB21 = .
	.file 1 "ant_engine_tables.c"
	.loc 1 10 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	step_west
	.type	step_west, @function
step_west:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL0 = .
	.loc 1 11 0
	lw	$2,0($4)
	addiu	$2,$2,-1
	teq	$5,$0,7
	divu	$0,$2,$5
	mfhi	$5
$LVL1 = .
	jr	$31
	sw	$5,0($4)

	.set	macro
	.set	reorder
	.end	step_west
	.cfi_endproc
$LFE21:
	.size	step_west, .-step_west
	.align	2
	.globl	step_east
$LFB22 = .
	.loc 1 14 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	step_east
	.type	step_east, @function
step_east:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL2 = .
	.loc 1 15 0
	lw	$2,0($4)
	addiu	$2,$2,1
	teq	$5,$0,7
	divu	$0,$2,$5
	mfhi	$5
$LVL3 = .
	jr	$31
	sw	$5,0($4)

	.set	macro
	.set	reorder
	.end	step_east
	.cfi_endproc
$LFE22:
	.size	step_east, .-step_east
	.align	2
	.globl	step_north
$LFB23 = .
	.loc 1 18 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	step_north
	.type	step_north, @function
step_north:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL4 = .
	.loc 1 19 0
	lw	$2,4($4)
	addiu	$2,$2,-1
	teq	$5,$0,7
	divu	$0,$2,$5
	mfhi	$5
$LVL5 = .
	jr	$31
	sw	$5,4($4)

	.set	macro
	.set	reorder
	.end	step_north
	.cfi_endproc
$LFE23:
	.size	step_north, .-step_north
	.align	2
	.globl	step_south
$LFB24 = .
	.loc 1 22 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	step_south
	.type	step_south, @function
step_south:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
$LVL6 = .
	.loc 1 23 0
	lw	$2,4($4)
	addiu	$2,$2,1
	teq	$5,$0,7
	divu	$0,$2,$5
	mfhi	$5
$LVL7 = .
	jr	$31
	sw	$5,4($4)

	.set	macro
	.set	reorder
	.end	step_south
	.cfi_endproc
$LFE24:
	.size	step_south, .-step_south
	.align	2
	.globl	move_forward
$LFB25 = .
	.loc 1 34 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	move_forward
	.type	move_forward, @function
move_forward:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
$LVL8 = .
	.loc 1 40 0
	lw	$3,8($4)
$LVL9 = .
	.loc 1 34 0
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 43 0
	lw	$6,%got(allowed_forward)($28)
$LVL10 = .
	.loc 1 40 0
	lw	$5,%got(relevant_bounds)($28)
$LVL11 = .
	sll	$3,$3,2
$LVL12 = .
	.loc 1 34 0
	sw	$31,28($sp)
	.loc 1 43 0
	addiu	$6,$6,%lo(allowed_forward)
	.loc 1 34 0
	sw	$16,24($sp)
	.loc 1 40 0
	addu	$5,$5,$3
	.loc 1 34 0
	.cprestore	16
	.loc 1 43 0
	addu	$3,$3,$6
	.loc 1 34 0
	.cfi_offset 31, -4
	.cfi_offset 16, -8
	.loc 1 34 0
	move	$16,$4
	.loc 1 46 0
	lw	$25,0($3)
	jalr	$25
	lw	$5,0($5)

$LVL13 = .
	.loc 1 49 0
	move	$2,$16
	.loc 1 46 0
	.loc 1 49 0
	lw	$31,28($sp)
	lw	$16,24($sp)
$LVL14 = .
	jr	$31
	addiu	$sp,$sp,32

	.cfi_def_cfa_offset 0
	.cfi_restore 16
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	move_forward
	.cfi_endproc
$LFE25:
	.size	move_forward, .-move_forward
	.align	2
	.globl	new_orientation
$LFB26 = .
	.loc 1 53 0
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	new_orientation
	.type	new_orientation, @function
new_orientation:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
$LVL15 = .
	.loc 1 61 0
	sll	$4,$4,1
$LVL16 = .
	addu	$4,$4,$5
	lw	$5,%got(rotation_rules.3175)($28)
$LVL17 = .
	sll	$4,$4,2
	addiu	$5,$5,%lo(rotation_rules.3175)
	addu	$4,$4,$5
	.loc 1 62 0
	jr	$31
	lw	$2,0($4)

	.set	macro
	.set	reorder
	.end	new_orientation
	.cfi_endproc
$LFE26:
	.size	new_orientation, .-new_orientation
	.rdata
	.align	2
	.type	rotation_rules.3175, @object
	.size	rotation_rules.3175, 32
rotation_rules.3175:
	.word	3
	.word	2
	.word	2
	.word	3
	.word	0
	.word	1
	.word	1
	.word	0
	.section	.data.rel.ro.local,"aw",@progbits
	.align	2
	.type	allowed_forward, @object
	.size	allowed_forward, 16
allowed_forward:
	.word	step_north
	.word	step_south
	.word	step_east
	.word	step_west
	.text
$Letext0:
	.file 2 "/usr/include/mips-linux-gnu/bits/types.h"
	.file 3 "/usr/lib/gcc/mips-linux-gnu/6/include/stddef.h"
	.file 4 "/usr/include/unistd.h"
	.file 5 "/usr/include/getopt.h"
	.file 6 "/usr/include/libio.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/mips-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "ant_types.h"
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x5e0
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF87
	.byte	0xc
	.4byte	$LASF88
	.4byte	$LASF89
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	$Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	$LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	$LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	$LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	$LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	$LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	$LASF7
	.uleb128 0x4
	.4byte	$LASF8
	.byte	0x2
	.byte	0x37
	.4byte	0x56
	.uleb128 0x4
	.4byte	$LASF9
	.byte	0x2
	.byte	0x83
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	$LASF10
	.uleb128 0x4
	.4byte	$LASF11
	.byte	0x2
	.byte	0x84
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	$LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0x9b
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	$LASF13
	.uleb128 0x7
	.4byte	0x9b
	.uleb128 0x4
	.4byte	$LASF14
	.byte	0x3
	.byte	0xd8
	.4byte	0x33
	.uleb128 0x8
	.4byte	$LASF15
	.byte	0x4
	.2byte	0x222
	.4byte	0xbe
	.uleb128 0x6
	.byte	0x4
	.4byte	0x95
	.uleb128 0x9
	.4byte	$LASF16
	.byte	0x5
	.byte	0x39
	.4byte	0x95
	.uleb128 0x9
	.4byte	$LASF17
	.byte	0x5
	.byte	0x47
	.4byte	0x4f
	.uleb128 0x9
	.4byte	$LASF18
	.byte	0x5
	.byte	0x4c
	.4byte	0x4f
	.uleb128 0x9
	.4byte	$LASF19
	.byte	0x5
	.byte	0x50
	.4byte	0x4f
	.uleb128 0xa
	.4byte	$LASF49
	.byte	0x98
	.byte	0x6
	.byte	0xf1
	.4byte	0x26d
	.uleb128 0xb
	.4byte	$LASF20
	.byte	0x6
	.byte	0xf2
	.4byte	0x4f
	.byte	0
	.uleb128 0xb
	.4byte	$LASF21
	.byte	0x6
	.byte	0xf7
	.4byte	0x95
	.byte	0x4
	.uleb128 0xb
	.4byte	$LASF22
	.byte	0x6
	.byte	0xf8
	.4byte	0x95
	.byte	0x8
	.uleb128 0xb
	.4byte	$LASF23
	.byte	0x6
	.byte	0xf9
	.4byte	0x95
	.byte	0xc
	.uleb128 0xb
	.4byte	$LASF24
	.byte	0x6
	.byte	0xfa
	.4byte	0x95
	.byte	0x10
	.uleb128 0xb
	.4byte	$LASF25
	.byte	0x6
	.byte	0xfb
	.4byte	0x95
	.byte	0x14
	.uleb128 0xb
	.4byte	$LASF26
	.byte	0x6
	.byte	0xfc
	.4byte	0x95
	.byte	0x18
	.uleb128 0xb
	.4byte	$LASF27
	.byte	0x6
	.byte	0xfd
	.4byte	0x95
	.byte	0x1c
	.uleb128 0xb
	.4byte	$LASF28
	.byte	0x6
	.byte	0xfe
	.4byte	0x95
	.byte	0x20
	.uleb128 0xc
	.4byte	$LASF29
	.byte	0x6
	.2byte	0x100
	.4byte	0x95
	.byte	0x24
	.uleb128 0xc
	.4byte	$LASF30
	.byte	0x6
	.2byte	0x101
	.4byte	0x95
	.byte	0x28
	.uleb128 0xc
	.4byte	$LASF31
	.byte	0x6
	.2byte	0x102
	.4byte	0x95
	.byte	0x2c
	.uleb128 0xc
	.4byte	$LASF32
	.byte	0x6
	.2byte	0x104
	.4byte	0x2a5
	.byte	0x30
	.uleb128 0xc
	.4byte	$LASF33
	.byte	0x6
	.2byte	0x106
	.4byte	0x2ab
	.byte	0x34
	.uleb128 0xc
	.4byte	$LASF34
	.byte	0x6
	.2byte	0x108
	.4byte	0x4f
	.byte	0x38
	.uleb128 0xc
	.4byte	$LASF35
	.byte	0x6
	.2byte	0x10c
	.4byte	0x4f
	.byte	0x3c
	.uleb128 0xc
	.4byte	$LASF36
	.byte	0x6
	.2byte	0x10e
	.4byte	0x6f
	.byte	0x40
	.uleb128 0xc
	.4byte	$LASF37
	.byte	0x6
	.2byte	0x112
	.4byte	0x2c
	.byte	0x44
	.uleb128 0xc
	.4byte	$LASF38
	.byte	0x6
	.2byte	0x113
	.4byte	0x41
	.byte	0x46
	.uleb128 0xc
	.4byte	$LASF39
	.byte	0x6
	.2byte	0x114
	.4byte	0x2b1
	.byte	0x47
	.uleb128 0xc
	.4byte	$LASF40
	.byte	0x6
	.2byte	0x118
	.4byte	0x2c1
	.byte	0x48
	.uleb128 0xc
	.4byte	$LASF41
	.byte	0x6
	.2byte	0x121
	.4byte	0x81
	.byte	0x50
	.uleb128 0xc
	.4byte	$LASF42
	.byte	0x6
	.2byte	0x129
	.4byte	0x93
	.byte	0x58
	.uleb128 0xc
	.4byte	$LASF43
	.byte	0x6
	.2byte	0x12a
	.4byte	0x93
	.byte	0x5c
	.uleb128 0xc
	.4byte	$LASF44
	.byte	0x6
	.2byte	0x12b
	.4byte	0x93
	.byte	0x60
	.uleb128 0xc
	.4byte	$LASF45
	.byte	0x6
	.2byte	0x12c
	.4byte	0x93
	.byte	0x64
	.uleb128 0xc
	.4byte	$LASF46
	.byte	0x6
	.2byte	0x12e
	.4byte	0xa7
	.byte	0x68
	.uleb128 0xc
	.4byte	$LASF47
	.byte	0x6
	.2byte	0x12f
	.4byte	0x4f
	.byte	0x6c
	.uleb128 0xc
	.4byte	$LASF48
	.byte	0x6
	.2byte	0x131
	.4byte	0x2c7
	.byte	0x70
	.byte	0
	.uleb128 0xd
	.4byte	$LASF90
	.byte	0x6
	.byte	0x96
	.uleb128 0xa
	.4byte	$LASF50
	.byte	0xc
	.byte	0x6
	.byte	0x9c
	.4byte	0x2a5
	.uleb128 0xb
	.4byte	$LASF51
	.byte	0x6
	.byte	0x9d
	.4byte	0x2a5
	.byte	0
	.uleb128 0xb
	.4byte	$LASF52
	.byte	0x6
	.byte	0x9e
	.4byte	0x2ab
	.byte	0x4
	.uleb128 0xb
	.4byte	$LASF53
	.byte	0x6
	.byte	0xa2
	.4byte	0x4f
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x274
	.uleb128 0x6
	.byte	0x4
	.4byte	0xf0
	.uleb128 0xe
	.4byte	0x9b
	.4byte	0x2c1
	.uleb128 0xf
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x26d
	.uleb128 0xe
	.4byte	0x9b
	.4byte	0x2d7
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x27
	.byte	0
	.uleb128 0x10
	.4byte	$LASF91
	.uleb128 0x8
	.4byte	$LASF54
	.byte	0x6
	.2byte	0x13b
	.4byte	0x2d7
	.uleb128 0x8
	.4byte	$LASF55
	.byte	0x6
	.2byte	0x13c
	.4byte	0x2d7
	.uleb128 0x8
	.4byte	$LASF56
	.byte	0x6
	.2byte	0x13d
	.4byte	0x2d7
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa2
	.uleb128 0x7
	.4byte	0x300
	.uleb128 0x9
	.4byte	$LASF57
	.byte	0x7
	.byte	0xaa
	.4byte	0x2ab
	.uleb128 0x9
	.4byte	$LASF58
	.byte	0x7
	.byte	0xab
	.4byte	0x2ab
	.uleb128 0x9
	.4byte	$LASF59
	.byte	0x7
	.byte	0xac
	.4byte	0x2ab
	.uleb128 0x9
	.4byte	$LASF60
	.byte	0x8
	.byte	0x1a
	.4byte	0x4f
	.uleb128 0xe
	.4byte	0x306
	.4byte	0x342
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x337
	.uleb128 0x9
	.4byte	$LASF61
	.byte	0x8
	.byte	0x1b
	.4byte	0x342
	.uleb128 0x4
	.4byte	$LASF62
	.byte	0x9
	.byte	0x33
	.4byte	0x33
	.uleb128 0x7
	.4byte	0x352
	.uleb128 0x12
	.4byte	$LASF68
	.byte	0x4
	.4byte	0x33
	.byte	0xa
	.byte	0xf
	.4byte	0x38b
	.uleb128 0x13
	.4byte	$LASF63
	.byte	0
	.uleb128 0x13
	.4byte	$LASF64
	.byte	0x1
	.uleb128 0x13
	.4byte	$LASF65
	.byte	0x2
	.uleb128 0x13
	.4byte	$LASF66
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.4byte	$LASF67
	.byte	0xa
	.byte	0xf
	.4byte	0x362
	.uleb128 0x12
	.4byte	$LASF69
	.byte	0x4
	.4byte	0x33
	.byte	0xa
	.byte	0x11
	.4byte	0x3b3
	.uleb128 0x13
	.4byte	$LASF70
	.byte	0
	.uleb128 0x13
	.4byte	$LASF71
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	$LASF72
	.byte	0xa
	.byte	0x11
	.4byte	0x396
	.uleb128 0x14
	.byte	0xc
	.byte	0xa
	.byte	0x16
	.4byte	0x3e5
	.uleb128 0x15
	.ascii	"x\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x352
	.byte	0
	.uleb128 0x15
	.ascii	"y\000"
	.byte	0xa
	.byte	0x17
	.4byte	0x352
	.byte	0x4
	.uleb128 0x15
	.ascii	"o\000"
	.byte	0xa
	.byte	0x18
	.4byte	0x38b
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	$LASF73
	.byte	0xa
	.byte	0x19
	.4byte	0x3be
	.uleb128 0x4
	.4byte	$LASF74
	.byte	0x1
	.byte	0x8
	.4byte	0x3fb
	.uleb128 0x6
	.byte	0x4
	.4byte	0x401
	.uleb128 0x16
	.4byte	0x411
	.uleb128 0x17
	.4byte	0x411
	.uleb128 0x17
	.4byte	0x352
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x3e5
	.uleb128 0xe
	.4byte	0x3f0
	.4byte	0x427
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.4byte	$LASF77
	.byte	0x1
	.byte	0x1a
	.4byte	0x417
	.uleb128 0x5
	.byte	0x3
	.4byte	allowed_forward
	.uleb128 0xe
	.4byte	0x352
	.4byte	0x448
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	$LASF75
	.byte	0x1
	.byte	0x1d
	.4byte	0x438
	.uleb128 0x19
	.4byte	$LASF79
	.byte	0x1
	.byte	0x34
	.4byte	0x38b
	.4byte	$LFB26
	.4byte	$LFE26-$LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49c
	.uleb128 0x1a
	.4byte	$LASF68
	.byte	0x1
	.byte	0x34
	.4byte	0x38b
	.4byte	$LLST8
	.uleb128 0x1a
	.4byte	$LASF76
	.byte	0x1
	.byte	0x34
	.4byte	0x3b3
	.4byte	$LLST9
	.uleb128 0x18
	.4byte	$LASF78
	.byte	0x1
	.byte	0x36
	.4byte	0x49c
	.uleb128 0x5
	.byte	0x3
	.4byte	rotation_rules.3175
	.byte	0
	.uleb128 0xe
	.4byte	0x38b
	.4byte	0x4b2
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x3
	.uleb128 0xf
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.4byte	$LASF80
	.byte	0x1
	.byte	0x21
	.4byte	0x411
	.4byte	$LFB25
	.4byte	$LFE25-$LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51f
	.uleb128 0x1b
	.ascii	"ant\000"
	.byte	0x1
	.byte	0x21
	.4byte	0x411
	.4byte	$LLST4
	.uleb128 0x1a
	.4byte	$LASF81
	.byte	0x1
	.byte	0x21
	.4byte	0x35d
	.4byte	$LLST5
	.uleb128 0x1a
	.4byte	$LASF82
	.byte	0x1
	.byte	0x21
	.4byte	0x35d
	.4byte	$LLST6
	.uleb128 0x1c
	.4byte	$LASF92
	.byte	0x1
	.byte	0x28
	.4byte	0x352
	.uleb128 0x1d
	.4byte	$LASF83
	.byte	0x1
	.byte	0x2b
	.4byte	0x3f0
	.4byte	$LLST7
	.uleb128 0x1e
	.4byte	$LVL13
	.uleb128 0x1f
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	$LASF84
	.byte	0x1
	.byte	0x16
	.4byte	$LFB24
	.4byte	$LFE24-$LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x551
	.uleb128 0x21
	.ascii	"ant\000"
	.byte	0x1
	.byte	0x16
	.4byte	0x411
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	$LASF82
	.byte	0x1
	.byte	0x16
	.4byte	0x352
	.4byte	$LLST3
	.byte	0
	.uleb128 0x20
	.4byte	$LASF85
	.byte	0x1
	.byte	0x12
	.4byte	$LFB23
	.4byte	$LFE23-$LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x583
	.uleb128 0x21
	.ascii	"ant\000"
	.byte	0x1
	.byte	0x12
	.4byte	0x411
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	$LASF82
	.byte	0x1
	.byte	0x12
	.4byte	0x352
	.4byte	$LLST2
	.byte	0
	.uleb128 0x20
	.4byte	$LASF86
	.byte	0x1
	.byte	0xe
	.4byte	$LFB22
	.4byte	$LFE22-$LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b5
	.uleb128 0x21
	.ascii	"ant\000"
	.byte	0x1
	.byte	0xe
	.4byte	0x411
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	$LASF81
	.byte	0x1
	.byte	0xe
	.4byte	0x352
	.4byte	$LLST1
	.byte	0
	.uleb128 0x22
	.4byte	$LASF93
	.byte	0x1
	.byte	0xa
	.4byte	$LFB21
	.4byte	$LFE21-$LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.ascii	"ant\000"
	.byte	0x1
	.byte	0xa
	.4byte	0x411
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1a
	.4byte	$LASF81
	.byte	0x1
	.byte	0xa
	.4byte	0x352
	.4byte	$LLST0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
$Ldebug_loc0:
$LLST8:
	.4byte	$LVL15-$Ltext0
	.4byte	$LVL16-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL16-$Ltext0
	.4byte	$LFE26-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST9:
	.4byte	$LVL15-$Ltext0
	.4byte	$LVL17-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL17-$Ltext0
	.4byte	$LFE26-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST4:
	.4byte	$LVL8-$Ltext0
	.4byte	$LVL13-1-$Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	$LVL13-1-$Ltext0
	.4byte	$LVL14-$Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	$LVL14-$Ltext0
	.4byte	$LFE25-$Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
$LLST5:
	.4byte	$LVL8-$Ltext0
	.4byte	$LVL11-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL11-$Ltext0
	.4byte	$LFE25-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST6:
	.4byte	$LVL8-$Ltext0
	.4byte	$LVL10-$Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	$LVL10-$Ltext0
	.4byte	$LFE25-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST7:
	.4byte	$LVL9-$Ltext0
	.4byte	$LVL12-$Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	allowed_forward
	.byte	0x22
	.4byte	$LVL12-$Ltext0
	.4byte	$LVL13-1-$Ltext0
	.2byte	0xb
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	allowed_forward
	.byte	0x22
	.4byte	0
	.4byte	0
$LLST3:
	.4byte	$LVL6-$Ltext0
	.4byte	$LVL7-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL7-$Ltext0
	.4byte	$LFE24-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST2:
	.4byte	$LVL4-$Ltext0
	.4byte	$LVL5-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL5-$Ltext0
	.4byte	$LFE23-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST1:
	.4byte	$LVL2-$Ltext0
	.4byte	$LVL3-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL3-$Ltext0
	.4byte	$LFE22-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
$LLST0:
	.4byte	$LVL0-$Ltext0
	.4byte	$LVL1-$Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	$LVL1-$Ltext0
	.4byte	$LFE21-$Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$Ltext0
	.4byte	$Letext0-$Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
$LASF17:
	.ascii	"optind\000"
$LASF16:
	.ascii	"optarg\000"
$LASF76:
	.ascii	"rule\000"
$LASF79:
	.ascii	"new_orientation\000"
$LASF49:
	.ascii	"_IO_FILE\000"
$LASF71:
	.ascii	"RIGHT\000"
$LASF88:
	.ascii	"ant_engine_tables.c\000"
$LASF60:
	.ascii	"sys_nerr\000"
$LASF31:
	.ascii	"_IO_save_end\000"
$LASF63:
	.ascii	"NORTH\000"
$LASF5:
	.ascii	"short int\000"
$LASF14:
	.ascii	"size_t\000"
$LASF12:
	.ascii	"sizetype\000"
$LASF41:
	.ascii	"_offset\000"
$LASF25:
	.ascii	"_IO_write_ptr\000"
$LASF20:
	.ascii	"_flags\000"
$LASF35:
	.ascii	"_flags2\000"
$LASF55:
	.ascii	"_IO_2_1_stdout_\000"
$LASF15:
	.ascii	"__environ\000"
$LASF32:
	.ascii	"_markers\000"
$LASF22:
	.ascii	"_IO_read_end\000"
$LASF83:
	.ascii	"go_forward\000"
$LASF69:
	.ascii	"rotation\000"
$LASF81:
	.ascii	"width\000"
$LASF87:
	.ascii	"GNU C11 6.3.0 20170516 -meb -march=mips32r2 -mfpxx -mlls"
	.ascii	"c -mno-lxc1-sxc1 -mips32r2 -mabi=32 -g -O2\000"
$LASF59:
	.ascii	"stderr\000"
$LASF75:
	.ascii	"relevant_bounds\000"
$LASF6:
	.ascii	"long long int\000"
$LASF40:
	.ascii	"_lock\000"
$LASF10:
	.ascii	"long int\000"
$LASF72:
	.ascii	"rotation_t\000"
$LASF37:
	.ascii	"_cur_column\000"
$LASF70:
	.ascii	"LEFT\000"
$LASF56:
	.ascii	"_IO_2_1_stderr_\000"
$LASF91:
	.ascii	"_IO_FILE_plus\000"
$LASF53:
	.ascii	"_pos\000"
$LASF85:
	.ascii	"step_north\000"
$LASF52:
	.ascii	"_sbuf\000"
$LASF80:
	.ascii	"move_forward\000"
$LASF36:
	.ascii	"_old_offset\000"
$LASF11:
	.ascii	"__off64_t\000"
$LASF0:
	.ascii	"unsigned char\000"
$LASF64:
	.ascii	"SOUTH\000"
$LASF65:
	.ascii	"EAST\000"
$LASF4:
	.ascii	"signed char\000"
$LASF7:
	.ascii	"long long unsigned int\000"
$LASF54:
	.ascii	"_IO_2_1_stdin_\000"
$LASF62:
	.ascii	"uint32_t\000"
$LASF82:
	.ascii	"height\000"
$LASF2:
	.ascii	"unsigned int\000"
$LASF50:
	.ascii	"_IO_marker\000"
$LASF39:
	.ascii	"_shortbuf\000"
$LASF68:
	.ascii	"orientation\000"
$LASF92:
	.ascii	"bound\000"
$LASF24:
	.ascii	"_IO_write_base\000"
$LASF48:
	.ascii	"_unused2\000"
$LASF18:
	.ascii	"opterr\000"
$LASF28:
	.ascii	"_IO_buf_end\000"
$LASF13:
	.ascii	"char\000"
$LASF89:
	.ascii	"/home/tp1/src\000"
$LASF51:
	.ascii	"_next\000"
$LASF42:
	.ascii	"__pad1\000"
$LASF43:
	.ascii	"__pad2\000"
$LASF44:
	.ascii	"__pad3\000"
$LASF45:
	.ascii	"__pad4\000"
$LASF46:
	.ascii	"__pad5\000"
$LASF77:
	.ascii	"allowed_forward\000"
$LASF66:
	.ascii	"WEST\000"
$LASF74:
	.ascii	"step_fn\000"
$LASF3:
	.ascii	"long unsigned int\000"
$LASF26:
	.ascii	"_IO_write_end\000"
$LASF93:
	.ascii	"step_west\000"
$LASF34:
	.ascii	"_fileno\000"
$LASF1:
	.ascii	"short unsigned int\000"
$LASF33:
	.ascii	"_chain\000"
$LASF9:
	.ascii	"__off_t\000"
$LASF30:
	.ascii	"_IO_backup_base\000"
$LASF57:
	.ascii	"stdin\000"
$LASF27:
	.ascii	"_IO_buf_base\000"
$LASF84:
	.ascii	"step_south\000"
$LASF8:
	.ascii	"__quad_t\000"
$LASF47:
	.ascii	"_mode\000"
$LASF23:
	.ascii	"_IO_read_base\000"
$LASF38:
	.ascii	"_vtable_offset\000"
$LASF67:
	.ascii	"orientation_t\000"
$LASF29:
	.ascii	"_IO_save_base\000"
$LASF61:
	.ascii	"sys_errlist\000"
$LASF19:
	.ascii	"optopt\000"
$LASF86:
	.ascii	"step_east\000"
$LASF21:
	.ascii	"_IO_read_ptr\000"
$LASF78:
	.ascii	"rotation_rules\000"
$LASF73:
	.ascii	"ant_t\000"
$LASF58:
	.ascii	"stdout\000"
$LASF90:
	.ascii	"_IO_lock_t\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
