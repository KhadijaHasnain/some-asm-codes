la a0,my_first_string
jal ra,puts # Appel nº1
la a0,my_second_string
jal ra,puts # Appel n°2 a0,my_third_string la
la a0, my_third_string
jal ra,puts # Appel n°3
ebreak

puts:
s1,0x10000000

.puts_loop_start:

lbu s2,0(a0)
beqz s2,.puts_loop_end
sw s2,0(s1)
addi a0,a0,1
j .puts_loop_start

.puts_loop_end:
jalr x0,0(ra) # Return

my_first_string:
.string "C'est un mec qui rentre dans un bar, \n"

my_second_string:
.string "il fait : \"Salut, c'est moi !\"\n"

my_third_string:
.string "Mais en fait pas de bol, c'était pas lui !"