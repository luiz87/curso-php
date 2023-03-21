algoritmo "semnome"
// Função :Escreva um algoritmo para ler as notas da 1a. e 2a. avaliações de um aluno, calcule e imprima a
// média (simples) desse aluno. Só devem ser aceitos valores válidos durante a leitura (0 a 10) para cada
// nota. Acrescente uma mensagem 'NOVO CÁLCULO (S/N)?' ao final do exercício [48]. Se for
// respondido 'S' deve retornar e executar um novo cálculo, caso contrário deverá encerrar o algoritmo
var
n1 , n2 , media : real
novo : caractere
inicio

repita
   repita
      escreva("Digite a nota 01:")
      leia(n1)
   ate (n1 >= 0) e (n1 <= 10)

   repita
      escreva("Digite a nota 02:")
      leia(n2)
   ate (n2 >=0 ) e (n2 <= 10)

   media := (n1+n2)/2
   escreval("Média:", media)
   
   escreva("NOVO CÁLCULO (S/N)?")
   leia(novo)
ate (novo <> "S")

fimalgoritmo
