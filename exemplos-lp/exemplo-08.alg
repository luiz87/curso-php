algoritmo "semnome"
// Fun��o :Fa�a um programa que leia o ano de nascimento de uma pessoa, calcule a idade
// dela e depois mostre se ela pode ou n�o votar.
var
idade, ano : inteiro
inicio
escreva("Digite o ano de nascimento: ")
leia(ano)
idade := 2023 - ano
escreva("Com essa idade ",idade)
se (idade >= 16) entao
   escreval(" j� pode vota.")
   se (idade >= 18) e (idade <= 65) entao // E � um operador que obriga que as 2 compara��es sejam verdadeira
      escreval("E � obrigatorio.")
   senao
      escreval("Mas � opcional")
   fimse
senao
   escreval(" N�O pode vota.")
fimse
fimalgoritmo
