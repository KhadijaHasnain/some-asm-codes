# Driver Program
.data
operand1:   .word 5
operand2:   .word 2
newline:    .asciiz "\n"
resultMessage:       .asciiz "Result: "

.text
main:
    # Call Addition
    lw $a0, operand1
    lw $a1, operand2
    syscall
    jal printNewLine

    # Call Multiplication
    lw $a0, operand1
    lw $a1, operand2
    jal multiplication
    # Print Result
    li $v0, 4
    la $a0, resultMessage
    syscall
    li $v0, 1
    move $a0, $v0
    syscall
    jal printNewLine

    # Call Division
    lw $a0, operand1
    lw $a1, operand2
    jal division
    # Print Quotient
    li $v0, 4
    la $a0, resultMessage
    syscall
    li $v0, 1
    move $a0, $v0
    syscall
    jal printNewLine
    # Print Remainder
    li $v0, 4
    la $a0, resultMessage
    syscall
    li $v0, 1
    move $a0, $v1
    syscall

    # Exit
    li $v0, 10
    syscall

printNewLine:
    li $v0, 4
    la $a0, newline
    syscall
    jr $ra
