Algoritmo "semnome"

Var

   m,soma: vetor[0..6,0..6] de inteiro
   maiorL, maiorC: vetor[0..6] de inteiro
   media:vetor[0..6] de real
   i,j,menor,num,linha,coluna:inteiro
   mult : real
Inicio

   escreval("Digite os valores da matriz M:")
   para i de 0 ate 4 faca
      para j de 0 ate 6 faca
         leia(m[i,j])
         soma[i,j] <- m[i,j]
      fimpara
   fimpara

   limpatela

   escreval("=== MATRIZ DIGITADA ===")
   para i de 0 ate 4 faca
      para j de 0 ate 6 faca
         escreva(m[i,j])
      fimpara
      escreval()
   fimpara

   escreval()

   // LETRA A


   para i de 0 ate 4 faca
      para j de 0 ate 6 faca
         se m[i,j] > maiorL[i] entao
            maiorL[i] <- m[i,j]
         fimse
      fimpara
   fimpara

   escreval()

   escreval("=== OS MAIORES VALORES DE CADA LINHA ===")
   para i de 0 ate 4 faca
      escreva(maiorL[i])
   fimpara
   escreval()

   // FIM LETRA A

   // LETRA B


   para i de 0 ate 6 faca
      para j de 0 ate 4 faca
         se m[j,i] > maiorC[i] entao
            maiorC[i] <- m[j,i]
         fimse
      fimpara
   fimpara

   escreval()

   escreval("=== OS MAIORES VALORES DE CADA COLUNA ===")
   para i de 0 ate 6 faca
      escreva(maiorC[i])
   fimpara
   escreval()
   escreval()

   // FIM LETRA B

   // LETRA C

   para i de 0 ate 6 faca
      para j de 0 ate 6 faca
         media[i] <- m[j,i] + media[i]
      fimpara
   fimpara

   escreval("=== A MÉDIA DE CADA COLUNA ===")
   escreval()

   para i de 0 ate 6 faca
      escreval(i+1,"° MÉDIA: ", int(media[i] / 5))
   fimpara
   escreval()
   // FIM LETRA C

   // LETRA D
   escreval("=== PRODUTO DE TODOS OS ELEMENTOS DA MATRIZ ===")
   escreval()
   mult <- 1
   para i de 0 ate 4 faca
      para j de 0 ate 6 faca
         se m[i,j] <> 0 entao
            mult <- m[i,j] * mult
         fimse
      fimpara
   fimpara

   escreva(mult)
   escreval()

   // FIM LETRA D

   // LETRA E

   para i de 0 ate 4 faca
      para j de 0 ate 6 faca
         se m[i,j] < 0 entao
            menor <- menor + 1
         fimse
      fimpara
   fimpara

   escreval()
   escreval("=== QUANTIDADE DE NÚMEROS NEGATIVOS ===")
   escreval()
   escreva(menor)
   escreval()
   
   // FIM LETRA E
   
   // LETRA F
      escreval("=== POSIÇÃO OCUPADA ===")
      escreval()
      escreval("Digite um valor da Matriz:")
      leia(num)
      escreval()
      
      escreval("A(s) posição(ões) em que o valor se repete(m) é(são): ")
      
     para i de 0 ate 4 faca
          para j de 0 ate 6 faca
             se num = m[i,j] entao
             escreval(i,j)
             fimse
          fimpara
     fimpara
   // FIM LETRA F
   
   
Fimalgoritmo