; Program to perform addition, multiplication, division and remainder operations
; on two numbers

; Load the first number into register R1
LOAD R1, 5

; Load the second number into register R2
LOAD R2, 3

; Add the two numbers and store the result in register R3
ADD R3, R1, R2

; Display the result of addition
PUTS "Sum of two numbers is: "
PUTD R3
PUTC 10

; Multiply the two numbers and store the result in register R4
MUL R4, R1, R2

; Display the result of multiplication
PUTS "Multiplication of two numbers is: "
PUTD R4
PUTC 10

; Divide the first number by the second number and store the quotient in register R5
DIV R5, R1, R2

; Store the remainder in register RR
REM RR, R1, R2

; Display the quotient and remainder
PUTS "Quotient is: "
PUTD R5
PUTC 10
PUTS "Remainder is: "
PUTD RR
PUTC 10

; Halt the program
HALT