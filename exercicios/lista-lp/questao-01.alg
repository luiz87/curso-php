algoritmo "semnome"
// 1) Escreva um algoritmo que armazene o valor 10 em uma vari�vel A e o valor 20 em uma vari�vel B.
// A seguir (utilizando apenas atribui��es entre vari�veis) troque os seus conte�dos fazendo com que o
// valor que est� em A passe para B e vice-versa. Ao final, escrever os valores que ficaram armazenados nas vari�veis.
var
a , b , aux : inteiro
inicio

a := 10
b := 20

escreval("A = ", a)
escreval("B = ", b)

aux := b
b := a
a := aux
aux := 0

escreval("A = ", a)
escreval("B = ", b)

fimalgoritmo
