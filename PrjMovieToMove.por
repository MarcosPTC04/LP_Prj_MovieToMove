programa
{
	funcao listarKartD(inteiro j, inteiro u[], real d[], inteiro t[], inteiro q[], inteiro c, inteiro k)
	{ 
		escreva("\nSegue a lista de Kart disponiveis: ")
	    
	     para (j=0; j < 15; j ++)
	     { 		
	     	se(q[j] == 0)
	     	{		
	          	c = u[j]	
	         		se(c > 0)
	         		{		
	            		escreva(" \n",c)
	            	}
	          }
	     }
	     
		     escreva("\nSelecione o kart que deseja verificar os detalhes: \n ")
		     leia(k)
		     
		para (j=0; j < 15; j ++)
		{
	          se(u[j] == k)
	          { 			
				escreva("\nO kart selecionado foi: ", k, "\n")
			     escreva("O valor diario de locacao do kart: ", d[j], "\n")
			     escreva("O kart ja foi locado ", t[j], " vezes\n")
		      				
		       	se(q[j] == 0)
		       	{				
		          	escreva("O kart esta DISPONIVEL para locacao.")			
		       	}
		       	senao
		       	{	  			
		        		escreva("O kart NAO esta disponivel para locacao")				 
		        	}
		    	}	            	            
		}
	}

     funcao listarKart(inteiro j, inteiro u[], inteiro q[], inteiro l)
     { 
		escreva("A lista de karts locados: \n")
			
	     para (j=0; j < 15; j ++)
	     {
			se(q[j] == 1)
			{
	          	l = u[j]
	          	se (u[j] != 0)
	          	{	
	          		escreva(l, "\n")	
	          	}
	          }         
	     }  
     }

     funcao alugarKart(inteiro j, inteiro u[], inteiro &t[], inteiro &q[], inteiro l, inteiro k)
     {    	
		escreva("\nA lista de karts disponiveis e: ")
		
		para(j=0; j < 15; j ++)
		{
			se(q[j] == 0)
			{
		     	l = u[j]
		     	se (u[j] != 0)
		     	{	
	          		escreva("\n",l)			
	          	}		     
		     }
		}
			escreva("\n\nSelecione o Kart que deseja locar: \n")
			leia(k)
			
		para (j=0; j < 15; j ++)
		{	
	     	se(u[j] == k)
	     	{
				q[j] = 1
				t[j] = t[j] + 1	
	          }
		}	
     }

     funcao devolverKart(inteiro j, inteiro u[], inteiro q[], inteiro lD, inteiro k)
     { 	      	
		escreva("\nA lista de karts locados e: ")
		para (j=0; j < 15; j ++)
		{	
			se(q[j] == 1)
			{
		     	lD = u[j]
		         	escreva("\n",lD)		
		     }
		}
		     escreva("\n\nSelecione o Kart que deseja devolver: ")
		     leia(k)
		para (j=0; j < 15; j ++)
		{	
	           se(u[j] == k)
	           {	
			 	q[j] = 0
				escreva("O kart ", k, " foi devolvido!")
	           }
	     }	
     }

     funcao kartMais(inteiro j, inteiro u[], real d[], inteiro t[], inteiro mG)
     { 		
        	para(j = 0; j < 15; j++)
        	{	
        		se (t[j] > mG)
        		{
        			mG = t[j]
        		}	
        	}
        	para (j=0; j < 15; j ++)
        	{ 		
	     	se(t[j] == mG)
	     	{			            			
				escreva("\nO kart mais locado foi: ", u[j], "\n")
	      		escreva("O valor diario de locacao do kart: ", d[j], "\n")
	      		escreva("O kart ja foi locado ", t[j], " vezes\n")			
	          }
		} 
     }

     funcao receitaLucro(inteiro j, real d[], inteiro t[], inteiro q[], real l, real lR, real &lT, real &lC)
     { 
     	para(j = 0; j<15; j++)
     	{
			se(q[j] == 1)
			{
				l = (d[j] * t[j])
				lR = l + lR			
			}
          }
		lT = lR/100 * 30
          lT = lT + lC
		escreva("\nO lucro esperado para o dia é: ", lT, "\n") 
		lR = 0.0
		l = 0.0	
     }

     funcao locarCircuito(real Vc, real &lC)
     { 
		escreva("\nO valor de locacao de Circuito é de R$100,00")
		escreva("\nDeseja já locar o seu circuito? Digite 1 para sim ou qualquer valor para não. \n")
		leia(Vc)
		
		se(Vc == 1)
		{
			escreva("Parabens você acaba de locar o seu circuito, Aproveite!")
			lC = lC + 70				
		}
		senao
		{
			escreva("Você sera direcionado ao menu principal \n")	
		}
     	
     }

     
     funcao atualizarDia(inteiro j, real lC, inteiro u[], inteiro q[], inteiro lK, inteiro mI)
     {
		lC = 0.0
		para (j=0; j < 15; j ++)
		{	
			se(q[j] == 1)
			{
	          	lK = u[j]
	          	se (u[j] != 0)
	          	{	
	          		escreva("\n E ai vamos pagar?? Segue os kart com aluguel pendente: ", lK, "\n")				
	          	}
			}		
		}		
          escreva("\n!!!Dia atualizado!!!\n")                                  	
     }
   
	funcao inicio() 
     {
	     inteiro menu = 0, kart = 0, menuInicial = 0
	     inteiro armazena1[15], armazena3[15], armazena4[15], consultaKart = 0
	     inteiro i = 0, j = -1
	     inteiro listarkart = 0, listardisponivel = 0, maiorganho = 0
	     real armazena2[15], lucro = 0.0, lucroR = 0.0, Valorcir = 0.0, valorloc = 0.0, lucroC = 0.0, lucroT = 0.0, armazenaLucro = 0.0
     
    		escreva("!!!Bem vindo a AKARACA LOCACOES!!!\n") 
    		escreva("!!! Karts e circuitos - Diversao Garantida!!!\n")

      	//laço de repetição para o menu
		enquanto (menuInicial == 0) 
		{
			// Mensagem de inicio
   			escreva("\n\n Digite o numero correspondente ao menu para prosseguirmos.\n")
    			escreva("\n 1.Cadastramento de Karts \n 2.Lista de Karts disponiveis \n 3.Karts locados \n 4.Alugue seu Kart \n 5.Devolução de Karts \n 6.Kart mais lucrativo \n 7.Lucro diario \n 8.Locar Circuito \n 9.Atualizar data \n 10. Finalizar o Programa \n")
   			leia(menu)

			//1.Cadastramento de Karts
			se(menu == 1)
      		{
      			j++	
		        	escreva("\nDigite o numero do Kart que deseja cadastrar: \n") //para (i=0; i < 4; i ++){    //para(j=0; j < 4; j++)
		        	leia(kart)
		        	armazena1[j] = kart
		        	escreva("\nQual valor de locacao? \n")
		        	leia(valorloc)
		        	armazena2[j] = valorloc 
		        	
		          se(j > -1)
		          {
		               armazena3[j] = 0 //vezes locados
		          }
		          se(j > -1)
		          {
		              	armazena4[j] = 0 //disponivel para locacao
		          }	
			}
			//2.Lista de Karts disponiveis
     		se(menu == 2)
     		{
				listarKartD(j, armazena1, armazena2, armazena3, armazena4, consultaKart, kart)	        				            			            	            	            	    
	    		}
	    		
	    		//3.Karts locados 
      		se(menu == 3)
      		{
				listarKart(j, armazena1, armazena4, listarkart) 
      		}
      		
      		//4.Alugue seu Kart
      		se(menu == 4)
      		{
        			alugarKart(j, armazena1, armazena3, armazena4, listardisponivel, kart)				                    
      		}

      		//5.Devoluções de Karts
		     se(menu == 5)
		     {
				devolverKart(j, armazena1, armazena4, listardisponivel, kart)		        	                 
		     }

		     //6.Kart mais lucrativo
      		se(menu == 6)
      		{
				kartMais(j, armazena1, armazena2, armazena3, maiorganho)	          		            
      		}

      		//7.Lucro diario
               se(menu == 7)
               {
               	receitaLucro(j, armazena2, armazena3, armazena4, lucro, lucroR, lucroT, lucroC)	       
               }

               //8.Locar Circuito
               se (menu == 8)
               {
               	locarCircuito(Valorcir, lucroC)		                 
               }

               //9.Atualizar data 
               se (menu == 9)
               {
               	atualizarDia(j, lucroC, armazena1, armazena4, listarkart, menuInicial)	
               }

               //10.Finalizar o Programa
               se(menu == 10)
               {              
               	escreva("Programa Finalizado")
              		menuInicial = 1 
               }
               se(menu < 1 ou menu >= 11)
               {
               	escreva("Digite um numero valido: \n")  
               }                                 
		}                                          
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {armazena1, 186, 14, 9}-{armazena3, 186, 29, 9}-{armazena4, 186, 44, 9}-{armazena2, 189, 11, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */