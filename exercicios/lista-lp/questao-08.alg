algoritmo "semnome"
// Fun��o :  Escreva um algoritmo para ler o n�mero total de eleitores de um munic�pio, o n�mero de votos
// brancos, nulos e v�lidos. Calcular e escrever o percentual que cada um representa em rela��o ao total de eleitores.
var
branco, nulos , validos , totalVotos : inteiro
inicio
escreval("Digite o total de votos brancos")
leia(branco)
escreval("Digite o total de votos nulos")
leia(nulos)
escreval("Digite o total de votos validos")
leia(validos)
totalVotos := branco + nulos + validos
escreval("Percentual de votos branco: ", branco/totalVotos*100)
escreval("Percentual de votos nulos: ", nulos/totalVotos*100)
escreval("Percentual de votos validos: ", validos/totalVotos*100)
escreval("Total de votos: ", totalVotos)
fimalgoritmo
