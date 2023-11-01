.section .text

.globl _start

.option norvc
	nop
.align 7

_start:
    li x1, 20
    li x2, 10
    add x3, x1, x2
    sub x4, x1, x2
    and x5, x1, x2
    or x6, x1, x2
    not x7, x1
    slt x8, x1, x2
    sra x9, x1, x2
    srl x10, x1, x2
    xor x11, x1, x2
    ecall
