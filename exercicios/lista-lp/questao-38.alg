algoritmo "QUESTAO - 38"

//Fa�a um algoritmo para ler um n�mero que � um c�digo de usu�rio.
//Caso este c�digo seja diferente de um c�digo armazenado internamente no
//algoritmo (igual a 1234) deve ser apresentada a mensagem �Usu�rio inv�lido!�.
//Caso o C�digo seja correto, deve ser lido outro valor que � a senha. Se
//esta senha estiver incorreta (a certa � 9999) deve ser mostrada a mensagem
//�senha incorreta�.
// Caso a senha esteja correta, deve ser mostrada a mensagem �Acesso permitido�.
var
codigoAcesso , count, senha: inteiro
inicio

repita
   escreva("Digite o codigo de acesso: ")
   leia(codigoAcesso)
   se (codigoAcesso <> 1234) entao
      escreval("Usu�rio inv�lido!")
   fimse
ate (codigoAcesso = 1234)

para count de 1 ate 5 faca
   escreva("Digite a senha: ")
   leia(senha)
   se (senha = 9999) entao
      escreval("Acesso permitido")
      interrompa // break
   senao
      escreval("Usu�rio inv�lido! Tentativa",count,"/5.")
   fimse
fimpara

fimalgoritmo
