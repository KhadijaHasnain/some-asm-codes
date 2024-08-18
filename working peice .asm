# Start .text segment (program code)

.text

.globl main

main:

li $t1, 20

li $t2, 10

div $t1, $t2

li $v0, 10

syscall

#Start .text segment (program code)

.text

.globl main

main:

li $t0, 25

li$t1, 10

add $t2, $to, $t1

li $v0, 10

syscall

# How do we exit the program? Simple, through the system calls. #Many calls are there and we can pick appropriate one! 10 is the code for the exit and place it in $VO! you are all done

#Start .text segment (program code)

.text

.globl main

main:

li $t1, 02

li $t2, 03

mul $to, $t1, $t2

li $v0, 10

syscall

#How do we exit the program? Simple, through the system calls. Many calls are there and we can pick appropriate one! 10 is the # code for the exit and place it in $VO! you are all done!
