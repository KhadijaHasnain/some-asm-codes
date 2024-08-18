.text
.globl main

# Function to print a null-terminated string
puts:
    li $s0, 0x10000000  # Start address of the output buffer
    puts_loop_start:
        lbu $s1, 0($a0)
        beqz $s1, puts_loop_end
        sb $s1, 0($s0)
        addi $a0, $a0, 1
        addi $s0, $s0, 1
        j puts_loop_start

    puts_loop_end:
        jalr x0, 0(ra)  # Return

# Function to perform integer addition
addition:
    lw $s1, 0($a0)  # Load the first operand from memory
    lw $s2, 4($a0)  # Load the second operand from memory
    add $s3, $s1, $s2  # Perform addition
    sw $s3, 8($a0)  # Store the result in memory
    jr ra  # Return

# Function to perform integer multiplication
multiplication:
    lw $s1, 0($a0)  # Load the first operand from memory
    lw $s2, 4($a0)  # Load the second operand from memory
    mul $s3, $s1, $s2  # Perform multiplication
    sw $s3, 8($a0)  # Store the result in memory
    jr ra  # Return

# Function to perform integer division
division:
    lw $s1, 0($a0)  # Load the dividend from memory
    lw $s2, 4($a0)  # Load the divisor from memory
    div $s1, $s2  # Perform division
    mflo $s3  # Load the quotient
    mfhi $s4  # Load the remainder
    sw $s3, 8($a0)  # Store the quotient in memory
    sw $s4, 12($a0)  # Store the remainder in memory
    jr ra  # Return

main:
    # Addition
    li $v0, 4
    la $a0, addition_str
    ecall

    # Call addition function
    la $a0, 0x10000000  # Memory address for operands and result
    jal ra, addition

    # Print the result of addition
    li $v0, 4
    la $a0, result_str
    ecall

    # Call puts function
    la $a0, 0x10000008  # Memory address for the result
    jal ra, puts

    # Multiplication
    li $v0, 4
    la $a0, multiplication_str
    ecall

    # Call multiplication function
    la $a0, 0x10000000  # Memory address for operands and result
    jal ra, multiplication

    # Print the result of multiplication
    li $v0, 4
    la $a0, result_str
    ecall

    # Call puts function
    la $a0, 0x10000008  # Memory address for the result
    jal ra, puts

    # Division
    li $v0, 4
    la $a0, division_str
    ecall

    # Call division function
    la $a0, 0x10000000  # Memory address for operands and result
    jal ra, division

    # Print the result of division
    li $v0, 4
    la $a0, result_str
    ecall

    # Call puts function
    la $a0, 0x10000008  # Memory address for the result
    jal ra, puts

    # Exit the program
    li $v0, 10
    ecall

.data
addition_str: .string "Performing addition:\n"
multiplication_str: .string "Performing multiplication:\n"
division_str: .string "Performing division:\n"
result_str: .string "Result:\n"
