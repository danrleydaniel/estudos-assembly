#SUBTRAÇÃO DE INTEIROS USA SINTAXE SEMELHANTE À DE ADIÇÃO

.text
	li $t0, 75 #t0 = 75
	li $t1, 25 #t1 = 25
	sub $t2, $t0, $t1 #t2 = 50
	subi $t3, $t2, 40 #t3 = 10
	subi $t4, $t2, -40 #t4 = 90