.data
addition_str: .asciiz "Addition result: "

.text
.globl main

main:
    # Call the addition function
    jal addition
    
    # Exit the program
    li $v0, 10
    syscall

# Addition function
addition:
    li $t0, 25
    li $t1, 10
    add $t2, $t0, $t1

    # Print statement for addition
    li $v0, 4
    la $a0, addition_str
    syscall

    # Print result of addition
    move $a0, $t2
    li $v0, 1
    syscall

    # Print newline
    li $v0, 11
    li $a0, 10  # ASCII code for newline
    syscall

    jr $ra  # Return from the function
