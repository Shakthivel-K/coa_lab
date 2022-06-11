.data 
a: .word 1
bb: .word 1
c: .word 2
d: .word 2
e: .word 3
f: .word 4
if1: .asciiz "if is true"
else: .asciiz "else is active"
.text
.globl main
main:
lw $t0,a
lw $t1,bb
lw $t2,c
lw $t3, d
lw $t4, e
lw $t5, f

bne $t1, $t0, label1
bne $t2, $t3, label1
addi $t4, $t4, 1
j label2
label1:
addi $t5, $t5,1
label2: