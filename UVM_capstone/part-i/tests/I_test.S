.data
a:
    .word 24863

b: 
    .word 57

.section .text

.globl _start

.option norvc
	nop
.align 7

_start:
    addi x1, x0, 20
    andi x2, x1, 0xf
    ori x3, x1, 0xf
    slti x4, x1, 40
    srai x5, x1, 2
    srli x6, x1, 2
    slli x7, x1, 2
    xori x8, x1, 0xf
    la x9, a
    lw x10, 0(x9)
    lb x11, 0(x9)
    lh x12, 0(x9)
    lbu x13, 0(x9)
    lhu x14, 0(x9)
    la x15, b
    sw x10, 0(x15)
    sb x10, 0(x15)
    sh x10, 0(x15)
    ecall
