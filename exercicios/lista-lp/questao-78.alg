algoritmo "semnome"
// Função :Escreva um algoritmo que permita a leitura dos nomes de 10 pessoas e armaze os nomes lidos em
//um vetor. Após isto, o algoritmo deve permitir a leitura de mais 1 nome qualquer de pessoa e depois
//escrever a mensagem ACHEI, se o nome estiver entre os 10 nomes lidos anteriormente (guardados no
//vetor), ou NÃO ACHEI caso contrário.
var
nomes : vetor[1..10] de caractere
nome : caractere
c : inteiro
msg : caractere
inicio
para c de 1 ate 10 faca
   leia(nomes[c])
fimpara
escreva("Digite o nome a ser procurado: ")
leia(nome)
msg := "NÃO ACHEI"
para c de 1 ate 10 faca
   se (nome = nomes[c]) entao
      msg := "ACHEI"
      interrompa
   fimse
fimpara
escreval(msg)
fimalgoritmo
