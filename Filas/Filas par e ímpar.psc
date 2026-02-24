//2) Implemente um programa em pseudocodigo que manipule 3 filas de números inteiros. A primeira, chamada de f , deve conter os números de 1 até 15. A segunda, chamada de f_par , está inicialmente vazia, assim como a terceira, chamada de f_impar . O programa deve transferir os números pares de f para a fila f_par e os números ímpares de f para a fila f_impar.

//-----------------------------------
//Fila principal que irá conter os números de 1 á 15
//------------------------------------
funcao ENQUEUE(valor)
   Se (fim = Max - 1) entao 
      escreval("Fila Cheia")
   Senao     
      fim <- fim + 1
      f[fim] <- valor 
   FimSe 
fimfuncao 

//-----------------
//Fila para os valores pares
//-----------------
funcao ENQUEUE_Par(valor)
   Se (fim_1 = Max - 1) entao 
      escreval("Fila Cheia")
   Senao     
      fim_1 <- fim_1 + 1
      f_par[fim_1] <- valor 
   Fimse 
fimfuncao 

//-----------------
//Fila para valores ímpares 
//-----------------
funcao ENQUEUE_impar(valor)
   Se (fim_2 = Max - 1) entao 
      escreval("Fila Cheia")
   Senao     
      fim_2 <- fim_2 + 1
      f_impar[fim_2] <- valor 
   FimSe 
fimfuncao 

//------------------
//Remoção de elementos da fila
//-------------------
funcao retorne <- DEQUEUE()
 var retorne : inteiro 

Se (inic>fim) entao 
   escreval("Fila Vazia")
Senao 
   retorne <- f[inic]
   inic <- inic + 1 
FimSe 

fimfuncao 
//--------------------

Algoritmo "Filas par e ímpar"
 var f, f_par, f_impar, Max, inic, fim, fim_1, fim_2, valor, i: inteiro

Inicio
//----------------------
//DECLARAÇÃO DE VARIÁVEL 
//----------------------
Max <- 15 //constante 
inic <- 0
fim <- -1
fim_1 <- -1
fim_2 <- -1
vetor f[Max]
vetor f_par[Max]
vetor f_impar[Max]

//---------------------
//PROGRAMA PRINCIPAL 
//---------------------

//Adicionando os Valores de 1 até 15
para i de 1 ate Max faca 
   ENQUEUE(i)
fimpara

//EXIBINDO Valores:
escreval("Fila de 1 até 15:")
para i de inic ate fim faca
   escreva("[",f[i],"]")
fimpara 
escreval("")

//Adicionando os valores que são par na fila dos pares e os valores impar na fila dos ímpares 
enquanto (inic <= fim) faca 
   valor <- DEQUEUE()
   se (valor % 2 = 0) entao 
     ENQUEUE_Par(valor)
   senao 
     ENQUEUE_impar(valor)
   FimSe 
FimEnquanto 

//EXIBINDO Pares
escreval("Par:")
para i de 0 ate fim_1 faca
   escreva("[",f_par[i],"]")
fimpara 
escreval("")

//EXIBINDO Ímpares 
escreval("Ímpar:")
para i de 0 ate fim_2 faca
   escreva("[",f_impar[i],"]")
fimpara 

FimAlgoritmo