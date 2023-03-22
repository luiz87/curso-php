algoritmo "semnome"
// Função : exemplo de um ordenador
var
n : vetor[1..10] de inteiro
tamanho, i, j , aux: inteiro
// i contador 1
// j contador 2
inicio
// pra fazer um algoritmo de ordenação vamos usar 2 laços de repetição um dentro de outro .
// pq ???
// o primeiro númeiro do vertor vai ser comparado com todos os outros números

//n[1] := 4
//n[2] := 2
//n[3] := 1
//n[4] := 5
//n[5] := 3
tamanho := 10
para i de 1 ate tamanho faca
   leia(n[i])
fimpara

para i de 1 ate tamanho faca
   para j de i+1 ate tamanho faca
      //escreval(i," ",j)
      se (n[i] > n[j]) entao
         aux := n[i]
         n[i] := n[j]
         n[j] := aux
      fimse
   fimpara
fimpara
para i de 1 ate tamanho faca
   escreval(n[i])
fimpara
fimalgoritmo
