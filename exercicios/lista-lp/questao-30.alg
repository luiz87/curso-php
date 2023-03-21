algoritmo "semnome"
// Função :  Ler 3 valores (considere que não serão informados valores iguais) e escrevê-los em ordem crescente.
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
