.text
#Nesse programa n�o ser�o usadas vari�veis, ent�o eu posso omitir a sess�o .data
	li $t0, 75 #a instru��o "li" (load immediate) est� carregando o n�mero 75 no registrador $t0.
	li $t1, 25
	add $s0, $t0, $t1 #mesmo que $s0 = $t0 + $t1
	addi $s1, $s0, 36 #addi (add immediate) soma um valor do registrador com um valor num�rico. Neste caso, esta instru��o equivale a $s1 = $s0 + 36
	addi $s2, $s1, -25 #Somando com valor negativo