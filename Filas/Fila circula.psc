funcao ENQUEUE(valor)
//Se a fila estiver cheia
Se ((fim + 1) mod Max = inic) entao 
   escreval("Erro: FILA CHEIA!!!")
//Senao estiver cheia adicione valor a minha fila
Senao   
   Se (inic = -1) entao 
      inic <- 0
   FimSe   
   fim <- (fim + 1) mod Max 
   fila[fim] <- valor
FimSe 

fimfuncao 

//-------------------------
funcao retorne <- DEQUEUE()
 var retorne: inteiro 
//Se a fila estiver vazia
Se (inic = -1) entao 
   escreval("Erro: FILA VAZIA!!!")
//Senão estiver retorne ao início e retire ele
Senao 
   retorne <- fila[inic]
   Se (inic = fim) entao 
      inic <- -1
      fim <- -1
   Senao 
      inic <- (inic + 1) mod Max 
   FimSe 
FimSe 
fimfuncao 

//-------------------------
funcao retorne <- Head()
 var retorne: inteiro 
Se (inic = -1) entao 
   escreval("Erro: FILA VAZIA!!!")
//Se não estiver vazia retorne o começo 
Senao 
   retorne <- fila[inic]
FimSe 
fimfuncao 

//-------------------------
Algoritmo "Filas Circular"
var inic, fim, Max, fila, i  : inteiro 

Inicio
Max <- 5
inic <- -1
fim <- -1
vetor fila[Max]

//-------------------|
//PROGRAMA PRINCIPAL |
//-------------------|
ENQUEUE(10)
ENQUEUE(20) 
ENQUEUE(30) //Novo começo da fila
ENQUEUE(40)
ENQUEUE(50) // Fim da fila 
DEQUEUE() //Retirando o primeiro elemento (10)

//Aqui eu realizo a volta, como eu retirei o primeiro elemento da fila então a fila não está mais cheia isso significa que o índice 0 onde estava o elemento 10 está desocupado, então enfileiro o novo elemento no índice 0 que está desocupado, assim eu reutilizo seu espaço na memória do vetor, e ele segue a fila certinho onde o computador irá tratar ele mesmo estando no índice 0 como o último elemento a chegar e quem está no índice 1 o começo da fila assim adiante 

ENQUEUE(60) 
DEQUEUE()
ENQUEUE(70) //Novo fim da fila

escreval("Início da fila: ", Head()) //30
escreval("Fim da fila: ", fila[fim]) //70

escreval("Elementos que estão na Fila: ")
Se (inic <> -1) entao
   i <- inic
   Enquanto (i <> fim) faca
      escreva("[", fila[i], "]")
      i <- (i + 1) mod Max
   FimEnquanto
   escreva("[", fila[fim], "]")
FimSe

FimAlgoritmo