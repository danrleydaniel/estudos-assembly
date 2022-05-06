####Agradecimento pelos ensinamentos ao canal: DesCOMPlica, Oliba!
#MULTIPLICAÇÃO POR POTÊNCIAS DE 2

#A operação shift left move os bits para esquerda, o que faz justamente o trabalho de multiplicação

#Se movermos os bits uma casa para a esquerda, multiplicaremos por 2.
#Se movermos os bits duas casas para a esquerda, multiplicaremos por 4.

#Se movermos os bits n casas para a esquerda, multiplicaremos por 2^n

#Exemplo:

#Binário original:
#000110(bin) = 6(dec)
#SHIFT LEFT 1 APLICADO:
#001100(bin) = 12(dec)
#SHIFT LEFT 1 APLICADO:
#011000(bin) = 24(dec)
#SHIFT LEFT 1 APLICADO:
#110000(bin) = 48(dec)

#Sintaxe:
#sll $t0, $t1, n #faz shift left de n casas para a esquerda

.text
	li $t0, 12 #t0 = 12
	li $t1, 10 #t1 = 10 * 2^10 = 10 * 1024 = 10240
	
	sll $s1, $t1, 10 #s1 = 