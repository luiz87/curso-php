algoritmo "semnome"
// Função :Escreva um algoritmo para ler 2 valores e se o segundo valor informado for ZERO, deve ser lido
// um novo valor, ou seja, para o segundo valor não pode ser aceito o valor zero e imprimir o resultado
// da divisão do primeiro valor lido pelo segundo valor lido. (utilizar a estrutura REPITA).
// Reescreva o exercício anterior utilizando a estrutura ENQUANTO.
// so vai repetir se for igual a 0
// não vai repetir se for diferente de 0
var
n1 , n2 : real
inicio

escreva("Digite primeiro número: ")
leia(n1)
enquanto (n2 = 0) faca // essa condição signifca que vai repetir se n2 for igual a 0
   escreva("Digite segundo número: ")
   leia(n2)
fimenquanto

escreval("Rsultado da divisão:",n1 / n2)

fimalgoritmo

