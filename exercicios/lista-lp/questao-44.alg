algoritmo "semnome"
// Fun��o :Escreva um algoritmo para ler 2 valores e se o segundo valor informado for ZERO, deve ser lido
// um novo valor, ou seja, para o segundo valor n�o pode ser aceito o valor zero e imprimir o resultado
// da divis�o do primeiro valor lido pelo segundo valor lido. (utilizar a estrutura REPITA).

var
n1 , n2 : real
inicio

escreva("Digite primeiro n�mero: ")
leia(n1)
repita
   escreva("Digite segundo n�mero: ")
   leia(n2)
ate (n2 <> 0) // essa condi��o signifca que n�o vai mais repetir se n2 for diferente de 0
escreval("Rsultado da divis�o:",n1 / n2)

fimalgoritmo
