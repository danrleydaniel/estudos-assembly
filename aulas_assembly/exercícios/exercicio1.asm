#Programa em Assembly MIPS que calcula a m�dia de 3 valores dados pelo usu�rio.

.data
#DECLARANDO AS VARI�VEIS:
	soma: .word 0 #VARI�VEL ONDE FICAR� A SOMA DOS VALORES
	saudacao: .asciiz "Bem vindo! Forne�a os 3 valores\n" #MENSAGEM DE SAUDA��O PARA O USU�RIO
	msg_v1: .asciiz "Valor 1: " #VAR�AVEL QUE VAI GUARDAR A MENSAGEM PARA PEDIR O VALOR 1
	msg_v2: .asciiz "Valor 2: " #VAR�AVEL QUE VAI GUARDAR A MENSAGEM PARA PEDIR O VALOR 2
	msg_v3: .asciiz "Valor 3: " #VAR�AVEL QUE VAI GUARDAR A MENSAGEM PARA PEDIR O VALOR 3
	msg_final: .asciiz "\n\nSUA M�DIA �: "
	msg_parte_int: .asciiz "\nPARTE INTEIRA: "
	msg_resto: .asciiz "\nRESTO: "
	
.text
	lw $s0, soma #GUARDANDO O ENDERE�O DA VARI�VEL SOMA NO REGISTRADOR $s2
	li $t4, 3 #VOU PRECISAR DIVIDIR POR 3 FUTURAMENTE, ENT�O VOU GUARDAR O VALOR 3 NO REGISTRADOR $t4 PARA US�-LO QUANDO PRECISAR.
	
	#IMPRIMINDO A MENSAGEM DE SAUDA��O
	li $v0, 4 #li $v0 junto com o n�mero 4 significa que vai imprimir uma string
	la $a0, saudacao #a mensagem a ser impressa deve estar $a0
	syscall
	
	#IMPRIMINDO A MENSAGEM PARA PEDIR O VALOR 1
	li $v0, 4
	la $a0, msg_v1
	syscall

	#PARA O USU�RIO DIGITAR O VALOR 1:
	li $v0, 5 #li $v0 junto com o n�mero 5 significa que o usu�rio vai digitar um inteiro
	syscall
	
	#O valor digitado ser� salvo em $v0
	
	move $t0, $v0 #O valor de $v0 precisar� ser mudado para imprimir a pr�xima string, ent�o muda-se o valor de $v0 para $t0
	
	#IMPRIMINDO A MENSAGEM PARA PEDIR O VALOR 2
	li $v0, 4
	la $a0, msg_v2
	syscall
	
	#PARA O USU�RIO DIGITAR O VALOR 2:
	li $v0, 5
	syscall
	
	move $t1, $v0 #GUARDANDO O VALOR 2 EM $t1
	
	#IMPRIMINDO A MENSAGEM PARA PEDIR O VALOR 3
	li $v0, 4
	la $a0, msg_v3
	syscall
	
	#PARA O USU�RIO DIGITAR O VALOR 3:
	li $v0, 5
	syscall
	
	move $t2, $v0 #GUARDANDO O VALOR 3 EM $t2
	
	#ASSIM SENDO, OS VALORES FICAM GUARDADOS EM:
	#$t0 = valor 1
	#$t1 = valor 2
	#$t2 = valor 3
	
	#AGORA, � NECESS�RIO SOM�-LOS:
	add $s2, $t0, $t1 #A VARI�VEL soma EST� NO REGISTRADOR $s2. SOMA-SE O VALOR 1 E O VALOR 2 E GUARDA NELA.
	add $s2, $s2, $t2 #SOMA O RESULTADO DE VALOR 1 + VALOR 2 COM O VALOR 3, E GUARDA ESSE NOVO VALOR NO REGISTRADOR $s2.
	
	#DIVIDINDO A SOMA DOS VALORES POR 3:
	div $s2,$t4 #DIVIDE $s2 (SOMA DOS 3 VALORES) POR $t4 (3), O QUE D� A M�DIA DOS 3 VALORES
	
	#A DIVIS�O EM ASSEMBLY GUARDA A PARTE INTEIRA EM lo E O RESTO EM hi
	#VOU PASSAR ESSES VALORES PARA $t5 e $t6
	
	mflo $t5 #GUARDA O VALOR DE lo EM $t5
	mfhi $t6 #GUARDA O VALOR DE hi EM $t6
	
	#MOSTRANDO A MENSAGEM "SUA M�DIA �: ":
	li $v0, 4
	la $a0, msg_final
	syscall
	
	#MOSTRANDO A MENSAGEM "PARTE INTEIRA: "
	li $v0, 4
	la $a0, msg_parte_int
	syscall
	
	#MOSTRANDO A PARTE INTEIRA:
	li $v0, 1 #li $v0 junto com o n�mero 1 significa que vai imprimir um inteiro
	move $a0, $t5 #MOVENDO O VALOR DE $t5, OU SEJA, A PARTE INTEIRA PARA O REGISTRADOR $a0, QUE � O QUE SER� IMPRESSO
	syscall
	
	#MOSTRANDO A MENSAGEM "RESTO: "
	li $v0, 4
	la $a0, msg_resto
	syscall
	
	#MOSTRANDO O RESTO:
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10 #A INSTRU��O li $v0 JUNTO COM O N�MERO 10 ENCERRA O PROGRAMA.
	syscall
	