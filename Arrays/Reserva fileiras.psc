funcao MostrarFila()
 var c: inteiro 
 para c de 1 ate 10 faca
  se (B[c] = " ") entao 
    escreva("[ B", c, "]")
  senao 
    escreva("[---]")
  fimse
 fimpara
 escreval("")
 escreval("-----------------------------------------------")
FimFuncao 

Algoritmo "reserva espaços no cinema"
   Var B, r: caractere
   var cadeira : inteiro
   vetor B[11]
   
Inicio
 para cadeira de 1 ate 10 faca
   B[cadeira] <- " "
 fimpara

 repita
   MostrarFila()
   escreva("Reservar a cadeira B ")
   leia(cadeira)

   Se (B[cadeira] = " ") entao
      B[cadeira] <- "X"
      escreval("Cadeira B", cadeira, "foi RESERVADA")
   Senao
      escreval("ERRO, essa cadeira já está OCUPADA")
   FimSe 

   escreval("Deseja continuar reservando? [S/N]")
   leia(r)
 ate(r = "n")
FimAlgoritmo
