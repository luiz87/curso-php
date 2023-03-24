algoritmo "semnome"
// Função :Faça um algoritmo para ler um valor N qualquer (que será o tamanho dos vetores).
// Após, ler dois vetores A e B (de tamanho N cada um) e depois armazenar em um terceiro vetor Soma a soma dos
// elementos do vetor A com os do vetor B (respeitando as mesmas posições) e escrever o vetor Soma
var
a : vetor[0..1000] de inteiro
b : vetor[0..1000] de inteiro
soma : vetor[0..1000] de inteiro
c ,n : inteiro
inicio
escreval("Digite um número de 1 até 1000")
 leia(n)
//n := 1000
para c de 0 ate n faca
     leia(a[c])
     leia(b[c])
     soma[c] := a[c] + b[c]
fimpara
limpatela
para c de 0 ate n faca
     escreval(c,") ",a[c]," +",b[c]," =",soma[c])
fimpara

fimalgoritmo
