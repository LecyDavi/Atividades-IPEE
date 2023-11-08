programa
{
	inclua biblioteca Matematica --> Mt
	
	funcao inicio()
	{
		 inteiro valorDoDenominador= -1
		 real valorDaEntrada=0
		 real somatorio=0
		 real resultado = 0

		 faca{
		 	
		 	somatorio+=valorDaEntrada

		 	
		 	escreva("Entre com um número para a soma dos termos positivos\n")
		 	leia(valorDaEntrada)
		 	
		 	valorDoDenominador = valorDoDenominador +1
		 	
		 }enquanto(valorDaEntrada>0)

		 resultado = Mt.arredondar(somatorio/valorDoDenominador, 3)
		 escreva("\n")
		 escreva("Valor negativo encontrado!!\n\n")
	
		 
		 escreva(" A média da soma dos termos positivos\n")
		 escreva(somatorio, "/ ", valorDoDenominador, "  é:", resultado, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 269; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */