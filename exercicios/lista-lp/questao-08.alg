algoritmo "semnome"
// Função :  Escreva um algoritmo para ler o número total de eleitores de um município, o número de votos
// brancos, nulos e válidos. Calcular e escrever o percentual que cada um representa em relação ao total de eleitores.
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
