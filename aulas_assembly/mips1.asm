#Assembly é diferente de Assembler
#Assembly é a linguagem, Assembler é o que transforma o Assembly em código de máquina
#Instruções são palavras da linguagem, que geralmente usam 3 operandos, que sempre usam registradores.
#Há 32 registradores no MIPS, sempre possuindo o símbolo $

#Duas instruções importantes do MIPS: Load e Store. Load é uma instrução que movimenta os dados na memória para o registrador.
#Store é uma instrução que movimenta os dados do registrador para a memória.

#Existe também a instrução Move, que move o conteúdo de um registrador para outro registrador.

#Registradores:
#$zero - constante zero
#$at - assembler temporary
#$v0, $v1 - retornam resultados de funções
#$a0, $a1, $a2, $a3 - argumentos de funções
#$ra - return address (endereço de retorno de uma função)
#$t1 - $t9 - registradores temporários, que podem ser modificados por funções
#$S1 a @s8 - simulares aos anteriores, mas salvam valores

#Quando queremos atribuir um número diretamente ao registrador, podemos utilizar a instrução "li"

.data
#Na área .data fica a especificação de algumas variáveis
	msg: .asciiz "Olá, mundo!" #Mensagem a ser exibida para o usuário

.text
#Na área .text ficam as intruções
	li $v0, 4 #a instrução "li" seguido do número 4 significa impressão de string
	la $a0, msg #indicar para o registrador $a0 o endereço em que está a mensagem.
	syscall #Faça! Imprima