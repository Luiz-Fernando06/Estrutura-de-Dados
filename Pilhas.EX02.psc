//Exercício 4 — Desfazer ações (Undo)
//Crie um algoritmo que:
//Armazene 3 ações em uma pilha
//Simule a operação desfazer, removendo a última ação
//Mostre qual ação foi desfeita

funcao acao(valor)
 Se (topo = Max - 1) entao 
   escreval("Pilha cheia")
 Senao 
   topo <- topo + 1
   pilha[topo] <- valor
 FimSe 
fimfuncao 

funcao retorne <- desfazer()
 Se (topo = -1) entao 
   escreval("Pilha vazia")
   retorne <- " "
 Senao 
  retorne <- pilha[topo]
   topo <- topo - 1
 FimSe 
fimfuncao 

Algoritmo "Undo"
var pilha : caractere
var topo, i, Max : inteiro

Inicio
topo <- -1
Max <- 3
vetor pilha[Max]

acao("&")
acao("c")
acao("$")

escreval("Ações:")
para i de 0 ate topo faca
   escreval("[",pilha[i],"]")
fimpara 

Escreval("Desfazer ação:", desfazer())
FimAlgoritmo