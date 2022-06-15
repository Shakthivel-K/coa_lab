.data 
var: .word 0 
.text
.globl main
main:
li $v0, 5 #opcode for console input is 5
syscall   #executing 
move $t0, $v0 #copying into register t0
li $v0, 10 #termination opcode 
syscall #executing