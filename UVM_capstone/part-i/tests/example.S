.section .text

.globl _start

.option norvc
	nop
.align 7
.option rvc

_start:
	li x0, 0x0
	ecall
