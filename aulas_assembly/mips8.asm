#LEITURA DE INTEIROS

#Realizamos a instrução $v0, 5 para fazer leitura de inteiros.

#Ao dar syscall, o valor lido fica armazenado no registrador $v0

.data
	saudacao: .asciiz "Olá. Por favor, forneça sua idade: "
	saida: .asciiz "Sua idade é: "

.text
	#IMPRIMINDO A MENSAGEM DE SAUDAÇÃO
	li $v0, 4 #li $v0 junto com o número 4 significa imprimir string
	la $a0, saudacao #a string imprimida precisa estar no registador $a0
	syscall
	
	li $v0, 5 #como vimos, li $v0, 5 significa leitura de inteiros
	syscall
	#O valor que o usuário forncecer será guardado em $v0, mas eu vou precisar mudar esse valor para imprimir a string saida
	
	#Então, vou guardar o valor no registrador $t0, usando o move.
	move $t0, $v0
	
	#IMPRIMINDO A MENSAGEM DE SAÍDA:
	li $v0, 4
	la $a0, saida
	syscall
	
	#Agora, eu preciso imprimir o inteiro fornecido pelo usuário:
	li $v0, 1 #li $v0 com o número 1 significa imprimir inteiro
	move $a0, $t0 #movendo o valor que o usuário forneceu para o registrador que será impresso
	syscall

#Agradeço ao professor do canal DesCOMPlica, Oliba! pelos ensinamentos :D