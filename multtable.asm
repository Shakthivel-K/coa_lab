.data
num: .word 0  #which number's table to print
itr: .word 1  #loop variable
intromsg: .asciiz "Please enter a number: " #initial prompt

.text 
.globl main
main:
lw $t0, num
lw $t1, itr
li $v0, 4 #load inscode 4 for printing string
la $a0, intromsg #load address to print
syscall 
li $v0, 5 #load inscode 5 for reading 
syscall #execute read
move $t0, $v0 #load read value into reg t0
