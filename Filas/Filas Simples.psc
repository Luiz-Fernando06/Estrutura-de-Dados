//Verificar filas vazias
funcao retorne <- EMPTY()
 var retorne : logico 

//Verifica se meu início(0) é maior(>) que meu fim(-1), se for então a fila está vazia, senao quer dizer que a fila possui algum elemento
Se (inic > fim) entao 
   retorne <- verdadeiro 
Senao 
   retorne <- falso
FimSe 
fimfuncao 

//Enfileirar elemento 
funcao ENQUEUE(valor)

//Se meu fim for igual ao meu tamanho máximo da fila então quer dizer que a fila está cheia, senão adicione mais um elemento no fim da fila
Se (fim = Max - 1) entao 
   escreval("Fila Cheia")
Senao 
   fim <- fim + 1
   fila[fim] <- valor
FimSe 
fimfuncao 

//Desenfileirar elemento 
funcao retorne <- DEQUEUE()
 var retorne : inteiro 

//Verifica se a fila está vazia com a função EMPTY(), senão estiver retorne a variável do início(0) e avance o índice do início para 1 que reinicia o índice 
Se (EMPTY()) entao 
   escreval("Fila Vazia")
Senao 
   retorne <- fila[inic]
   inic <- inic + 1
   //Reinicia a fila se ficar vazia
    Se (inic > fim) entao
       inic <- 0
       fim <- -1
    FimSe
FimSe 
fimfuncao 

//Pegar o começo 
funcao retorne <- Head()
 var retorne : inteiro 

//Verifica se está vazia senao só retorna o começo da fila
Se (EMPTY()) entao 
   escreval("Fila Vazia")
Senao 
   retorne <- fila[inic]
FimSe 
fimfuncao 

//Tamanho total da fila
funcao retorne <- Size()
Se (EMPTY()) entao 
   escreval("Fila vazia")
   retorne <- 0
Senao 
   retorne <- fim - inic + 1
FimSe 
fimfuncao 

Algoritmo "Fila Simples"
var inic, fim, fila, max, i : inteiro 

Inicio 

inic <- 0
fim <- -1
Max <- 10
vetor fila[Max]

//------+----------
//Função principal 
//------+----------

ENQUEUE(10)
ENQUEUE(20)
DEQUEUE()
ENQUEUE(30)
DEQUEUE()
ENQUEUE(50)

escreval("Começo: ", Head())
Escreval("Fila Vazia: ", EMPTY())
escreval("Tamanho da fila: ", Size())
escreval("----------------------------")

escreva("Fila Original: ")
para i de inic ate fim faca
   escreva("[",fila[i],"]")
fimpara 

FimAlgoritmo