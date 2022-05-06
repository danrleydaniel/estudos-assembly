#MULTIPLICAÇÃO DE INTEIROS

.text
	li $t0, 12 #t0 = 12
	li $t1, 10 #t1 = 10
	
	mul $s0, $t0, $t1 #s0 = t0 * t1 = 120
	
	li $v0, 1 #li junto com $v0 e o número 1 significa que vou imprimir inteiro
	
	move $a0, $s0 #quando eu quero passar o valor de um registrador para outro registrador, usa-se o move
	#após mandar imprimir o inteiro com "li $v0, 1", o inteiro a ser impresso deve estar no registrador $a0
	syscall
	