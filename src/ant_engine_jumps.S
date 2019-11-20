#include <regdef.h>

.data
error_str: .asciiz "Orientacion invalida"

.text
.align 2
.ent	decide
decide:
	.frame	fp, 8, ra
	.set	noreorder
	addiu	sp, sp, -8
	sw	fp, 4(sp)
	sw	gp, 0(sp)
	move	fp, sp

	sw	a0, 8(fp)		# guardo a0 en el stack anterior
	sw	a1, 12(fp)		# guardo a1 en el stack anterior
	sw	a2, 16(fp)		# guardo a2 en el stack anterior

	li 	t0, 1			# t0 = 1 = RIGHT
	beq	a0, t0, go_right	# d == RIGHT?
	nop
go_left:
	move v0, a1			# devuelvo a1 = go_left
	b return_decide
	nop
go_right:
	move v0, a2			# devuelvo a2 = go_right

return_decide:
	lw	fp, 4(sp)		# cargo el fp anterior
	lw	gp, 0(sp)		# cargo el gp anterior
	addiu	sp, sp, 8		# dejo el stack como estaba
	jr	ra			# vuelvo a la rutina anterior
	nop
.set	reorder
.end	decide

.align 2
.globl new_orientation
.ent new_orientation
new_orientation:
    .frame fp, 32, ra 		# stack de 32 bytes (16 bytes para SRA y 16 para ABA)
    .set noreorder
    .cpload t9 			# gp en t9 con valor correcto
    addiu sp, sp, -32 		# creo el stack de 32 bytes
    sw ra, 24(sp)		# guardo ra (return address)
    sw fp, 20(sp)		# guardo fp (frame pointer)
    move fp, sp			# actualizo al nuevo fp
    .cprestore 16		# restablece el gp

    sw	a0, 32(fp)		# guardo a0 en el stack anterior
    sw	a1, 36(fp)		# guardo a1 en el stack anterior

    move t1, a1			# guardo la regla en otro registro

    beq a0, $0, norte		# orientation = NORTH
    nop
    
    li t0, 1			# t0 = 1 (SOUTH)
    beq a0, t0, sur
    nop
    
    li t0, 2			# t0 = 2 (EAST)
    beq a0, t0, este
    nop
    
    li t0, 3			# t0 = 3 (WEST)
    beq a0, t0, oeste
    nop

    la a0, error_str		# se frena la ejecucion
    jal doPanic

oeste:
    li a1, 1
    li a2, 0
    b call_decide
    nop
este:
    li a1, 0
    li a2, 1
    b call_decide
    nop
norte:
    li a1, 3
    li a2, 2
    b call_decide
    nop
sur:
    li a1, 2
    li a2, 3
call_decide:
    move a0, t1			# guardo rule en a0
    jal decide
    nop
    move sp, fp 		# vuelvo a dejar el stack pointer como antes de llamar decide
    lw ra, 24(sp)		# cargo el ra anterior.
    lw fp, 20(sp)		# cargo el fp anterior.
    lw gp, 16(sp)		# cargo el gp anterior.
    addiu sp, sp, 32		# deshago el stack.
    jr ra			# vuelvo a la rutina que me llamo.
    nop
.set reorder
.end new_orientation

.text
.align 2
.globl move_forward
.ent move_forward
move_forward:
	.frame	fp, 8, ra	# stack minimo de 8 bytes
	.set	noreorder
	.cpload	t9
	addiu	sp,sp,-8	# aumento el stack
	sw	fp, 4(sp)	# guardo el fp
	move 	fp, sp		# actualizo el fp
	.cprestore 0		# guardo el gp
	
	sw	a0, 8(fp)		# guardo a0 en el stack anterior
	sw	a1, 12(fp)		# guardo a1 en el stack anterior
	sw	a2, 16(fp)		# guardo a2 en el stack anterior

	lw 	t0, 8(a0)	# t0 = ant->o
	beq	t0, $0, north	# $0 = 0 = norte.
	nop

	li 	t1, 1		# t1 = 1 = SOUTH
	beq	t0, t1, south
	nop

	li	t1, 2		# t1 = 2 = EAST
	beq	t0, t1, east
	nop

	li	t1, 3		# t1 = 3 = WEST
	beq	t0, t1, west
	nop
	
	la a0, error_str 	# se frena la ejecucion
    	jal doPanic

north:
	lw t1, 4(a0)		# t1 = ant->y
	addiu t1, t1, -1	# t1 = ant->y - 1
	divu $0, t1, a2		# ant->y - 1 / height
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 4(a0)		# guardo el modulo en ant->y
	b return
	nop
south:
	lw t1, 4(a0)		# t1 = ant->y
	addiu t1, t1, 1		# t1 = ant->y + 1
	divu $0, t1, a2		# ant->y - 1 / height
	mfhi t1			# t1 = modulo de la division anterior
	sw t1, 4(a0)		# guardo el modulo en ant->y
	b return
	nop
east:
	lw t1, 0(a0)
	addiu t1, t1, 1
	divu $0, t1, a2
	mfhi t1
	sw t1, 0(a0)
	b return
	nop
west:
	lw t1, 0(a0)
	addiu t1, t1, -1
	divu $0, t1, a2
	mfhi t1
	sw t1, 0(a0)

return:
	move v0, a0		# devuelvo a0
	move sp, fp		# dejo el sp como estaba antes (innecesario en este caso)
	lw fp, 4(sp)
	lw gp, 0(sp)
	addiu sp, sp, 8
	jr ra
	nop
	
.set	reorder
.end move_forward
