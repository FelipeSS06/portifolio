programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti

	cadeia alfabeto[26] = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
	
	inteiro chave = 0

	cadeia frase
	
	funcao inicio()
	{
		escreva("Qual a frase a ser criptografada? ")
		leia(frase)

		escreva("Qual a chave desejada?")
		leia(chave)

		
	}

	funcao vazio criptografar(cadeia frase, inteiro chave){
		
		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i < numeroLetras; i++){
			
			caracter letra = t.obter_caracter(frase, i)
			cadeia letraConvertida = ti.caracter_para_cadeia(letra)
			
			//em qual posicao do alfabeto está essa letra?
			para(inteiro j=0; j < 26; j++){

				se(letraConvertida == alfabeto[j]){
					//escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

					inteiro posicaoCriptografada = j + chave

					//garantir que se a posicao passar do Z, volte para o inicio do alfabeto
					posicaoCriptografada = posicaoCriptografada % 26 
					
					escreva(alfabeto[posicaoCriptografada])
					pare
				}
			}
		}
		
		
	}

	cadeia alfabetoInvertido[26] = {"z","y","x","w","v","u","t","s","r","q","p","o","n","m","l","k","j","i","h","g","f","e","d","c","b","a"} 
	
	inteiro chave = 0

	cadeia frase
	
        funcao descriptografar(){

	
			escreva("qual a frase a ser descriptografada? ")
		leia(frase)

		escreva("Qual a cahve desejada?")
		leia(chave)

		inteiro numeroLetras = t.numero_caracteres(frase)

		escreva("a frase tem ", numeroLetras, " letras. \n")

		para(inteiro i=0; i< numeroLetras; i++){
			
			
			cadeia letraConvertida = ti.caracter_para_cadeia(t.obter_caracter(frase, i)) 
			
                
                   
               u.aguarde(1000)

               para(inteiro j=0; j < 26; j++){

                  se(letraConvertida == alfabetoInvertido[j]){
                       //escreva("a letra ", letraConvertida, " está na posicao ", j, "\n")

                       inteiro posicaoCriptografada = j + chave

                       escreva(alfabetoInvertido[posicaoCriptografada])
                        pare 
     	
                  }
                }
              }

              
	}
