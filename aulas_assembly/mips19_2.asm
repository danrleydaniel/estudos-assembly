#IMPRIMINDO VALOR DE ASCII DE CADA CARACTERE DE UMA STRING

.data

	palavra: .asciiz "Ola"

.text
	
	#PRIMEIRA LETRA - POSIÇÃO 0
	lb $a0, palavra($zero)
	li $v0, 1
	syscall
	
	#SEGUNDA LETRA - POSIÇÃO 1
	li $t0, 1
	lb $a0, palavra($t0)
	li $v0, 1
	syscall
	
	#SEGUNDA LETRA - POSIÇÃO 2
	li $t0, 2
	lb $a0, palavra($t0)
	li $v0, 1
	syscall