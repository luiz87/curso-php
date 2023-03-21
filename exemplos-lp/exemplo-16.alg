algoritmo "semnome"
// Função :
// Autor :
// Data : 21/03/2023
// Seção de Declarações
var
tarefa : vetor[1..10] de caractere
posicao, c : inteiro
operacao : caractere
inicio

repita
   escreval("'E' para Editar")
   escreval("'L' para listar")
   escreval("'S' para Sair")
   leia(operacao)

   escolha operacao
   caso "E"
      escreva("Digite a posição: ")
      leia(posicao)
      escreva("Digite a tarefa: ")
      leia(tarefa[posicao])
   caso "L"
      limpatela
      para c de 1 ate 10 faca
         escreval(c," - ",tarefa[c])
      fimpara
   fimescolha
ate (operacao = "S")
fimalgoritmo
