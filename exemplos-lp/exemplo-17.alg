algoritmo "semnome"
// Função : exemplo resolução questão 77
var
v : vetor[1..8] de inteiro
i , aux: inteiro
inicio
// 5 1 4 2 7 8 3 6
v[1] := 5
v[2] := 1
v[3] := 4
v[4] := 2
v[5] := 7
v[6] := 8
v[7] := 3
v[8] := 6

para i de 8 ate 5 passo -1 faca
   aux := v[i]
   v[i] := v[8-i+1]
   v[8-i+1] := aux
fimpara
v[3] := v[1]
v[v[3]] := v[v[2]]
// v[4] := 5
para i de 1 ate 8 faca
   escreval(v[i])
fimpara
fimalgoritmo
