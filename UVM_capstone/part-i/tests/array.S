.data
b: .word 0, 0, 0

.section .text

.globl _start

.option norvc
	nop
.align 7
#.option rvc

_start:
    li s0, 0    # i = 0
    li s1, 7    # a = 7
    la s2, b    # Load address of array b into s2
    li s3, 3    # Loop limit
    li s4, 4    # Word offset for array indexing

loop:
    mul t0, s0, s1   # Calculate i * a
    add t4, s1, t0   # Calculate a + (i * a)
    sw t4, 0(s2)     # Store the value in the array

    addi s0, s0, 1   # Increment i
    add s2, s2, s4   # Move to the next array element

    blt s0, s3, loop # Loop if i < 3
    addi a0, x0, 10
    ecall