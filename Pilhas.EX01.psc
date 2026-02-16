//Exercício 2 — Verificar o topo
//Faça um algoritmo que:
//Empilhe dois números digitados pelo usuário
//Mostre qual é o elemento do topo da pilha
//Não remova esse elemento

//----------------------------------------------

funcao retorne <- top()
var retorne : caracter 
 se (topo = -1) entao 
   //retorne vazio se topo for -1
   escreval("Erro: Pilha vazia")
 senao 
   //retorne o topo se a pilha não for vazia 
   retorne <- pilha[topo]
 fimse
fimfuncao 

Algoritmo "Verificar topo"
var topo, Max, i : inteiro
var pilha : caracter 

Inicio
//Tamanho fixo da minha pilha
Max <- 3

//Começamos com -1 para indicar pilha vazia 
topo <- -1

//Criando a pilha
vetor pilha[Max]

//Empilhando sem procedimento/função(PUSH)
topo <- topo + 1
pilha[topo] <- "@" //índice: 0

topo <- topo + 1 
pilha[topo] <- "$" //índice: 1

topo <- topo + 1
pilha[topo] <- "#" //índice: 2

//Topo da pilha
escreval("Topo da Pilha:",top())


//exibindo valores
escreval("Elementos da pilha:")
para i de 0 ate topo faca
   escreva("[",pilha[i],"]")
fimpara

FimAlgoritmo