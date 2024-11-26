programa
{
	inclua biblioteca Texto --> T
	inclua biblioteca Arquivos --> Ar

	inteiro MODO_ESCRITA = Ar.MODO_ESCRITA
	inteiro MODO_LEITURA = Ar.MODO_LEITURA
	inteiro MODO_ACRESCENTAR = Ar.MODO_ACRESCENTAR
	
	funcao inicio()
	{
		escreva_arq()
	}

	funcao cadeia ler_dados() {		
		cadeia dados
		cadeia data_nascimento
		cadeia nome_completo
		cadeia estado
		cadeia cidade

		escreva("Data: ")
		leia(data_nascimento)
		escreva("Nome completo: ")
		leia(nome_completo)
		nome_completo = T.caixa_alta(nome_completo)
		escreva("Cidade: ")
		leia(cidade) 
		cidade = T.caixa_alta(cidade)
		escreva("Estado: ")
		leia(estado)
		estado = T.caixa_alta(estado)

		dados = "\n"
		dados += data_nascimento
		dados += " ; " + nome_completo
		dados += " ; " + cidade
		dados += " ; " + estado

		retorne dados
	}

	funcao escreva_arq() {
		inteiro arq = Ar.abrir_arquivo("clientes.txt", MODO_ACRESCENTAR)
		Ar.escrever_linha(ler_dados(), arq)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 675; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */