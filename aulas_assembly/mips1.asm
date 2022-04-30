#Assembly � diferente de Assembler
#Assembly � a linguagem, Assembler � o que transforma o Assembly em c�digo de m�quina
#Instru��es s�o palavras da linguagem, que geralmente usam 3 operandos, que sempre usam registradores.
#H� 32 registradores no MIPS, sempre possuindo o s�mbolo $

#Duas instru��es importantes do MIPS: Load e Store. Load � uma instru��o que movimenta os dados na mem�ria para o registrador.
#Store � uma instru��o que movimenta os dados do registrador para a mem�ria.

#Existe tamb�m a instru��o Move, que move o conte�do de um registrador para outro registrador.

#Registradores:
#$zero - constante zero
#$at - assembler temporary
#$v0, $v1 - retornam resultados de fun��es
#$a0, $a1, $a2, $a3 - argumentos de fun��es
#$ra - return address (endere�o de retorno de uma fun��o)
#$t1 - $t9 - registradores tempor�rios, que podem ser modificados por fun��es
#$S1 a @s8 - simulares aos anteriores, mas salvam valores

#Quando queremos atribuir um n�mero diretamente ao registrador, podemos utilizar a instru��o "li"

.data
#Na �rea .data fica a especifica��o de algumas vari�veis
	msg: .asciiz "Ol�, mundo!" #Mensagem a ser exibida para o usu�rio

.text
#Na �rea .text ficam as intru��es
	li $v0, 4 #a instru��o "li" seguido do n�mero 4 significa impress�o de string
	la $a0, msg #indicar para o registrador $a0 o endere�o em que est� a mensagem.
	syscall #Fa�a! Imprima