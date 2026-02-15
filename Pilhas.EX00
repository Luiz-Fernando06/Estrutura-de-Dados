//Exercício 1 — Empilhar e desempilhar
//Crie um algoritmo que:
//Empilhe os valores 10, 20 e 30 em uma pilha
//Desempilhe um elemento
//Mostre o conteúdo final da pilha

//----------------------------------------------

//Empilhar
Funcao PUSH(valor) //Considere essa função como procedimento 

//Aqui verifico se meu topo é igual ao meu tamanho máximo da pilha(9=9), se for irá me retorna pilha cheia:
 Se (topo = max - 1) entao
    escreval("Pilha cheia")

 Senao 
   //Agora se minha pilha não estiver cheia, irei adicionar um elemento nessa pilha, onde esse elemento irá ocupar um índice, começando do 0 até seu valor Max que nesse caso é 9, e irá ocupar um índice por vez:
   topo <- topo + 1 //Deixando de ser uma lista vazia e começando a aumentar a pilha apartir do índice 0

   pilha[topo] <- valor //Recebendo o valor através do índice do topo, onde a cada valor novo adicionado vira seu novo topo
 FimSe 
Fimfuncao 

//Desempilhar 
funcao retorne <- POP()
var retorne : inteiro
 //Verificando se a pilha está vazia 
 Se (topo = -1) entao 
   escreval("Pilha vazia")
   retorne <- -1
 Senao 
   //Aqui estou aplicando o comportamento LIFO "último a entrar e primeiro a sair", ou seja o primeiro elemento que entrou no último índice que foi adicionado ele será o primeiro a sair, onde eu removo esse elemento removendo seu índice:
   retorne <- pilha[topo] //Desempilhando o elemento antigo 
   topo <- topo - 1
 FimSe 
fimfuncao 
   
Algoritmo "Empilhar e desempilhar"
var max, pilha, topo, i : inteiro

Inicio
//Considere máximo como constante 
Max <- 10 //Tamanho máximo da pilha
vetor pilha[max]

//Considere o topo como o índice da pilha, pois o topo muda a cada elemento que é adicionando na pilha.
//Definimos -1 como padrão para lista vazia, pois o 0 já consta como o primeiro índice.
topo <- -1 //lista vazia.

//--------------------------------------------
//Adicionando valores na pilha
PUSH (10)
PUSH (20)
PUSH (30)

//--------------------------------------------
//Retirando valores da pilha 
POP()

//--------------------------------------------
//Amostrando a pilha
para i de 0 ate topo faca
   escreva("{",pilha[i],"}")
fimpara

FimAlgoritmo
