#include <regdef.h>

.data
.align 2
error_str: .asciiz "Orientacion invalida"
allowed_forward:
	.word	step_north
	.word	step_south
	.word	step_east
	.word	step_west

rotation_rules:
	.word	3	# WEST
	.word	2	# EAST
	.word	2	# EAST
	.word	3	# WEST
	.word	0	# NORTH
	.word	1	# SOUTH
	.word	1	# SOUTH
	.word	0	# NORTH

.text
.align 2
.ent	step_north
step_north:
	.frame	fp, 8, ra	# stack minimo
	.set	noreorder
	addiu	sp, sp, -8
	sw	fp, 4(sp)
	sw	gp, 0(sp)
	move	fp, sp		# fin setup stack
	
	sw a0, 8(fp)		# guardo a0 en el stack anterior
	sw a1, 12(fp)		# guardo a1 en el stack anterior

	lw t1, 4(a0)		# t1 = ant->y
	addiu t1, t1, -1	# t1 = ant->y - 1
	divu $0, t1, a1		# ant->y - 1 / height
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 4(a0)
	
	lw	fp, 4(sp)		# cargo el fp anterior
	lw	gp, 0(sp)		# cargo el gp anterior
	addiu	sp, sp, 8		# dejo el stack como estaba
	jr	ra			# vuelvo a la rutina anterior
	nop
.set	reorder
.end	step_north

.align 2
.ent	step_south
step_south:
	.frame	fp, 8, ra	# stack minimo
	.set	noreorder
	addiu	sp, sp, -8
	sw	fp, 4(sp)
	sw	gp, 0(sp)
	move	fp, sp		# fin setup stack

	sw a0, 8(fp)		# guardo a0 en el stack anterior
	sw a1, 12(fp)		# guardo a1 en el stack anterior

	lw t1, 4(a0)		# t1 = ant->y
	addiu t1, t1, 1		# t1 = ant->y + 1
	divu $0, t1, a1		# ant->y + 1 / height
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 4(a0)
	
	lw	fp, 4(sp)		# cargo el fp anterior
	lw	gp, 0(sp)		# cagor el gp anterior
	addiu	sp, sp, 8		# dejo el stack como estaba
	jr	ra			# vuelvo a la rutina anterior
	nop
.set	reorder
.end	step_south

.align 2
.ent	step_west
step_west:
	.frame	fp, 8, ra	# stack minimo
	.set	noreorder
	addiu	sp, sp, -8
	sw	fp, 4(sp)
	sw	gp, 0(sp)
	move	fp, sp		# fin setup stack

	sw a0, 8(fp)		# guardo a0 en el stack anterior
	sw a1, 12(fp)		# guardo a1 en el stack anterior

	lw t1, 0(a0)		# t1 = ant->x
	addiu t1, t1, -1	# t1 = ant->x - 1
	divu $0, t1, a1		# ant->x - 1 / width
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 0(a0)
	
	lw	fp, 4(sp)		# cargo el fp anterior
	lw	gp, 0(sp)		# cargo el gp anterior
	addiu	sp, sp, 8		# dejo el stack como estaba
	jr	ra			# vuelvo a la rutina anterior
	nop
.set	reorder
.end	step_west

.align 2
.ent	step_east
step_east:
	.frame	fp, 8, ra	# stack minimo
	.set	noreorder
	addiu	sp, sp, -8
	sw	fp, 4(sp)
	sw	gp, 0(sp)
	move	fp, sp		# fin setup stack

	sw a0, 8(fp)		# guardo a0 en el stack anterior
	sw a1, 12(fp)		# guardo a1 en el stack anterior

	lw t1, 0(a0)		# t1 = ant->x
	addiu t1, t1, 1		# t1 = ant->x + 1
	divu $0, t1, a1		# ant->x + 1 / width
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 0(a0)
	
	lw	fp, 4(sp)		# cargo el fp anterior
	lw 	gp, 0(sp)		# cargo el gp anterior
	addiu	sp, sp, 8		# dejo el stack como estaba
	jr	ra			# vuelvo a la rutina anterior
	nop
.set	reorder
.end	step_east

.align 2
.globl new_orientation
.ent new_orientation
new_orientation:
    .frame fp, 8, ra 		# stack minimo de 8 bytes (8 bytes para SRA)
    .set noreorder
    .cpload t9 			# gp en t9 con valor correcto
    addiu sp, sp, -8 		# creo el stack de 8 bytes
    sw fp, 4(sp)		# guardo fp (frame pointer)
    move fp, sp			# actualizo al nuevo fp
    .cprestore 0		# guardo el gp
    
    sw a0, 8(fp)		# guardo a0 en el stack anterior
    sw a1, 12(fp)		# guardo a1 en el stack anterior

    sll t1, a0, 3		# t1 = orientation * 8
    sll t3, a1, 2		# t3 = rule * 4
    add t1, t1, t3		# t1 = t1 + rule * 4
    la t2, rotation_rules	# t2 = rotation_rules     
    addu t2, t2, t1		# t2 = t2 + t1
    lw v0, 0(t2)		# v0 = valor en la direccion de t2

    lw gp, 0(fp)		# cargo gp guardado en stack
    move sp, fp 		# vuelvo a dejar el stack pointer como antes de llamar a new_orientation
    lw fp, 4(sp)		# cargo el fp anterior.
    addiu sp, sp, 8		# deshago el stack.
    jr ra			# vuelvo a la rutina que me llamo.
    nop
.set reorder
.end new_orientation

.text
.align 2
.globl move_forward
.ent move_forward
move_forward:
	.frame	fp, 48, ra	# stack de 40 bytes (16 para SRA, 16 para LTA, 16 para ABA)
	.set	noreorder
	.cpload	t9
	addiu	sp, sp, -48	# aumento el stack
	sw	ra, 40(sp)	# guardo ra
	sw	fp, 36(sp)	# guardo el fp
	move 	fp, sp		# actualizo el fp
	.cprestore 32		# guardo el gp
	
	sw a0, 48(fp)		# guardo a0 en el stack anterior
	sw a1, 52(fp)		# guardo a1 en el stack anterior
	sw a2, 56(fp)		# guardo a2 en el stack anterior

	sw a2, 28(fp)		# height
	sw a2, 24(fp)		# height
	sw a1, 20(fp)		# width
	sw a1, 16(fp)		# width
	move t8, a0
	lw t0, 8(a0)		# t0 = ant->o
	sll t0, t0, 2		# t0 = ant->o * 4
	li t1, 28		# t1 = 28	
	subu t1, t1, t0		# t1 = 28 - ant->0 * 4
	addu t2, fp, t1		# t2 = t1(fp)
	lw t2, 0(t2)		# t2 = value of t2 = bound
	la t3, allowed_forward	# t3 = address of allowed_forward
	addu t3, t3, t0		# t3 = allowed_forward + ant->o * 4
	lw t3, 0(t3)		# t3 = value of t3 = go_forward (address of step func)

	move a1, t2		# a1 = bound
	jal t3			# call go_forward

	move v0, t8		# devuelvo a0
	move sp, fp		# dejo el sp como estaba antes (innecesario en este caso)
	lw gp, 32(sp)
	lw fp, 36(sp)
	lw ra, 40(sp)
	addiu sp, sp, 48
	jr ra
	nop
	
.set	reorder
.end move_forward
