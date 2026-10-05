li $t0, 0
li $t1, 102

loop:
add $t2, $t2, $t0
addi $t0, $t0, 2
bne $t0, $t1, loop
