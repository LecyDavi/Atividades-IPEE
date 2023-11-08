programa
{
	
	funcao inicio()
	{    
		const inteiro LINHA_DA_MATRIZ = 2, COLUNA_DA_MATRIZ= 3
		inteiro qtdDeLinhaDovetor = LINHA_DA_MATRIZ*COLUNA_DA_MATRIZ
		inteiro  matrizImparPar[LINHA_DA_MATRIZ][COLUNA_DA_MATRIZ]
		inteiro linhaDaMatriz, colunaDaMatriz, linhaDoVetorPar = 0, linhaDoVetorimpar = 0
		inteiro valoresvetorImpares[LINHA_DA_MATRIZ*COLUNA_DA_MATRIZ], valoresVetorPares[LINHA_DA_MATRIZ*COLUNA_DA_MATRIZ], resultadoImparPar
	
		
		
		// entrada dos valores da matriz
		escreva("Entre com o valores da Matriz[",LINHA_DA_MATRIZ, "][", COLUNA_DA_MATRIZ,"]\n" )
		
		para(linhaDaMatriz = 0; linhaDaMatriz<LINHA_DA_MATRIZ; linhaDaMatriz++){
		
			escreva("Entre com os valores da linha ", linhaDaMatriz+1," da Matriz\n")
			para(colunaDaMatriz=0; colunaDaMatriz<COLUNA_DA_MATRIZ; colunaDaMatriz++){
				leia(matrizImparPar[linhaDaMatriz][colunaDaMatriz])
				
			}
		}

          limpa()
		// leitura dos valores da matriz, para saber quais são pares e quais são impares
		para(linhaDaMatriz = 0; linhaDaMatriz<LINHA_DA_MATRIZ; linhaDaMatriz++){
			
			para(colunaDaMatriz=0; colunaDaMatriz<COLUNA_DA_MATRIZ; colunaDaMatriz++){
					
				resultadoImparPar = matrizImparPar[linhaDaMatriz][colunaDaMatriz]%2
				se (resultadoImparPar==0){
					valoresVetorPares[linhaDoVetorPar]= matrizImparPar[linhaDaMatriz][colunaDaMatriz]
					linhaDoVetorPar+=1
					
				}
				senao{
					valoresvetorImpares[linhaDoVetorimpar] = matrizImparPar[linhaDaMatriz][colunaDaMatriz]
					linhaDoVetorimpar+=1
				}
						
			}
		}

		// ordenação dos vetores Impares e pares 
	     inteiro  i, j, indice_min, troca
		
	     para (i = 0; i < qtdDeLinhaDovetor - 1; i++) {
	        indice_min = i
	        para (j = i + 1; j < qtdDeLinhaDovetor; j++) {
	            se (valoresVetorPares[j] < valoresVetorPares[indice_min]) {
	                indice_min = j
	            }
	        }
	
	        // Trocar o elemento atual com o menor elemento encontrado
	        troca = valoresVetorPares[i]
	        valoresVetorPares[i] = valoresVetorPares[indice_min]
	        valoresVetorPares[indice_min] = troca
	     }
	      para (i = 0; i < qtdDeLinhaDovetor - 1; i++) {
	        indice_min = i
	        para (j = i + 1; j < qtdDeLinhaDovetor; j++) {
	            se (valoresvetorImpares[j] < valoresvetorImpares[indice_min]) {
	                indice_min = j
	            }
	            
	        }
	
	        // Trocar o elemento atual com o menor elemento encontrado
	        troca = valoresvetorImpares[i]
	        valoresvetorImpares[i] = valoresvetorImpares[indice_min]
	        valoresvetorImpares[indice_min] = troca
	     }
		//exibição dos valores da Matriz
		escreva("A matriz[",LINHA_DA_MATRIZ,"][", COLUNA_DA_MATRIZ,"]\n")
		para(linhaDaMatriz = 0; linhaDaMatriz<LINHA_DA_MATRIZ; linhaDaMatriz++){
			para(colunaDaMatriz=0; colunaDaMatriz<COLUNA_DA_MATRIZ; colunaDaMatriz++){
				escreva(matrizImparPar[linhaDaMatriz][colunaDaMatriz], " ")
			}
			escreva("\n")
		}

		//exibição dos valores impares e pares
		escreva("\nOs seus valores impares e pares, respectivamente, são:\n")
		para(inteiro linha = 0; linha<qtdDeLinhaDovetor; linha++){
			   se(valoresvetorImpares[linha]!=0){
			   	escreva(valoresvetorImpares[linha], "\t")
			   }	
		}
		escreva("\n")
		para(inteiro linha = 0; linha<qtdDeLinhaDovetor; linha++){
			   se(valoresVetorPares[linha]!=0){
			   	escreva(valoresVetorPares[linha], "\t")
			   }
		}	   
	}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3330; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */