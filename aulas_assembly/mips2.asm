.data
	caractere: .byte 'A' #".byte" � o tipo de dado que guarda apenas um caractere
.text
	li $v0, 4 #imprimir char ou string
	la $a0, caractere
	syscall
	
	li $v0, 10 #a instru��o "li $v0, 10" finaliza o programa
	syscall