algoritmo "semnome"
// Fun��o :Crie um programa que leia duas notas de um aluno e calcule a sua m�dia,
// mostrando uma mensagem no final, de acordo com a m�dia atingida:
//  - M�dia at� 4.9: REPROVADO
//  - M�dia entre 5.0 e 6.9: RECUPERA��O
//  - M�dia 7.0 ou superior: APROVADO
var
n1 , n2 , media : real
inicio
escreva("Digite a nota 01: ")
leia(n1)
escreva("Digite a nota 02: ")
leia(n2)
media := (n1 + n2)/2
se (n1 >= 0) e (n1 <= 10) e (n2 >= 0) e (n2 <= 10) entao
   escreval("Media Final: ", media)
   // sem condi��es compostas ou Aninhada ou Concatenada
   se (media <= 4.9) entao
      escreval("REPROVADO")
   fimse
   se (media >= 5) e (media <= 6.9) entao
      escreval("RECUPERA��O")
   fimse
   se (media >= 7) entao
      escreval("APROVADO")
   fimse

   // com condi��es compostas ou Aninhada ou Concatenada
   se (media <= 4.9) entao
      escreval("REPROVADO")
   senao
      se (media >= 5) e (media <= 6.9) entao
         escreval("RECUPERA��O")
      senao
         escreval("APROVADO")
      fimse
   fimse
senao
   escreval("Falha em alguma nota, so � considerado entre 0 e 10.")
fimse
fimalgoritmo
