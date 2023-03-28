algoritmo "semnome"
var
procedimento marcaTabuleiro(i , j : inteiro)
var
s : caractere
inicio
se (cont%2 = 0) entao
   s := "O"
senao
   s := "X"
fimse

se (tabuleiro[i,j] = "") entao
   tabuleiro[i,j] := s
senao
   cont := cont -1
fimse
fimprocedimento

procedimento jogadaVetor()
inicio
escreval("Jogar: ")
leia(jogada)
escolha jogada
caso 1
   marcaTabuleiro(3,1)
caso 2
   marcaTabuleiro(3,2)
caso 3
   marcaTabuleiro(3,3)
caso 4
   marcaTabuleiro(2,1)
caso 5
   marcaTabuleiro(2,2)
caso 6
   marcaTabuleiro(2,3)
caso 7
   marcaTabuleiro(1,1)
caso 8
   marcaTabuleiro(1,2)
caso 9
   marcaTabuleiro(1,3)
fimescolha
fimprocedimento
procedimento atualizarTabuleiro()
inicio
para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      se (tabuleiro[i,j] <> "") entao
         escreva(tabuleiro[i,j],"|")
      senao
         //escreva(i,j,"|")
         escreva(" |")
      fimse
   fimpara
   escreval("")
fimpara
fimprocedimento
funcao vericaVencedor() : logico
var

c : inteiro
inicio
se (tabuleiro[1,1] <> "") e (tabuleiro[1,1] = tabuleiro[2,2]) e (tabuleiro[1,1] = tabuleiro[3,3]) entao
   escreval("Vencedor ", tabuleiro[1,1])
   vencedor := verdadeiro
fimse

se (tabuleiro[3,1] <> "") e (tabuleiro[3,1] = tabuleiro[2,2]) e (tabuleiro[3,1] = tabuleiro[1,3]) entao
   escreval("Vencedor ", tabuleiro[3,1])
   vencedor := verdadeiro
fimse

para c de 1 ate 3 faca
   se (tabuleiro[c,1] <> "") e (tabuleiro[c,1] = tabuleiro[c,2]) e (tabuleiro[c,1] = tabuleiro[c,3]) entao
      escreval("Vencedor ", tabuleiro[c,1])
      vencedor := verdadeiro
   fimse
   se (tabuleiro[1,c] <> "") e (tabuleiro[1,c] = tabuleiro[2,c]) e (tabuleiro[1,c] = tabuleiro[3,c]) entao
      escreval("Vencedor ", tabuleiro[1,c])
      vencedor := verdadeiro
   fimse
fimpara

retorne vencedor
fimfuncao

tabuleiro : vetor [1..3,1..3] de caractere
i , j , jogada , cont: inteiro
vencedor : logico
inicio

para i de 1 ate 3 faca
   para j de 1 ate 3 faca
      escreva(i,j,"|")
   fimpara
   escreval("")
fimpara
cont := 1
vencedor := falso
repita
   jogadaVetor()
   limpatela
   atualizarTabuleiro()
   cont := cont + 1

   se (vericaVencedor()) entao
      cont := 10
   fimse

ate (cont = 10)

se (vencedor = falso) entao
   escreval("Deu velha")
fimse

fimalgoritmo

// 789
// 456
// 123

// 1.1 - 1.2 - 1.3
// 2.1 - 2.2 - 2.3
// 3.1 - 3.2 - 3.3
