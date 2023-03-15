algoritmo "semnome"
// Função :Crie um programa que leia duas notas de um aluno e calcule a sua média,
// mostrando uma mensagem no final, de acordo com a média atingida:
//  - Média até 4.9: REPROVADO
//  - Média entre 5.0 e 6.9: RECUPERAÇÃO
//  - Média 7.0 ou superior: APROVADO
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
   // sem condições compostas ou Aninhada ou Concatenada
   se (media <= 4.9) entao
      escreval("REPROVADO")
   fimse
   se (media >= 5) e (media <= 6.9) entao
      escreval("RECUPERAÇÃO")
   fimse
   se (media >= 7) entao
      escreval("APROVADO")
   fimse

   // com condições compostas ou Aninhada ou Concatenada
   se (media <= 4.9) entao
      escreval("REPROVADO")
   senao
      se (media >= 5) e (media <= 6.9) entao
         escreval("RECUPERAÇÃO")
      senao
         escreval("APROVADO")
      fimse
   fimse
senao
   escreval("Falha em alguma nota, so é considerado entre 0 e 10.")
fimse
fimalgoritmo
