.data 
    hello: .asciiz "Hello world"
.text
.globl main
main:
    la $a0, hello
    syscall

