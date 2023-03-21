algoritmo "semnome"
// Função :Escreva um algoritmo para ler 2 valores e se o segundo valor informado for ZERO, deve ser lido
// um novo valor, ou seja, para o segundo valor não pode ser aceito o valor zero e imprimir o resultado
// da divisão do primeiro valor lido pelo segundo valor lido. (utilizar a estrutura REPITA).

var
n1 , n2 : real
inicio

escreva("Digite primeiro número: ")
leia(n1)
repita
   escreva("Digite segundo número: ")
   leia(n2)
ate (n2 <> 0) // essa condição signifca que não vai mais repetir se n2 for diferente de 0
escreval("Rsultado da divisão:",n1 / n2)

fimalgoritmo
