
Algoritmo "Dissecando MATRIZES"
    Var m, l, c, esc: inteiro
    vetor m[5,5]
    
Inicio 
//Entrando de dados
 para l de 1 ate 4 faca
  para c de 1 ate 4 faca
   escreva("Digite o valor para [",l,",",c,"] —")
   leia(m[l,c])
  fimpara 
 fimpara 
 escreva("")

 limpatela

//menu
 escreval("==============MENU================")
 escreval("-----------------------------------") 
 escreval(" 1 - Matriz Inteira")
 escreval(" 2 - Diagonal principal")
 escreval(" 3 - Triângulo superior")
 escreval(" 4 - Triângulo inferior")
 escreval(" 5 - Sair")
 escreval("-----------------------------------") 

//opções 
repita 
 escreva(" ")
 escreva("Digite uma escolha: ")
 leia(esc)

 escolha esc
  caso 1:
     escreval("---------------")
     escreval("MATRIZ INTEIRA")
     escreval("---------------")
     para l de 1 ate 4 faca
      para c de 1 ate 4 faca
        escreva(m[l,c], " ")
      fimpara
      escreval(" ")
     fimpara 

  caso 2:
     escreval("---------------—---")
     escreval("DIAGONAL PRINCIPAL")
     escreval("--------------—----")
     para l de 1 ate 4 faca
      para c de 1 ate 4 faca
       Se (l = c) entao
         escreva(m[l,c], " ")
       FimSe 
      fimpara 
      escreval(" ")
     fimpara
   
  caso 3:
     escreval("---------------—---")
     escreval("TRIÂNGULO SUPERIOR")
     escreval("--------------—----")
     para l de 1 ate 4 faca
      para c de 1 ate 4 faca
       Se (l < c) entao 
         escreva(m[l,c], " ")
       FimSe 
      fimpara 
      escreval(" ")
     fimpara 

  caso 4:
     escreval("---------------—---")
     escreval("TRIÂNGULO INFERIOR")
     escreval("--------------—----")
     para l de 1 ate 4 faca
      para c de 1 ate 4 faca
       Se (l > c) entao 
         escreva(m[l,c], " ")
       FimSe 
      fimpara 
      escreval(" ")
     fimpara 

  caso 5:
     escreval("Saindo....") 
 fimescolha
ate(esc = 5)
FimAlgoritmo
