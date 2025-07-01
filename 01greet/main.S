.section .text
.globl main
main:
	addi	sp, sp, -16

	call	greet
	sd	a0, 0(sp)	# save pointer to stack

	la	a0, helloworld
	ld	a1, 0(sp)
	call	printf

	ld	a0, 0(sp)	# free char[]
	call	free

	addi	sp, sp, 16
	li  	a0, 0
	call	exit

.section .rodata
helloworld:
	.asciz 	"Hello, %s!\n"
