.text
#Nesse programa não serão usadas variáveis, então eu posso omitir a sessão .data
	li $t0, 75 #a instrução "li" (load immediate) está carregando o número 75 no registrador $t0.
	li $t1, 25
	add $s0, $t0, $t1 #mesmo que $s0 = $t0 + $t1
	addi $s1, $s0, 36 #addi (add immediate) soma um valor do registrador com um valor numérico. Neste caso, esta instrução equivale a $s1 = $s0 + 36
	addi $s2, $s1, -25 #Somando com valor negativo