algoritmo "semnome"
// Função :Escreva um algoritmo para ler uma temperatura em graus Fahrenheit, calcular e escrever o valor
// correspondente em graus Celsius (baseado na fórmula abaixo):   C/5 = F-32/9
var
F,C : real
inicio
escreva("Digite a temperatura em Fahrenheit: ")
leia(F)
C := (F-32)/9*5
escreva("Temperatura em Celsius: ", C)

fimalgoritmo
