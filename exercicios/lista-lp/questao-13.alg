algoritmo "semnome"
// Função :Faça um algoritmo que leia três notas de um aluno, calcule e escreva a média final deste aluno.
// Considerar que a média é ponderada e que o peso das notas é 2, 3 e 5. Fórmula para o cálculo da média final é:
var
n1 , n2 , n3 , media : real
inicio
escreva("Digite a nota 01: ")
leia(n1)
escreva("Digite a nota 02: ")
leia(n2)
escreva("Digite a nota 03: ")
leia(n3)
media := (n1*2 + n2*3 + n3*5)/10
escreval("Média Final: ",media)
fimalgoritmo
