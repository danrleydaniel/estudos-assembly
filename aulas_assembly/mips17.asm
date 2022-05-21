#MANIPULAÇÃO DE ARQUIVOS
#Aula do canal DesCOMPlica, Oliba!

#Para manipularmos arquivos, é necessário abrí-los no modo em que queremos usar: leitura ou escrita.
#ROTEIRO:
# Abrir no modo leitura -> Ler -> Fechar
# Abrir no modo escrita -> Escrever -> Fechar

#NECESSAŔIO:
# - Abrir no modo leitura
# - Informar o nome do arquivo (e diretório em que se encontra)
# - Salvar o descritor do arquivo

# - Ler usando descritor
# - Informar o bome do buffer que vai salvar o conteúdo
# - Informar o tamanho do buffer

# - Fechar o arquivo

#EXERCÍCIO: LER O CONTEÚDO DE UM ARQUIVO E IMPRIMIR NA TELA.

.data

	localArquivo: .asciiz "caminho_do_arquvo/arquivo_aula17.txt"
	conteudoArquivo: .space 1024 #Reservando espaço para o arquivo

.text

	#Abir arquivo no modo leitura
	li $v0, 13 #INSTRUÇÃO PARA ABRIR ARQUIVO
	la $a0, localArquivo #PASSANDO O LOCAL DO ARQUIVO
	li $a1, 0 #0: LEITURA 1: ESCRITA
	syscall #DESCRITOR DO ARQUIVO VAI PARA $v0
	
	move $s0, $v0 #FAZENDO UMA CÓPIA DO DESCRITOR.
	
	move $a0, $s0
	li $v0, 14 #LER CONTEÚDO DO ARQUIVO REFERENCIADO POR $a0. O VALOR SALVO ESTÁ EM $a1, MAS EU PRECISO QUE ELE ESTEJA NA VARIÁVEL conteudoArquivo.
	la $a1, conteudoArquivo #PASSANDO O VALOR DE $a1 PARA conteudoArquivo.
	li $a2, 1024 #TAMANHO DO BUFFER
	syscall
	
	#IMPRIMIR O CONTEÚDO DO ARQUIVO
	li $v0, 4
	move $a0, $a1
	syscall
	
	#FECHAR O ARQUIVO
	li $v0, 16 #FECHANDO O ARQUIVO
	move $a0, $s0 #ELE SABE QUAL ARQUIVO VOU FECHAR, COLOCANDO O DESCRITOR EM $a0. O DESCRITOR ESTÁ GUARDADO EM $s0, ENTÃO EU PASSO O VALOR DE $s0 PARA $a0.
	syscall