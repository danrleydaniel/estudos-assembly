#DIVIS�O POR POT�NCIA DE 2

#Usa-se o srl (que possui a sintaxe semelhante ao sll)

.text
	li $t0, 32 #t0 = 32
	li $t1, 5 #t1 = 5
	
	#Vale lembrar que o srl s� guarda a parte inteira.
	srl $s0, $t0, 2 #dividindo 32 por 4 (2^2). Essa divis�o � exata, ent�o o resto � 0 mesmo.
	
	srl $s1, $t1, 2 #dividindo 5 por 4. Essa divis�o n�o � exata, ou seja sobra resto. Mas eu s� guardo a parte inteira em $s1.
	
###Muito obrigado ao professor do canal DesCOMPlica, Oliba! pelos ensinamentos :D