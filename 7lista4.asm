.data
a: .word 0 10 20 30 40 50 60 70 80 90 100
.text
main:
la $s3,a           # $s3 = endereço de A
li $s2,50          # $s2 => h = 50
lw $t0,32($s3)     # carrega A[8] em $t0
add $t1,$s2,$t0    # h + A[8] = $t1
sw $t1,36($s3)     # carrega do valor de $t1 em A[9]
exit:
    li $v0, 10     # Código de saída do programa
    syscall