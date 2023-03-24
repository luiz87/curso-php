algoritmo "semnome"
// Função :Faça um algoritmo para ler 50 números e armazenar em um vetor VET, verificar e escrever se
// existem números repetidos no vetor VET e em que posições se encontram.
var
vet : vetor[1..50] de inteiro
rep : vetor[1..50] de logico
c , c2 : inteiro
inicio
para c de 1 ate 50 faca
   leia(vet[c])
fimpara

para c de 1 ate 50 faca
   para c2 de c+1 ate 50 faca
      se (vet[c] = vet[c2])  entao
         escreva(c)
         rep[c] := verdadeiro
         escreval(c2)
         rep[c2] := verdadeiro
      fimse
   fimpara
fimpara
limpatela
para c de 1 ate 50 faca
   escreva(c," - ",vet[c])
   se (rep[c]) entao
      escreval(" <- repetido")
   senao
      escreval("")
   fimse
fimpara

fimalgoritmo
