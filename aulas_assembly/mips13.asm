#Aula do canal DesCOMPlica, Oliba!

#Escreva um programa em Assembly MIPS que lê um número inteiro e imprime se ele é maior, menor ou igual a zero.

.data

	maior: .asciiz "O número é maior que zero."
	menor: .asciiz "O número é menor que zero."
	igual: .asciiz "O número é igual a zero."

.text

	#LER O NÚMERO INTEIRO
	li $v0, 5
	syscall
	
	move $t0, $v0 #MOVENDO O VALOR PARA $t0 PARA NÃO SE PERDER.
	
	beq $t0, $zero, imprime_igual #PASSA PARA O RÓTULO DE IMPRIMIR IGUAL SE O NÚMERO DIGITADO ($t0) FOR IGUAL A ZERO.
	bgt $t0, $zero, imprime_maior #PASSA PARA O RÓTULO DE IMPRIMIR MAIOR SE O NÚMERO DIGITADO ($t0) FOR MAIOR QUE ZERO.
	blt $t0, $zero, imprime_menor #PASSA PARA O RÓTULO DE IMPRIMIR MENOR SE O NÚMERO DIGITADO ($t0) FOR MENOR QUE ZERO.
	
	imprime_igual:
		#IMPRIME QUE O NÚMERO É ZERO.
		li $v0, 4
		la $a0, igual
		syscall
		
		j exit_program
		
	imprime_maior:
		#IMPRIME QUE O NÚMERO É MAIOR QUE ZERO
		li $v0, 4
		la $a0, maior
		syscall
		
		j exit_program
		
	imprime_menor:
		#IMPRIME QUE O NÚMERO É MENOR QUE ZERO.
		li $v0, 4
		la $a0, menor
		syscall
		
		
	exit_program:
		li $v0, 10
		syscall