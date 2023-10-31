.data
a: 
    .word 7             # variable a in stored in memory
b: 
    .word 0             # array b is stored in memory
    .word 0
    .word 0

.text
main:
    add s0, x0, x0      # i is initialized
    addi t1, x0, 3      # loop limit in stored
    addi t3, x0, 4      # index to access array elements in initialized
    la s1, a            # address of a is stored in s1
    lw s1, 0(s1)        # value of a is loaded in s1
    la s2, b            # address of b is stored in s2

loop:
    bge s0, t1, exit    # check the condition if i >= 3 then goto exit, otherwise continue
    lw t4, 0(s2)        # first element of array b is loaded into t4
    mul t0, s0, s1      # multiply i and a
    add t4, t0, s1      # add a and (i*a) and store it in t4
    sw t4, 0(s2)        # store the value in t4 back to address of that array index in s2
    addi a0, x0, 1
    addi a1, t4, 0      # store value of t4 into a1    
    ecall               # print integer ecall
    addi a1, x0, ' '    # a0 gets address of string containing space
    addi a0, x0, 11     # print char syscall
    ecall
    addi s0, s0, 1      # increment i by 1
    add s2, s2, t3      # increment the address in s2 by 4 to move to next valid address of next array index
    j loop              # jump back to loop

exit:
    addi a0, x0, 10
    ecall               # terminate ecall
    


