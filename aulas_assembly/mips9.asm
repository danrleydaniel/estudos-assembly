#Agrade�o ao professor do canal DesCOMPlica, Oliba! pelos ensinamentos :D

#LEITURA DE STRING

.data
	pergunta: .asciiz "Qual � o seu nome? "
	saudacao: .asciiz "Ol�, "
	nome: .space 25 #Nessa vari�vel, estou criando uma 'string vazia' e dizendo que o n�mero m�ximo de caracteres � 25

.text
	#IMPRIMINDO A PERGUNTA
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#FAZENDO A LEITURA DO NOME
	li $v0, 8 #o n�mero 8 nessa instru��o diz que vamos ler uma string
	la $a0, nome 
	la $a1, 25
	syscall
	
	#IMPRIMINDO A SAUDA��O
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#IMPRIMINDO O NOME
	li $v0, 4
	la $a0, nome
	syscall