algoritmo "semnome"
// Fun��o :As ma��s custam R$ 1,30 cada se forem compradas menos de uma d�zia, e R$ 1,00 se forem
// compradas pelo menos 12. Escreva um programa que leia o n�mero de ma��s compradas, calcule e
// escreva o custo total da compra.
var
quantidade : inteiro
total : real
inicio
escreval("Digite a quantidade de ma��s")
leia(quantidade)

se (quantidade < 12) entao
    total := quantidade * 1.3
senao
    total := quantidade * 1.0
fimse

escreval("Custo total: ", total)
fimalgoritmo
