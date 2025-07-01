.section .text
.globl greet
greet:
	addi	sp, sp, -16
	sd	ra, 0(sp)

	la	a0, message
	call	printf

	la	a0, 50
	call	malloc
	sd	a0, 8(sp)	# save pointer for later

	call	gets

	ld	ra, 0(sp)
	ld	a0, 8(sp)	# return pointer to be freed

	addi	sp, sp, 16
	ret

.section .rodata
message:
	.asciz	"Enter your name: "
