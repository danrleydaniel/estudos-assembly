.data
	idade: .word 56 #.word é o que guarda o tipo inteiro
.text
	li $v0, 1 #a instrução li com o registrador $v0 seguido do número 1 significa que será impimido um inteiro
	lw $a0, idade #como eu estou carregando um tipo .word (inteiro), eu uso a instrução "lw" (load word) para guardar no registrador
	syscall
	