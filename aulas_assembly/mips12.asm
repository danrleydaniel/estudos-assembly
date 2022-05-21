#COMANDOS ADICIONAIS
#beq $t1, $t2, label -> Se $t1 foi igual a $t2, execute a partir do rótulo label.
#bne $t1, $t2, label -> Se $t1 foi diferente de $t2, execute a partir do rótulo label.
#blt $t1, $t2, label -> Se $t1 for menor que $t2, execute a partir do rótulo label.
#bgt $t1, $t2, label -> Se $t1 for maior que $t2, execute a partir do rótulo label.
#ble $t1, $t2, label -> Se $t1 for menor ou igual a $t2, execute a partir do rótulo label.
#bge $t1, $t2, label -> Se $t1 for maior ou igual a $t2, execute a partir do rótulo label.

#ESCREVA UM PROGRAMA EM ASSEMBLY MIPS QUE LÊ UM INTEIRO E IMPRIME SE ELE É PAR OU ÍMPAR.

#Aula do canal DesCOMPlica, Oliba!

.data

	msg: .asciiz "Forneça um número: "
	par: .asciiz "O número é par."
	impar: .asciiz "O número é ímpar."

.text

	#IMPRIMINDO MENSAGEM PARA O USUÁRIO
	li $v0, 4
	la $a0, msg
	syscall
	
	#LENDO O NÚMERO
	li $v0, 5
	syscall
	
	li $t0, 2 #VOU DIVIDIR O NÚMERO POR 2 PARA DESCOBRIR SE ELE É PAR OU ÍMPAR, VOU GUARDAR O NÚMERO 2 EM $t0.
	div $v0, $t0 #DIVIDINDO O NÚMERO LIDO (GUARDADO EM $v0) POR 2 (em $t0).
	
	#AGORA VOU PRECISAR VER SE O RESTO DA DIVISÃO É 0. O VALOR DO RESTO DA DIVISÃO É GUARDADO EM hi.
	
	mfhi $t1 #MOVENDO O VALOR DE hi PARA O REGISTRADOR $t1.
	
	beq $t1, $zero, imprime_par #SE O VALOR EM $t1 (O RESTO DA DIVISÃO) É ZERO, ENTÃO ESSE NÚMERO É PAR, VOU PASSAR PARA A PARTE DO PROGRAMA QUE IMPRIME PAR.
	bne $t1, $zero, imprime_impar #SE O VALOR EM $t1 (O RESTO DA DIVISÃO) NÃO FOR IGUAL A ZERO, ENTÃO ESSE NÚMERO É ÍMPAR, VOU PASSAR PARA A PARTE DO PROGRAMA QUE IMPRIME ÍMPAR
	
	imprime_par:
		li $v0, 4
		la $a0, par
		syscall
		
		#AGORA, EU VOU ENCERRAR O PROGRAMA, SE NÃO ELE CONTINUA EXECUTANDO AS INSTRUÇÕES DE IMPRIMIR ÍMPAR.
		li $v0, 10
		syscall
	
	imprime_impar:
		li $v0, 4
		la $a0, impar
		syscall
	
	
	