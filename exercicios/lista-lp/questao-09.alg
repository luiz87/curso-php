algoritmo "semnome"
// Fun��o :   Escreva um algoritmo para ler o sal�rio mensal atual de um funcion�rio e o percentual de reajuste.
// Calcular e escrever o valor do novo sal�rio.
var
salarioAtual , percentual , salarioNovo , aumento: real
inicio
// Se��o de Comandos 
escreval("Digite o Sal�rio Atual")
leia(salarioAtual)
escreval("Digite o percentual de aumento")
leia(percentual)
aumento := (salarioAtual / 100) * percentual
salarioNovo := salarioAtual + aumento
escreval("Aumento de ", aumento)
escreval("Novo sal�rio", salarioNovo)
fimalgoritmo
