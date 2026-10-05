.data
fizz: .asciiz "Fizz"
buzz: .asciiz "Buzz"
fizzbuzz: .asciiz "FizzBuzz"

.text
li $t9, '\n'

li $t1, 101
li $t2, 1

loop:
#checks if it's divisble by 15
li $t4, 15
div $t2, $t4
mfhi $t5
beq $t5, $zero, print_fizzbuzz

#checks if it's divisble by 3
li $t4, 3
div $t2, $t4
mfhi $t5
beq $t5, $zero, print_fizz

#checks if it's divisble by 5
li $t4, 5
div $t2, $t4
mfhi $t5
beq $t5, $zero, print_buzz

#prints integer
li $v0, 1
move $a0, $t2
syscall
j print_newline


print_fizz:
li $v0, 4
la $a0, fizz
syscall
j print_newline

print_buzz:
li $v0, 4
la $a0, buzz
syscall
j print_newline

print_fizzbuzz:
li $v0, 4
la $a0, fizzbuzz
syscall
j print_newline

print_newline:
li $v0, 11
move $a0, $t9
syscall

# increment
addi $t2, $t2, 1
bne $t2, $t1, loop

li $v0, 10
syscall
