//Menor elemento = Maior prioridade 

funcao ENQUEUE(valor)
//Se meu tamanho de elemento for igual meu máximo de elemento (5=5) entao a fila está cheia 
   Se (tamanho = Max) entao 
      escreval("Fila Cheia")
   Senao 
      i <- tamanho - 1 //Aponta o último elemento válido

//Enquanto ainda houver elementos na fila e eles forem maiores que meu novo valor inserido, então empurre esses elementos maiores para direita e abra espaço para o menor valor entrar na frente
      Enquanto (i >= 0) e (fila[i] > valor) faca

         fila[i+1] <- fila[i] //Empurrando o maior valor para direita

         i <- i - 1 //Abre espaço para o menor valor

      FimEnquanto 

      fila[i + 1] <- valor // Insererindo o valor na posição correta
      tamanho <- tamanho + 1 //Adicionando elemento 
   FimSe 
fimfuncao 

funcao retorne <- dequeue()
 var retorne : inteiro
   Se (tamanho = 0) entao 
      escreval("Fila Vazia")
   Senao 
      retorne <- fila[0] // O menor elemento sempre estará no índice 0
      
//Fazendo os elementos andarem para a esquerda fechando o buraco que o desenfileirar deixaria
      para i de 1 ate tamanho - 1 faca
         fila[i-1] <- fila[i]
      fimpara 

      tamanho <- tamanho - 1 //Menos um elemento 
   FimSe 
fimfuncao 


Algoritmo "filas de prioridade"
var Max, fila, tamanho, i: inteiro

Inicio
Max <- 5
tamanho <- 0 //Diz quantos elementos tem na fila e qual a próxima posição livre
vetor fila[Max]

//-----------------
//Programa Principal
//-----------------

ENQUEUE(30) // [2]
ENQUEUE(10) // [0]
ENQUEUE(40) // [3]
ENQUEUE(20) // [1]
dequeue() //Remove o 10

FimAlgoritmo