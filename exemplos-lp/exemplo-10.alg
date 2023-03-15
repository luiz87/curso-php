algoritmo "semnome"
// Função : Escreva um algoritmo que leia dois números inteiros e compare-os, mostrando
// na tela uma das mensagens abaixo:
//  - O primeiro valor é o maior
//  - O segundo valor é o maior
//  - Não existe valor maior, os dois são iguais
var
n1 , n2 : inteiro
inicio
escreva("Digite um numero: ")
leia(n1)
escreva("Digite outro numero: ")
leia(n2)

se (n1 > n2) entao
   escreva("O primeiro valor é o maior")
senao
   se (n2 > n1) entao
      escreva("O segundo valor é o maior")
   senao
      escreva("Não existe valor maior, os dois são iguais")
   fimse
fimse

fimalgoritmo
