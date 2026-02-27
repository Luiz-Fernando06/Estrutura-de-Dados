Algoritmo "Corrigindo provas"
    var i, c, nota: inteiro 
    var soma_nota, media_turma: real
    var gabarito, alunos, resposta: caractere
    vetor alunos[4]
    vetor gabarito[6]
    vetor resposta[6]
    vetor media[4]
    vetor nota[4]
    
    
   
Inicio
 //Gabarito 
 soma_nota <- 0
 Escreval("Digite o gabarito das questões:" )
 para c de 1 ate 5 faca 
   Escreva("Questao",c,"-")
   leia(gabarito[c])
 fimpara

 escreval("----------------------------")

 //Alunos 
 para i de 1 ate 3 faca 
    nota[i] <- 0
    Escreva("Aluno: ")
    leia(alunos[i])

  //Resposta dos alunos
  para c de 1 ate 5 faca
      Escreva("Resposta",c,"-")
      leia(resposta[c])

      //Verificando gabarito
      Se (resposta[c] = gabarito[c]) entao
         nota[i] <- nota[i] + 2
      FimSe 
  fimpara
    soma_nota <- soma_nota + nota[i]
    escreval("----------------------")
 fimpara 

 // Média da turma
 media_turma <- soma_nota / 3

 //Resultados
 escreval("PROVA CORRIGIDA")
 escreval("----------------------")

 para i de 1 ate 3 faca
    escreval(alunos[i],"— NOTA:", nota[i])
 fimpara
 Escreval("Média da turma:", media_turma) 
FimAlgoritmo
