algoritmo "semnome"
// Fun��o :Escreva um algoritmo para ler as notas da 1a. e 2a. avalia��es de um aluno, calcule e imprima a
// m�dia (simples) desse aluno. S� devem ser aceitos valores v�lidos durante a leitura (0 a 10) para cada
// nota.
var
n1 , n2 , media : real
inicio

repita
   escreva("Digite a nota 01:")
   leia(n1)
ate (n1 >= 0) e (n1 <= 10)

repita
   escreva("Digite a nota 02:")
   leia(n2)
ate (n2 >=0 ) e (n2 <= 10)
media := (n1+n2)/2
escreva("M�dia:", media)
fimalgoritmo
