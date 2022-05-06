#DIVISÃO DE INTEIROS:

#SINTAXE:
#div $t0, $t1 #realiza a divisão t0/t1

#a parte inteira vai para o registrador lo
#o resto vai para o registrador hi

#mflo $s0 - move o conteúdo de lo para s0
#mfhi $s1 - move o conteúdo de hi para s1

.text
	li $t0, 32 #t0 = 32
	li $t1, 5 #t1 = 5
	
	div $t0, $t1 #32/5
	#o resultado dessa divisão dá 6, com 2 de resto.
	
	mflo $s0 #movendo a parte inteira para o registrador $s0
	
	mfhi $s1 #movendo o resto para o registrador $s1