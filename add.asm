.data
prompt: .asciiz "Enter number 1: "
prompt2: .asciiz "Enter number 2: "
prompt3: .asciiz "Enter number 3: "
newline: .asciiz "\n"
answer: .word 0
sqanswer:  .word 0
 
.text
.globl main
.ent main

main:
li $v0, 4
la $a0, prompt  
syscall

li $v0, 5
syscall
move $t1, $v0   

li $v0, 4
la $a0, prompt2   
syscall

li $v0, 5
syscall
move $t2, $v0     

li $v0, 4
la $a0, prompt3  
syscall

li $v0, 5
syscall
move $t3, $v0    

addi $a0, $t2, 0

#lw $a0, prompt
#lw $a1, prompt2
jal power

sw $v0, answer
lw $s0, answer 

li $t4, 4
mul $t5, $t1, $t3   
mul $t5, $t5, $t4   
li $t6, 2
mul $t7, $t6, $t1
sub $a1, $s0, $t5   

jal iSqrt

sw $v1, sqanswer
lw $s3, sqanswer 


li $s1, -1
mul $s1, $t2, $s1   
add $s2, $s1, $s3   
div $s3, $s2, $t7

move $a0, $s3
la $v0, 1
syscall 

li $v0, 10
syscall

.end main


.globl power
.ent power

power:

mul $v0, $a0, $a0

jr $ra

.end power

.globl iSqrt
.ent iSqrt

iSqrt:

move $v1, $a1   
li $t0, 0   

sqrLoop:

div $t8, $a1, $v1
add $v1, $t8, $v1
div $v1, $v1, 2 
add $t0, $t0, 1
blt $t0, 20, sqrLoop

jr $ra

.end iSqrt