.data
	idade: .word 56 #.word � o que guarda o tipo inteiro
.text
	li $v0, 1 #a instru��o li com o registrador $v0 seguido do n�mero 1 significa que ser� impimido um inteiro
	lw $a0, idade #como eu estou carregando um tipo .word (inteiro), eu uso a instru��o "lw" (load word) para guardar no registrador
	syscall
	