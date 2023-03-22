algoritmo "semnome"
// Função : Crie um programa que leia o nome e a idade de 9 pessoas e guarde esses
//valores em dois vetores, em posições relacionadas. No final, mostre uma listagem
//contendo apenas os dados das pessoas menores de idade.
var
nome : vetor[1..9] de caractere
idade : vetor[1..9] de inteiro
i : inteiro
inicio
para i de 1 ate 9 faca
   escreva("Digite o nome: ")
   leia(nome[i])
   escreva("Digite o idade: ")
   leia(idade[i])
fimpara

para i de 1 ate 9 faca
   se (idade[i] < 18) entao
      escreval(i,") Nome: ",nome[i]," idade: ",idade[i])
   fimse
fimpara
fimalgoritmo
