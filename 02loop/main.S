.section .text
.globl main
main:
	addi	sp, sp, -16	# space for 2 variables

	li	t0, 1		# counter = 1
	sd	t0, 0(sp)

	li	t1, 1000	# target = 1000
	sd	t1, 8(sp)

loop:
	ld	t0, 8(sp)	# read counter
	ld	t1, 0(sp)	# read target

	la	a0, message
	mv	a1, t1
	call	printf

	ld	t0, 0(sp)	# read counter
	ld	t1, 8(sp)	# read target

	addi	t0, t0, 1	# increment
	sd	t0, 0(sp)	# save incremented variable

	ble 	t0, t1, loop	# t0 <= t1: goto loop

	addi	sp, sp, 16
	li  	a0, 0
	call	exit

.section .rodata
message:
	.asciz 	"STEP%5ld\n"
