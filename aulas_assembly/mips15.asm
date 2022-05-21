#FUNÇÕES
#Aula do canal DesCOMPlica, Oliba!

#É uma boa prática colocarmos o label (rótulo) main em nossa função principal.

#INSTRUÇÕES IMPORTANTES:
#jal - realiza jump para algum rótulo de função e permite a volta à chamada pelo registrador $ra.

#jr - $ra volta para quem chamou a função.

#PARÂMETROS:
#Registradores $a0 a $a3: valores passados como parâmetros a qualquer função do programa

#$v0 e $v1: return de funções

#ESCREVER UMA FUNÇÃO QUE VERIFICA SE UM NÚMERO INTEIRO POSITIVO É PAR OU ÍMPAR

.data
	msg: .asciiz "Forneça um número positivo: "
	par: .asciiz "O número é par."
	impar: .asciiz "O número é ímpar."
.text
	la $a0, msg
	jal imprimeString
	jal leInteiro #AO EXECUTAR A FUNÇÃO leInteiro, O VALOR LIDO ESTARÁ EM $v0. OS PARÂMETROS PRECISAM ESTAR EM $a0.
	
	move $a0, $v0 #MOVO O VALOR DE $v0 PARA $a0.
	jal ehImpar
	
	beq $v0, $zero, imprimePar #SE O VALOR RETORNADO, QUE ESTÁ EM $v0 FOR 0, ENTÃO O NÚMERO É PAR.
	
	#SE NÃO, O NÚMERO É ÍMPAR, ENTÃO MANDO IMPRIMIR ÍMPAR.
	la $a0, impar
	jal imprimeString
	jal encerraPrograma
	
	imprimePar:
		la $a0, par
		jal imprimeString
		jal encerraPrograma
	
	#FUNÇÃO QUE VERIFICA SE O ARGUMENTO $a0 É IMPAR.
	#RETORNA 1 SE FOR ÍMPAR
	#RETORNA 0 SE FOR PAR.
	ehImpar:
		li $t0, 2 #GUARDO O VALOR 2 NO REGISTRADOR $t0.
		div $a0, $t0 #DIVIDO O VALOR PASSADO POR PARÂMETRO POR 2 ($t0).
		
		mfhi $v0 #COLOCO O RESTO DA DIVISÃO (hi) NO REGISTRADOR DE RETORNO $v0. SE O NÚMERO FOR ÍMPAR, O RESTO É 1, CONSEQUENTEMENTE O RETORNO É 1. SE NÃO, TANTO O RESTO E O RETORNO SERÃO 0.
		jr $ra	#VOLTA PARA QUEM CHAMOU A FUNÇÃO
	
	#ENCERRA PROGRAMA
	encerraPrograma:
		li $v0, 10
		syscall
	
	#FUNÇÃO QUE IMPRIME STRING
	imprimeString:
		li $v0, 4
		syscall
		jr $ra
	
	#FUNÇÃO QUE LÊ INTEIRO
	leInteiro:
		li $v0, 5
		syscall
		jr $ra
		