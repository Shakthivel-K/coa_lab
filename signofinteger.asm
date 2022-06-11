.data 
num: .word 5
pos:  .asciiz  "The number is positive"
negative:  .asciiz  "The number is negative"
.text 
.globl main 
main:
lw $t0, num
li $t1, 0
blt $t1, $t0, label1 #if t1<t0 , branches positive else stays negative 
li $v0, 4
la $a0, negative
syscall
li $v0, 10
syscall
j label2
label1:
li $v0, 4
la $a0, pos
syscall
li $v0, 10
syscall

