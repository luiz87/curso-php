algoritmo "semnome"
// Fun��o :O custo de um carro novo ao consumidor � a soma do custo de f�brica com a porcentagem do
//distribuidor e dos impostos (aplicados ao custo de f�brica). Supondo que o percentual do distribuidor
//seja de 28% e os impostos de 45%, escrever um algoritmo para ler o custo de f�brica de um carro,
//calcular e escrever o custo final ao consumidor.
var
valorFinal, custoFabrica , lucroDistribuidor, lucroImposto : real
inicio
escreval("Digite o valor de F�brica do veiculo: ")
leia(custoFabrica)
lucroDistribuidor := ((custoFabrica/100)*28)
lucroImposto := ((custoFabrica/100)*45)
valorFinal := custoFabrica + lucroDistribuidor + lucroImposto
escreval("Valor Fabrica��o: ", custoFabrica)
escreval("Valor Lucro: ", lucroDistribuidor)
escreval("Valor Impostos: ", lucroImposto)
escreval("Valor final do veiculo: ", valorFinal)
fimalgoritmo
