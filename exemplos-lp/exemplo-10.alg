algoritmo "semnome"
// Fun��o : Escreva um algoritmo que leia dois n�meros inteiros e compare-os, mostrando
// na tela uma das mensagens abaixo:
//  - O primeiro valor � o maior
//  - O segundo valor � o maior
//  - N�o existe valor maior, os dois s�o iguais
var
n1 , n2 : inteiro
inicio
escreva("Digite um numero: ")
leia(n1)
escreva("Digite outro numero: ")
leia(n2)

se (n1 > n2) entao
   escreva("O primeiro valor � o maior")
senao
   se (n2 > n1) entao
      escreva("O segundo valor � o maior")
   senao
      escreva("N�o existe valor maior, os dois s�o iguais")
   fimse
fimse

fimalgoritmo
