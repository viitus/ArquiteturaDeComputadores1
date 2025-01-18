.text
main:
addi $s0,$zero,1 # a=$s0 
addi $s1,$zero,1 # b=$s1
addi $s2,$zero,1 # c=$s2
addi $s3,$zero,1 # d=$s3
addi $s4,$zero,1 # e=$s4
addi $s5,$zero,1 # f=$s5
#a)
sub $s0,$s1,$s2
#b)
add $s1,$s0,$s2
#c)
add $t0,$s0,$s1
sub $s3,$t0,$s2
#d)
add $t0,$s0,$s1
sub $s5,$t0,$s3
#e)
add $t0,$s1,$s3
sub $s2,$s0,$t0
#f)
sub $t0,$s1,$s2
sub $s4,$s0,$t0
#g)
sub $t0,$s1,$s2
sub $t1,$s0,$t0
add $s4,$t1,$s5
#h)
sub $t0,$s0,$s1
sub $t1,$s1,$s2
add $t2,$t0,$t1
sub $s5,$s4,$t2
exit:
    li $v0, 10     # Código de saída do programa
    syscall