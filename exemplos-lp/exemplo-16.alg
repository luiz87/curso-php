algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 21/03/2023
// Se��o de Declara��es
var
tarefa : vetor[1..10] de caractere
posicao, c : inteiro
operacao : caractere
inicio

enquanto (operacao <> "S") faca
   escreval("'E' para Editar")
   escreval("'L' para Listar")
   escreval("'S' para Sair")
   leia(operacao)

   escolha operacao
   caso "E"
      escreva("Digite a posi��o: ")
      leia(posicao)
      escreva("Digite a tarefa: ")
      leia(tarefa[posicao])
   caso "L"
      limpatela
      para c de 1 ate 10 faca  // for(c = 1 ; c <=10; c++)
         escreval(c," - ",tarefa[c])
      fimpara
   fimescolha
fimenquanto
fimalgoritmo
