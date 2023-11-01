.section .text

.globl _start

.option norvc
	nop
.align 7
#.option rvc

_start:
	li x3, 0x66
	sw x3, 0(x7)
	lw x5, 0(x7)
	addi a0, x0, 10
	ecall
