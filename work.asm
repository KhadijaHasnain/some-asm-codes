.text
.globl main

main:
    # First operation: integer division
    li $t1, 20
    li $t2, 10
    div $t1, $t2

    # Print statement for integer division
    li $v0, 4
    la $a0, division_str
    syscall

    # Print result of integer division
    move $a0, $t1
    li $v0, 1
    syscall

    # Print newline
    li $v0, 11
    li $a0, 10  # ASCII code for newline
    syscall

    # Second operation: addition
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

    # Third operation: multiplication
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

    # Print statement for quotient
    li $v0, 4
    la $a0, quotient_str
    syscall

    # Print quotient
    move $a0, $t1  # Quotient
    li $v0, 1
    syscall

    # Print newline
    li $v0, 11
    li $a0, 10  # ASCII code for newline
    syscall

    # Print statement for remainder
    li $v0, 4
    la $a0, remainder_str
    syscall

    # Print remainder
    move $a0, $t2  # Remainder
    li $v0, 1
    syscall

    # Exit the program
    li $v0, 10
    syscall

.data
division_str: .asciiz "Integer division result: "
addition_str: .asciiz "Addition result: "
multiplication_str: .asciiz "Multiplication result: "
quotient_str: .asciiz "Quotient: "
remainder_str: .asciiz "Remainder: "
