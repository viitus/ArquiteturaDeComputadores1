.data
A: .space 44      # Reservando espaço para um array de 11 inteiros (11 * 4 bytes = 44 bytes)
i: .word 0         # Variável para armazenar o índice do loop
.text
main:
    li $t0, 0        # $t0 = i (índice do loop)
    li $t1, 11       # $t1 = Tamanho do array A
    li $t2, 50       # $t2 = Valor a ser adicionado (50)
loop:
    bge $t0, $t1, exit   # Verifica se i >= 11 (condição de saída do loop)
                         # Calcula o endereço do elemento A[i]
    mul $t3, $t0, 4      # Multiplica i por 4 (tamanho de um inteiro em bytes)
    la $t4, A            # Carrega o endereço base do array A em $t4
    add $t4, $t4, $t3    # Adiciona o deslocamento ao endereço base para acessar A[i]
    lw $t5, 0($t4)       # Carrega o valor atual de A[i] em $t5
    add $t5, $t5, $t2    # Adiciona 50 ao valor atual de A[i]
    sw $t5, 0($t4)       # Armazena o novo valor de A[i] de volta em A[i]
    
    addi $t0, $t0, 1     # Incrementa i
    
    j loop               # Volta para o início do loop
exit:
    li $v0, 10           # Código de saída do programa
    syscall
