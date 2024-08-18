.data
division_str: .asciiz " Quotient: "
division_newline: .asciiz "\n Remainder: "

.text
.globl main

main:
    # Call the integer division function
    jal integer_division
    
    # Exit the program
    li $v0, 10
    syscall

# Integer Division function
integer_division:
    li $t1, 20
    li $t2, 10
    div $t1, $t2

    # Print statement for integer division
    li $v0, 4
    la $a0, division_str
    syscall

    # Print result of integer division (quotient)
    move $a0, $t1  # Quotient
    li $v0, 1
    syscall

    # Print newline
    li $v0, 4
    la $a0, division_newline
    syscall

    mfhi $t3  # Remainder (load from the hi register after div)
    move $a0, $t3
    li $v0, 1
    syscall

    # Print newline
    li $v0, 11
    li $a0, 10  # ASCII code for newline
    syscall

    jr $ra  # Return from the function
