algoritmo "semnome"
// Função :
// Autor :
// Data : 13/03/2023
// Seção de Declarações 
var
A, B, C, D, vE, F, G, H, I, J : real
inicio

A := 6*(3+2)
B := 2+(6*(3+2))
C := 2+(3*6)/(2+4)
D := 2*(8/(3+1))
vE := 3+(16-2)/(2*(9-2))
F := (6/3)+(8/2)
G := ((3+(8/2))*4)+(3*2)
H := (6*(3*3)+6)-10
I := (((10*8)+3)*9)
J := ((-12)*(-4))+(3*(-4))

escreval("A ",A)
escreval("B ",B)
escreval("C ",C)
escreval("D ",D)
escreval("E ",vE)
escreval("F ",F)
escreval("G ",G)
escreval("H ",H)
escreval("I ",I)
escreval("J ",J)

// remover o que for possivel de (parenteses)
A := 6*(3+2)
B := 2+6*(3+2))
C := 2+3*6/(2+4)
D := 2*(8/(3+1))
vE := 3+(16-2)/(2*(9-2))
F := 6/3+8/2
G := (3+8/2)*4+3*2
H := (6*3*3+6)-10
I := (10*8+3)*9
J := -12*-4+3*-4

escreval("A ",A)
escreval("B ",B)
escreval("C ",C)
escreval("D ",D)
escreval("E ",vE)
escreval("F ",F)
escreval("G ",G)
escreval("H ",H)
escreval("I ",I)
escreval("J ",J)
fimalgoritmo
