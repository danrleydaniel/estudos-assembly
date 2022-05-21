#ESCRITA EM ARQUIVOS
#Aula do canal DesCOMPlica, Oliba!

.data

	conteudoArq: .asciiz "Olá, galera! Bora aprender esse paranauê?"
	localArq: .asciiz "caminho_do_arquivo/arquivo_aula18.txt"

.text
	#ABRIR O ARQUIVO
	li $v0, 13 #INSTRUÇÃO QUE ABRE O ARQUIVO
	la $a0, localArq
	li $a1, 1 #MODO ESCRITA
	syscall #O DESCRITOR DO ARQUIVO ESTÁ EM $v0.
	
	move $s0, $v0
	
	#ESCREVENDO A STRING NO ARQUIVO
	li $v0, 15
	move $a0, $s0
	la $a1, conteudoArq
	la $a2, 41 #A STRING EM conteudoArq TEM 41 CARACTERES.
	syscall
	
	#FECHAR O ARQUIVO
	li $v0, 16
	move $a0, $s0
	syscall