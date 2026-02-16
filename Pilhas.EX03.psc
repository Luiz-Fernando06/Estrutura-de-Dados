//Exercício 3 — Inverter uma palavra
//Elabore um algoritmo que:
//Leia uma palavra
//Use uma pilha para invertê-la
//Mostre a palavra invertida
//Exemplo:
//Entrada → CASA
//Saída → ASAC

//-------------------------------------------

funcao PUSH(valor) //considere um procedimento 

 Se (topo = Max - 1) entao 
   escreval("Pilha cheia")
 Senao 
   topo <- topo + 1
   pilha[topo] <- valor
 FimSe 

fimfuncao 

//--------+-----------

funcao retorne <- pop()
var retorne : caractere

 Se (topo = -1) entao 
   escreval("Pilha vazia")
   retorne <- " "
 Senao 
   retorne <- pilha[topo]
   topo <- topo - 1
 FimSe 

fimfuncao 

//---------+------------

Algoritmo "Inverter_Palavra_Pilha"

var letra : caractere
var  Pilha : caractere
var topo, Max : inteiro

Inicio
topo <- -1 // lista vazia
Max <- 20 //constante 
vetor Pilha[Max] 

//--------------------------
escreval("Digite uma palavra (clique em ENTER para sair) : ")

//soletre a palavra 
leia(letra)
enquanto (letra <> "") faca 
   PUSH(letra)
   leia(letra)
FimEnquanto 

escreva("Palavra invertida: ")

//saída invertida (Lifo)
Enquanto (topo <> -1) faca
   escreva(pop())
FimEnquanto 
FimAlgoritmo
