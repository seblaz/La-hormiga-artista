	.file	1 "ant_engine_jumps.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=xx
	.module	nooddspreg
	.abicalls
	.text
	.align	2
	.set	nomips16
	.set	nomicromips
	.ent	decide
	.type	decide, @function
decide:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	addiu	$sp,$sp,-8
	sw	$fp,4($sp)
	move	$fp,$sp
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	lw	$3,8($fp)
	li	$2,1			# 0x1
	bne	$3,$2,$L2
	nop

	lw	$2,16($fp)
	b	$L4
	nop

$L2:
	lw	$2,12($fp)
$L4:
	move	$sp,$fp
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	decide
	.size	decide, .-decide
	.rdata
	.align	2
$LC0:
	.ascii	"ant_engine_jumps.c\000"
	.align	2
$LC1:
	.ascii	"[%s %s %d]: Unknown orientation %d\012\000"
	.text
	.align	2
	.globl	new_orientation
	.set	nomips16
	.set	nomicromips
	.ent	new_orientation
	.type	new_orientation, @function
new_orientation:
	.frame	$fp,48,$31		# vars= 8, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$fp,40($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,48($fp)
	sw	$5,52($fp)
	lw	$2,48($fp)
	li	$3,1			# 0x1
	beq	$2,$3,$L7
	nop

	sltu	$3,$2,1
	bne	$3,$0,$L8
	nop

	li	$3,2			# 0x2
	beq	$2,$3,$L9
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L10
	nop

	b	$L13
	nop

$L8:
	li	$6,2			# 0x2
	li	$5,3			# 0x3
	lw	$4,52($fp)
	lw	$2,%got(decide)($28)
	addiu	$2,$2,%lo(decide)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decide
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	b	$L11
	nop

$L7:
	li	$6,3			# 0x3
	li	$5,2			# 0x2
	lw	$4,52($fp)
	lw	$2,%got(decide)($28)
	addiu	$2,$2,%lo(decide)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decide
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	b	$L11
	nop

$L9:
	li	$6,1			# 0x1
	move	$5,$0
	lw	$4,52($fp)
	lw	$2,%got(decide)($28)
	addiu	$2,$2,%lo(decide)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decide
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	b	$L11
	nop

$L10:
	move	$6,$0
	li	$5,1			# 0x1
	lw	$4,52($fp)
	lw	$2,%got(decide)($28)
	addiu	$2,$2,%lo(decide)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,decide
1:	jalr	$25
	nop

	lw	$28,24($fp)
	sw	$2,32($fp)
	b	$L11
	nop

$L13:
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,48($fp)
	sw	$2,20($sp)
	li	$2,33			# 0x21
	sw	$2,16($sp)
	lw	$2,%got(__FUNCTION__.3086)($28)
	addiu	$7,$2,%lo(__FUNCTION__.3086)
	lw	$2,%got($LC0)($28)
	addiu	$6,$2,%lo($LC0)
	lw	$2,%got($LC1)($28)
	addiu	$5,$2,%lo($LC1)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L11:
	lw	$2,32($fp)
	move	$sp,$fp
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	new_orientation
	.size	new_orientation, .-new_orientation
	.align	2
	.globl	move_forward
	.set	nomips16
	.set	nomicromips
	.ent	move_forward
	.type	move_forward, @function
move_forward:
	.frame	$fp,40,$31		# vars= 0, regs= 2/0, args= 24, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$fp,32($sp)
	move	$fp,$sp
	.cprestore	24
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	lw	$2,40($fp)
	lw	$2,8($2)
	li	$3,1			# 0x1
	beq	$2,$3,$L16
	nop

	sltu	$3,$2,1
	bne	$3,$0,$L17
	nop

	li	$3,2			# 0x2
	beq	$2,$3,$L18
	nop

	li	$3,3			# 0x3
	beq	$2,$3,$L19
	nop

	b	$L22
	nop

$L17:
	lw	$2,40($fp)
	lw	$2,4($2)
	addiu	$3,$2,-1
	lw	$2,48($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,40($fp)
	sw	$3,4($2)
	b	$L20
	nop

$L16:
	lw	$2,40($fp)
	lw	$2,4($2)
	addiu	$3,$2,1
	lw	$2,48($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,40($fp)
	sw	$3,4($2)
	b	$L20
	nop

$L18:
	lw	$2,40($fp)
	lw	$2,0($2)
	addiu	$3,$2,1
	lw	$2,44($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,40($fp)
	sw	$3,0($2)
	b	$L20
	nop

$L19:
	lw	$2,40($fp)
	lw	$2,0($2)
	addiu	$3,$2,-1
	lw	$2,44($fp)
	teq	$2,$0,7
	divu	$0,$3,$2
	mfhi	$2
	move	$3,$2
	lw	$2,40($fp)
	sw	$3,0($2)
	b	$L20
	nop

$L22:
	lw	$2,%got(stderr)($28)
	lw	$3,0($2)
	lw	$2,40($fp)
	lw	$2,8($2)
	sw	$2,20($sp)
	li	$2,57			# 0x39
	sw	$2,16($sp)
	lw	$2,%got(__FUNCTION__.3098)($28)
	addiu	$7,$2,%lo(__FUNCTION__.3098)
	lw	$2,%got($LC0)($28)
	addiu	$6,$2,%lo($LC0)
	lw	$2,%got($LC1)($28)
	addiu	$5,$2,%lo($LC1)
	move	$4,$3
	lw	$2,%call16(fprintf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,fprintf
1:	jalr	$25
	nop

	lw	$28,24($fp)
	li	$4,1			# 0x1
	lw	$2,%call16(exit)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,exit
1:	jalr	$25
	nop

$L20:
	lw	$2,40($fp)
	move	$sp,$fp
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	move_forward
	.size	move_forward, .-move_forward
	.rdata
	.align	2
	.type	__FUNCTION__.3086, @object
	.size	__FUNCTION__.3086, 16
__FUNCTION__.3086:
	.ascii	"new_orientation\000"
	.align	2
	.type	__FUNCTION__.3098, @object
	.size	__FUNCTION__.3098, 13
__FUNCTION__.3098:
	.ascii	"move_forward\000"
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
