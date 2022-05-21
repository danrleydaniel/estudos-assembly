#CARACTERES ASCII
#Aula do canal DesCOMPlica, Oliba!

.data

	letra: .byte 'O'

.text

	lb $a0, letra
	li $v0, 1
	syscall