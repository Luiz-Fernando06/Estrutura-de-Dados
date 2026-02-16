//2) Um palíndromo é uma palavra, frase ou número pode ser lido de forma igual em ambos os sentidos: da direita para a esquerda e da esquerda para a direita. Ex.: arara, 2002, "anotaram a data da maratona". Crie um programa em C que verifica se uma palavra, frase ou número é um palíndromo.

//-------------------+-----------------------

funcao PUSH(valor)
 Se (topo = Max - 1) entao
   escreval("Pilha cheia")
 Senao
   topo <- topo + 1
   pilha[topo] <- valor
 FimSe
fimfuncao

//--------------------------------

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

//--------------------------------

Algoritmo "palindromo"

var letra, pilha, invertida, palavra: caractere
var topo, Max, i, tam : inteiro
var ehPalindromo : logico
vetor palavra[20]
vetor invertida[20]
vetor pilha[20]

Inicio
topo <- -1
Max <- 20
tam <- 0
ehPalindromo <- verdadeiro

escreval("Digite a palavra (ENTER para finalizar):")

leia(letra)
Enquanto (letra <> "") faca
   palavra[tam] <- letra
   PUSH(letra)
   tam <- tam + 1
   leia(letra)
FimEnquanto

i <- 0
Enquanto (topo <> -1) faca
   invertida[i] <- pop()
   i <- i + 1
FimEnquanto

para i de 0 ate tam - 1 faca
   Se (palavra[i] <> invertida[i]) entao
      ehPalindromo <- falso
   FimSe
fimpara

Se (ehPalindromo = verdadeiro) entao
   escreval("É palíndromo")
Senao
   escreval("Não é palíndromo")
FimSe

FimAlgoritmo