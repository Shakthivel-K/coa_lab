.data
num: .word 0  #which number's table to print
itr: .word 1  #loop variable
intromsg: .asciiz "Please enter a number: " #initial prompt
multsym: .asciiz " x " 
eqsym: .asciiz " = "
carriageret: .asciiz "\n"
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
li $t5, 11 #loop termination condition variable
loop:  #loop label
    beq $t5, $t1, endofloop #loop terminating branch statement
    mul $t3, $t0, $t1 #multiplication statement
    li $v0, 1 #loading inscode to print integer
    move $a0, $t1 #loading integer to be printed
    syscall #execute statement to print first integer
    li $v0, 4 #loading inscode to print multsym
    la $a0, multsym #loading the string address into reg a0
    syscall #execute statement to print " x "
    li $v0, 1 # load inscode to print integer
    move $a0, $t0 #copy the value into reg a0
    syscall #execute statement to print multiplicand
    li $v0, 4 #load inscode 4 to print " = "
    la $a0, eqsym #load address of eqsym into a0
    syscall #execute printing " = "
    li $v0, 1 #Load inscode 1 to print product
    move $a0, $t3 #load product into reg a0
    syscall #execute to print the number 
    li $v0, 4 #load inscode 4 to print " \n "
    la $a0, carriageret #load address of eqsym into a0
    syscall #execute printing " \n "
    addi $t1, $t1, 1 #increment iterator
    j loop #To continue the loop
endofloop:
    li $v0, 10 #load wifth inscode 10 so as to exit
    syscall #execute to end 
