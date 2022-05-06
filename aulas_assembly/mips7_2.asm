#DIVISÃO POR POTÊNCIA DE 2

#Usa-se o srl (que possui a sintaxe semelhante ao sll)

.text
	li $t0, 32 #t0 = 32
	li $t1, 5 #t1 = 5
	
	#Vale lembrar que o srl só guarda a parte inteira.
	srl $s0, $t0, 2 #dividindo 32 por 4 (2^2). Essa divisão é exata, então o resto é 0 mesmo.
	
	srl $s1, $t1, 2 #dividindo 5 por 4. Essa divisão não é exata, ou seja sobra resto. Mas eu só guardo a parte inteira em $s1.
	
###Muito obrigado ao professor do canal DesCOMPlica, Oliba! pelos ensinamentos :D