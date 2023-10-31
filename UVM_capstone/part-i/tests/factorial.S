.data
n: .word 8

.section .text

.globl _start

.option norvc
	nop
.align 7
.option rvc

_start:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    # value is in a0 
    addi t1, x0, 1
    addi t2, x0, 1
    addi a0, a0, 1
    loop:
        bge t1, a0, done
        mul t2, t2, t1
        addi t1, t1, 1
        j loop
       
    done: 
        add a0, t2, x0
        sw a0, 0(t0)
        jr ra
    
    

