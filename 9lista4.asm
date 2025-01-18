.data
A: .space 44      # Reservando espa�o para um array de 11 inteiros (11 * 4 bytes = 44 bytes)
i: .word 0         # Vari�vel para armazenar o �ndice do loop
.text
main:
    li $t0, 0        # $t0 = i (�ndice do loop)
    li $t1, 11       # $t1 = Tamanho do array A
    li $t2, 50       # $t2 = Valor a ser adicionado (50)
loop:
    bge $t0, $t1, exit   # Verifica se i >= 11 (condi��o de sa�da do loop)
                         # Calcula o endere�o do elemento A[i]
    mul $t3, $t0, 4      # Multiplica i por 4 (tamanho de um inteiro em bytes)
    la $t4, A            # Carrega o endere�o base do array A em $t4
    add $t4, $t4, $t3    # Adiciona o deslocamento ao endere�o base para acessar A[i]
    lw $t5, 0($t4)       # Carrega o valor atual de A[i] em $t5
    add $t5, $t5, $t2    # Adiciona 50 ao valor atual de A[i]
    sw $t5, 0($t4)       # Armazena o novo valor de A[i] de volta em A[i]
    
    addi $t0, $t0, 1     # Incrementa i
    
    j loop               # Volta para o in�cio do loop
exit:
    li $v0, 10           # C�digo de sa�da do programa
    syscall
