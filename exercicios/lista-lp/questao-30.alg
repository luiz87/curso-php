algoritmo "semnome"
// Fun��o :  Ler 3 valores (considere que n�o ser�o informados valores iguais) e escrev�-los em ordem crescente.
// 5 2 7
// 5 2 1
var
n1, n2, n3 , aux : inteiro
inicio
leia(n1)
leia(n2)
leia(n3)

se (n1 > n2) entao
   aux := n1
   n1 := n2
   n2 := aux
fimse

se (n1 > n3) entao
   aux := n1
   n1 := n3
   n3 := aux
fimse

se (n2 > n3) entao
   aux := n2
   n2 := n3
   n3 := aux
fimse

escreval(n1 , n2, n3)
fimalgoritmo
