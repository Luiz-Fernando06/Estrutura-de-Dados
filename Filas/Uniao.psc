//3) Implemente um programa em C que manipule 2 filas de char . A primeira, chamada de f1 , deve conter os caracteres A , C , E , G , I , K , M , O , Q , S , U , W e Y . A segunda, chamada de f2 , deve conter os caracteres B , D , F , H , J , L , N , P , R , T , V , X e Z . O programa deve exibir o alfabeto na ordem de A até Z .

//-----------------------------

funcao ENQUEUE(valor)
Se (fim = Max - 1) entao 
   escreval("Fila Cheia")
Senao 
   fim <- fim + 1
   f1[fim] <- valor
FimSe 
fimfuncao 

//-----------------------------

funcao retorne <- DEQUEUE()
 var retorne : inteiro 
Se (inic > fim) entao 
   escreval("Fila Vazia")
Senao 
   retorne <- f1[inic]
   inic <- inic + 1 
FimSe 
fimfuncao 

//-----------------------------

funcao ENQUEUE_2(valor)
Se (fim2 = Max_2 - 1) entao 
   escreval("Fila Cheia")
Senao 
   fim2 <- fim2 + 1
   f2[fim2] <- valor
FimSe 
fimfuncao 

//-----------------------------

funcao retorne <- DEQUEUE_2()
 var retorne : inteiro 
Se (inic2 > fim2) entao 
   escreval("Fila Vazia")
Senao 
   retorne <- f2[inic2]
   inic2 <- inic2 + 1 
FimSe 
fimfuncao 

//-----------------------------

funcao ENQUEUE_3(valor)
Se (fim3 = Max_3 - 1) entao 
   escreval("Fila Cheia")
Senao 
   fim3 <- fim3 + 1
   f3[fim3] <- valor
FimSe 
fimfuncao 

//-----------------------------

Algoritmo "União"
    Var inic, inic2, fim, fim2, fim3, Max, Max_2, Max_3, i: Inteiro
    Var f1, f2, f3, fila_alfabeto : Caractere

Inicio

Max <- 13
Max_2 <- 13
Max_3 <- 26
inic <- 0
inic2 <- 0
fim <- -1
fim2 <- -1
fim3 <- -1
vetor f1[Max]
vetor f2[Max_2]
vetor f3[Max_3]

//----------------------------

//Fila 1

ENQUEUE("A")
ENQUEUE("C")
ENQUEUE("E")
ENQUEUE("G")
ENQUEUE("I")
ENQUEUE("K")
ENQUEUE("M")
ENQUEUE("O")
ENQUEUE("Q")
ENQUEUE("S")
ENQUEUE("U")
ENQUEUE("W")
ENQUEUE("Y")

//Fila 2

ENQUEUE_2("B")
ENQUEUE_2("D")
ENQUEUE_2("F")
ENQUEUE_2("H")
ENQUEUE_2("J")
ENQUEUE_2("L")
ENQUEUE_2("N")
ENQUEUE_2("P")
ENQUEUE_2("R")
ENQUEUE_2("T")
ENQUEUE_2("V")
ENQUEUE_2("X")
ENQUEUE_2("Z")

//União 
Enquanto (inic <= fim) faca
   fila_alfabeto <- DEQUEUE()
   ENQUEUE_3(fila_alfabeto)

   fila_alfabeto <- DEQUEUE_2()
   ENQUEUE_3(fila_alfabeto)
FimEnquanto 

para i de 0 ate fim3 faca
   escreva(f3[i]," ")
fimpara 

FimAlgoritmo