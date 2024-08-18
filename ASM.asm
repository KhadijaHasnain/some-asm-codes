# addition
load R1, 5   ; load number in R1
load R2, 2   ; load number in R2
add R1, R2   ; accumulate sum in R1

# Print the result of addition
print "Addition result is R1:", R1   ; assuming R1 holds the result of addition

# subtraction
load R3, 10
load R4, 3
sub R3, R4   ; accumulate difference in R3

# Print the result of subtraction
print "Subtraction result is R3:", R3   ; assuming R3 holds the result of subtraction

# multiplication - 8 bit source
load R5, 5
load R6, 10
mul R5, R6   ; result in R5

# Print the result of multiplication (8-bit source)
print "Multiplication result is R5:", R5   ; assuming R5 holds the result of multiplication

# multiplication - 16 bit source
load R7, 5
load R8, 10
mul R7, R8   ; result in R7, R6

# Print the result of multiplication (16-bit source)
print "Multiplication result is R7:", R7   ; assuming R7 holds the high part
print "Low part is R6:", R6   ; assuming R6 holds the low part

# division - 8 bit source
load R9, 23
load R10, 4
div R9, R10  ; quotient in R9, remainder in R10

# Print the result of division (8-bit source)
print "Division quotient is R9:", R9   ; assuming R9 holds the quotient of division

# division - 16 bit source
load R11, 23
load R12, 4
div R11, R12 ; quotient in R11, remainder in R12

# Print the result of division (16-bit source)
print "Division quotient is R11:", R11   ; assuming R11 holds the quotient of division

# Halt the program
halt
