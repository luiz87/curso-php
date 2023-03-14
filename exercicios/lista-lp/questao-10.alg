algoritmo "semnome"
// Função :O custo de um carro novo ao consumidor é a soma do custo de fábrica com a porcentagem do
//distribuidor e dos impostos (aplicados ao custo de fábrica). Supondo que o percentual do distribuidor
//seja de 28% e os impostos de 45%, escrever um algoritmo para ler o custo de fábrica de um carro,
//calcular e escrever o custo final ao consumidor.
var
valorFinal, custoFabrica , lucroDistribuidor, lucroImposto : real
inicio
escreval("Digite o valor de Fábrica do veiculo: ")
leia(custoFabrica)
lucroDistribuidor := ((custoFabrica/100)*28)
lucroImposto := ((custoFabrica/100)*45)
valorFinal := custoFabrica + lucroDistribuidor + lucroImposto
escreval("Valor Fabricação: ", custoFabrica)
escreval("Valor Lucro: ", lucroDistribuidor)
escreval("Valor Impostos: ", lucroImposto)
escreval("Valor final do veiculo: ", valorFinal)
fimalgoritmo
