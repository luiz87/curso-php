algoritmo "semnome"
// Função :Faça um programa
// que leia o tipo de carro alugado (popular ou luxo), quantos dias de aluguel e
// quantos Km foram percorridos.
var
tipoCarro : caractere
diarias , qtKm : inteiro
valorFinal : real
inicio
escreva("Digite o tipo de carro: ")
leia(tipoCarro)

se (tipoCarro = "popular") ou (tipoCarro = "luxo") entao
   escreva("Digite total de dias: ")
   leia(diarias)

   se (diarias > 0) entao
      escreva("Digite quantos Km foram percorridos: ")
      leia(qtKm)

      se (qtKm > 0) entao
         se (tipoCarro = "popular") entao
            se (qtKm <= 100) entao
               valorFinal := (90*diarias) + (qtKm*0.20)
            senao
               valorFinal := (90*diarias) + (qtKm*0.10)
            fimse
         senao
            se (qtKm <= 200) entao
               valorFinal := (150*diarias) + (qtKm*0.30)
            senao
               valorFinal := (150*diarias) + (qtKm*0.25)
            fimse
         fimse
         escreva("Tipo de carro: ",tipoCarro)
         escreva("Valor Final do Aluguel: ",valorFinal)

      senao
         escreva("A quantidade de Km deve ser maior que 0.")
      fimse

   senao
      escreva("O total de diarias tem que ser maior que 0.")
   fimse

senao
   escreva("Tipo de carro inválido")
fimse
fimalgoritmo
