//4) Dada a seguinte sequência de push em uma pilha, crie um programa em C que elimine o maior e o menor número.

//---------------------------------------------

//Empilhando um valor
funcao PUSH(valor)
   Se (topo = Max - 1) entao 
      escreval("Pilha cheia")
   Senao 
      topo <- topo + 1
      pilha[topo] <- valor
   FimSe 
fimfuncao 

//Desempilhando um valor
funcao retorne <- pop()
 var retorne : inteiro 
   Se (topo = -1) entao 
      escreval("Pilha Vazia")
   Senao 
      retorne <- pilha[topo] 
      topo <- topo - 1
   FimSe 
fimfuncao 

Algoritmo "eliminar maior e menor"
var topo, pilha, Max, maior, num, num2, i, menor, topoAux, aux, receba, i : inteiro

Inicio
topo <- -1
topoAux <- -1
Max <- 5 //Tamanho da pilha
i <- 0
vetor pilha[Max] //pilha principal 
vetor aux[Max] //pilha auxiliar 

escreval("Digite os elementos: ")
//Dando entrada a um elemento
leia(num)

//Colocando o elemento digitado na pilha
PUSH(num)

//Pegando o maior e o menor valor apartir dos primeiros números digitados 
maior <- num
menor <- num

Enquanto (i <= Max - 2) faca 
   leia(num) 
   PUSH(num)
   //Pegando o maior valor
   Se (num > maior) entao
      maior <- num
   FimSe 
   //Pegando o menor valor
   Se (num < menor) entao 
      menor <- num
   FimSe 
   //Auto incremento 
   i <- i + 1 
FimEnquanto 

//Exibindo a pilha original com todos os valores
escreval("Pilha original:")
para i de 0 ate topo faca
   escreva("[",pilha[i],"]")
fimpara 
escreval(" ")

//Enquanto topo for diferente de vazio desempilhar os elementos 
Enquanto (topo <> -1) faca
   num2 <- pop()
   
   //Verificando se os elementos desempilhandos são diferentes do maior e menor valor, se forem iremos adicionar os elementos a minha nova pilha 
   Se (num2 <> menor) e (num2 <> maior) entao 
      topoAux <- topoAux + 1
      Aux[topoAux] <- num2
   FimSe 
FimEnquanto 

//Ordenando vetores em ordem crescente
para i de 0 ate topoAux - 1 faca
 para j de i+1 ate topoAux faca 
   Se (aux[i] > aux[j]) entao 
      receba <- aux[i]
      aux[i] <- aux[j]
      aux[j] <- receba
   FimSe 
 fimpara
fimpara 

//Exibindo a pilha nova que não contém o maior e o menor valor
escreval("Pilha sem o maior e o menor valor ordenada:")
para i de 0 ate topoAux faca
   escreva("[",aux[i],"]")
fimpara 
escreval(" ")

//exibindo o maior e o menor valor
escreval("Maior valor eliminado: ", maior)
escreval("Menor valor eliminado: ", menor)

FimAlgoritmo