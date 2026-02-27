
Algoritmo "Torneio de futebol"
   var i, c, j: inteiro 
   Var time : caractere 
   Vetor time[6]  
    
Inicio
 para i de 1 ate 3 faca
   escreva("Time", i,":")
   leia(time[i])
 fimpara
 escreval("LISTAGEM DOS JOGOS:")
 
 para c de 1 ate 3 faca
  para j de 1 ate 3 faca
    se (time[c]<>time[j]) entao 
     escreval(time[c], " X ", time[j])
    fimse
  fimpara
 fimpara 
FimAlgoritmo
