#LAÇOS DE REPETIÇÃO - WHILE
#Aula do canal DesCOMPlica, Oliba!

#EXEMPLO EM C:					EXEMPLO EM ASSEMBLY:
#------------------------------------------------------------------------------------------------
# int i = 0;					 .text
# while (i < 10) {				 	move $t0, $zero #$t0 SERÁ O ITERADOR i
#	 i++;						
# }						 while:
# print("%d", &i);					beq $t0, 10, saida
#							addi $t0, $t0, 1
#							j while
#
#						 saida:
#							#IMPRIME O VALOR DE i
#							li $v0, 1
#							move $a0, $v0
#							syscall

#ESCREVA UM PROGRAMA QUE LÊ UM NÚMERO INTEIRO POSITIVO E IMPRIME TODOS SO SNÚMEROS INTEIROS DE ZERO ATÉ O NÚMERO LIDO.
#Ex:
#Entrada: 7
#Saída: 0 1 2 3 4 5 6 7

.data

	espaco: .byte ' ' #CRIANDO CARACTERE EM BRANCO PARA OS NÚMEROS NÃO FICAREM COLADOS
	
.text
	#LER O NÚMERO
	li $v0, 5
	syscall
	
	#MOVER PARA $t0 O VALOR LIDO
	move $t0, $v0
	
	move $t1, $zero #ITERADOR
	
	while:
	
		bgt $t1, $t0, saida #COMPARA SE O ITERADOR ($t1) É MAIOR QUE O NÚMERO LIDO ($t0), SE FOR, ELE SAI DO LAÇO
		
		#IMPRIMIR O INTIERO
		li $v0, 1 #INSTRUÇÃO PARA IMPRIMIR INTIERO
		move $a0, $t1 #FAZ UMA CÓPIA DO VALOR ITERADOR ($t1) NO REGISTRADOR $a0, QUE É O QUE SERÁ MOSTRADO.
		syscall
		
		#IMPRIMIR UM ESPAÇO EM BRANCO
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1
		j while
	
	saida:
		li $v0, 10
		syscall
		