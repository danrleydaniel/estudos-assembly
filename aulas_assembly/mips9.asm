#Agradeço ao professor do canal DesCOMPlica, Oliba! pelos ensinamentos :D

#LEITURA DE STRING

.data
	pergunta: .asciiz "Qual é o seu nome? "
	saudacao: .asciiz "Olá, "
	nome: .space 25 #Nessa variável, estou criando uma 'string vazia' e dizendo que o número máximo de caracteres é 25

.text
	#IMPRIMINDO A PERGUNTA
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#FAZENDO A LEITURA DO NOME
	li $v0, 8 #o número 8 nessa instrução diz que vamos ler uma string
	la $a0, nome 
	la $a1, 25
	syscall
	
	#IMPRIMINDO A SAUDAÇÃO
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#IMPRIMINDO O NOME
	li $v0, 4
	la $a0, nome
	syscall