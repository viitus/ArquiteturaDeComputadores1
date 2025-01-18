.text
.globl main

main:
    li      $v0, 5           # C�digo 5 para scanf (inteiro)
    syscall
    move    $s0, $v0         # Move o valor lido para $s0 = x

    # Switch
    beq     $s0, 1, case_1    # Se x == 1, v� para o caso 1
    beq     $s0, 2, case_2    # Se x == 2, v� para o caso 2
    j       default           # V� para o caso padr�o

case_1:
    li      $s1, 5           # $ s1 = y = 5 (caso 1)
    b       end_switch    

case_2:
    li      $s1, 10          # y = 10 (caso 2)
    b       end_switch       

default:
    li      $s1, -1          # y = -1 (caso padr�o)
  
end_switch:
    # Fim do programa
    li      $v0, 10          # C�digo de servi�o 10 para sair
    syscall
