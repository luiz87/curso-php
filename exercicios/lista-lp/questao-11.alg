algoritmo "semnome"
// Fun��o :  Uma revendedora de carros usados paga a seus funcion�rios vendedores um sal�rio fixo por m�s,
//mais uma comiss�o tamb�m fixa para cada carro vendido e mais 5% do valor das vendas por ele
//efetuadas. Escrever um algoritmo que
// leia o n�mero de carros por ele vendidos,
// o valor total de suas vendas,
// o sal�rio fixo e
// o valor que ele recebe por carro vendido.
// sa�da: Calcule e escreva o sal�rio final do vendedor.
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
escreval("Sal�rio Final: ", salarioFinal)
fimalgoritmo
