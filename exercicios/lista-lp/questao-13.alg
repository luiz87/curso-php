algoritmo "semnome"
// Fun��o :Fa�a um algoritmo que leia tr�s notas de um aluno, calcule e escreva a m�dia final deste aluno.
// Considerar que a m�dia � ponderada e que o peso das notas � 2, 3 e 5. F�rmula para o c�lculo da m�dia final �:
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
escreval("M�dia Final: ",media)
fimalgoritmo
