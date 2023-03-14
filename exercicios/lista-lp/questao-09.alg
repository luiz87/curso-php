algoritmo "semnome"
// Função :   Escreva um algoritmo para ler o salário mensal atual de um funcionário e o percentual de reajuste.
// Calcular e escrever o valor do novo salário.
var
salarioAtual , percentual , salarioNovo , aumento: real
inicio
// Seção de Comandos 
escreval("Digite o Salário Atual")
leia(salarioAtual)
escreval("Digite o percentual de aumento")
leia(percentual)
aumento := (salarioAtual / 100) * percentual
salarioNovo := salarioAtual + aumento
escreval("Aumento de ", aumento)
escreval("Novo salário", salarioNovo)
fimalgoritmo
