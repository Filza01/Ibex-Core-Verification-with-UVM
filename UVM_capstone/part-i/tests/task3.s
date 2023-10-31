.data
num:
    .word 10                # initializing size of array
arr:
    .word 2                 # initializing array
    .word 3
    .word 2
    .word 3
    .word 2
    .word 3
    .word 2
    .word 3
    .word 2
    .word 3

.text
main:
    la t0, num              # loading address of num
    lw a0, 0(t0)            # loading value of num
    jal ra, dataArray       # jumping to function dataArray
    j finish                # jump to finish label

dataArray:
    add s0, x0, x0          # declaring i
    add a1, x0, s0          # i for argument
    addi t0, x0, 4          # variable used for indexing in array
    la s1, arr              # loading address of array

    loop:
        addi sp, sp, -12    # decrementing stack to store ra, a0, a1
        sw ra, 0(sp)
        sw a0, 4(sp)
        sw a1, 8(sp)
        bge s0, a0, exit    # checking if i >= num, go to exit
        lw t1, 0(s1)        # loading element at first index of array
        jal ra, compare     # jump to compare function
        add t1, x0, a0      # string the return value in a1 to t1
        addi a0, x0, 1      # PRINT CALL
        addi a1, t1, 0      # store value of t1 into a1    
        ecall               # print integer ecall
        addi a1, x0, ' '    # a0 gets address of string containing space
        addi a0, x0, 11     # print char syscall
        ecall
        sw t1, 0(s1)        # storing the value back to that index of array
        lw ra, 0(sp)
        lw a0, 4(sp)
        lw a1, 8(sp)
        addi sp, sp, 12     # incrementing stack after loading values back
        addi a1, a1, 1      # incrementing i
        addi s0, s0, 1      # incrementing i
        add s1, s1, t0      # incrementing the address of array for next valid index
        j loop              # jump back to loop

compare:
    addi sp, sp, -4         # decrementing stack to store ra
    sw ra, 0(sp)
    jal ra, sub             # jump to function sub
    bge a0, x0, return1     # if return value in a0 >= 0, go to return 1
    addi a0, x0, 0          # else store 0 to a0
    lw ra, 0(sp)
    addi sp, sp, 4          # incrementing stack after loading back ra
    jr ra                   # go back to dataArray

return1:
    addi a0, x0, 1          # store 1 to a0
    lw ra, 0(sp)
    addi sp, sp, 4          # incrementing stack after loading back ra
    jr ra                   # go back to dataArray

sub:
    sub a0, a0, a1          # subtract num and i and store in a0
    jr ra                   # jump back to compare

exit:
    lw ra, 0(sp)
    lw a0, 4(sp)
    lw a1, 8(sp)
    addi sp, sp, 12         # incrementing stack after loading back ra and a0
    jr ra                   # jump back to main

finish:
    addi a0, x0, 10
    ecall               # terminate ecall
