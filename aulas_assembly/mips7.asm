#DIVIS�O DE INTEIROS:

#SINTAXE:
#div $t0, $t1 #realiza a divis�o t0/t1

#a parte inteira vai para o registrador lo
#o resto vai para o registrador hi

#mflo $s0 - move o conte�do de lo para s0
#mfhi $s1 - move o conte�do de hi para s1

.text
	li $t0, 32 #t0 = 32
	li $t1, 5 #t1 = 5
	
	div $t0, $t1 #32/5
	#o resultado dessa divis�o d� 6, com 2 de resto.
	
	mflo $s0 #movendo a parte inteira para o registrador $s0
	
	mfhi $s1 #movendo o resto para o registrador $s1