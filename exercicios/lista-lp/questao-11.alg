algoritmo "semnome"
// Função :  Uma revendedora de carros usados paga a seus funcionários vendedores um salário fixo por mês,
//mais uma comissão também fixa para cada carro vendido e mais 5% do valor das vendas por ele
//efetuadas. Escrever um algoritmo que
// leia o número de carros por ele vendidos,
// o valor total de suas vendas,
// o salário fixo e
// o valor que ele recebe por carro vendido.
// saída: Calcule e escreva o salário final do vendedor.
var
qtCarros, totalVendas , salarioFixo , comissao , salarioFinal: real
inicio
escreval("Digite a quantidade de carros vendidos: ")
leia(qtCarros)
escreval("Digite o Total das vendas :")
leia(totalVendas)
salarioFixo := 1300
comissao := 200
salarioFinal := salarioFixo + (qtCarros * comissao) + ((totalVendas/100)*5)
escreval("Salário Final: ", salarioFinal)
fimalgoritmo
