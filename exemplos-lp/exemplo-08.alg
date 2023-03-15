algoritmo "semnome"
// Função :Faça um programa que leia o ano de nascimento de uma pessoa, calcule a idade
// dela e depois mostre se ela pode ou não votar.
var
idade, ano : inteiro
inicio
escreva("Digite o ano de nascimento: ")
leia(ano)
idade := 2023 - ano
escreva("Com essa idade ",idade)
se (idade >= 16) entao
   escreval(" já pode vota.")
   se (idade >= 18) e (idade <= 65) entao // E é um operador que obriga que as 2 comparações sejam verdadeira
      escreval("E é obrigatorio.")
   senao
      escreval("Mas é opcional")
   fimse
senao
   escreval(" NÃO pode vota.")
fimse
fimalgoritmo
