.data 
array1: .word 1, 3, 5
array2: .word 2, 5, 6
array3: .word 0
lengthv: .word 3
.text
.globl main 
.ent main 
main:
la $t0, array1
la $t1, array2
la $t2, array3
li $s0, 0
li $s1, 3

sumLoop:
addi $s0, $s0, 1
lw $t3, ($t0) #get array[i]
lw $t4, ($t1)
add $t5, $t3, $t4 #sum[i]=arr1[i]+arr2[i]
sw $t5, ($t2) #store in location pointed by t2

addi $t0, $t0, 4
addi $t1, $t1, 4
addi $t2, $t2, 4
blt $s0, $s1, sumLoop
li $v0, 10
syscall
.end main

