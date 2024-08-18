.data
multiplication_str: .asciiz "Multiplication result: "

.text
.globl main

main:
    # Call the multiplication function
    jal multiplication
    
    # Exit the program
    li $v0, 10
    syscall

# Multiplication function
multiplication:
    li $t1, 2
    li $t2, 3
    mul $t0, $t1, $t2

    # Print statement for multiplication
    li $v0, 4
    la $a0, multiplication_str
    syscall

    # Print result of multiplication
    move $a0, $t0
    li $v0, 1
    syscall

    # Print newline
    li $v0, 11
    li $a0, 10  # ASCII code for newline
    syscall

    jr $ra  # Return from the function
