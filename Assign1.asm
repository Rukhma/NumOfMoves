.data
input: .asciiz "Input number of disks: "
output: .asciiz "Number of moves are: "

.text
la $a0,input
li $v0,4
syscall
li $v0,5
syscall
move $t1,$v0
addi $t2,$zero,2
addi $t3,$zero,1
NumberOfMoves:
mul $t3,$t3,$t2
addi $t1,$t1,-1
bnez $t1,NumberOfMoves
subi $t3,$t3,1
la $a0,output
li $v0,4
syscall
move $a0,$t3
li $v0,1
syscall
li $v0,10
syscall

