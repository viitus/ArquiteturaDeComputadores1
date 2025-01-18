.data
a: .word 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
.text
main:
la $s3, a           # $s3 = endereço de A
li $s1, 0           # $s1 => g = 0
li $s2, 50          # $s2 => h = 50
li $s4, 2           # $s4 => i = 2
mul $t0, $s4, 4     # i*4 = 8 
add $t1, $s3, $t0   # endereço de A + (i*4) = $t1
lw $t2, 0($t1)      # Carrega o valor de A[i] em $t2
add $s1, $s2, $t2   # g = h + A[i]
exit:
    li $v0, 10      # Código de saída do programa
    syscall