.section .text
.globl main
main:
	la  	a0, helloworld
	call	printf

	li  	a0, 0
	call	exit

.section .rodata
helloworld:
	.asciz 	"Hello, world!\n"
