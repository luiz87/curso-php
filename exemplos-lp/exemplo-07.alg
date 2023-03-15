algoritmo "semnome"
// Função :
var
velocidade , valorMulta: inteiro
inicio
escreval("Digite a velocidade: ")
leia(velocidade)
se (velocidade > 80) entao
   escreval("Usuário foi multado")
   valorMulta := (velocidade-80)*5
   escreval("Valor da Multa: ", valorMulta)
fimse
fimalgoritmo
