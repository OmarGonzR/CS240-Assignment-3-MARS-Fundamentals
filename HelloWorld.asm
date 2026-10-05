.data
helloworld: .asciiz "Hello world"

.text
li $v0, 4
la $a0, helloworld
syscall 

li $v0, 10
syscall
