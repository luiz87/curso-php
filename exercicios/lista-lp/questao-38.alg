algoritmo "QUESTAO - 38"

//Faça um algoritmo para ler um número que é um código de usuário.
//Caso este código seja diferente de um código armazenado internamente no
//algoritmo (igual a 1234) deve ser apresentada a mensagem ‘Usuário inválido!’.
//Caso o Código seja correto, deve ser lido outro valor que é a senha. Se
//esta senha estiver incorreta (a certa é 9999) deve ser mostrada a mensagem
//‘senha incorreta’.
// Caso a senha esteja correta, deve ser mostrada a mensagem ‘Acesso permitido’.
var
codigoAcesso , count, senha: inteiro
inicio

repita
   escreva("Digite o codigo de acesso: ")
   leia(codigoAcesso)
   se (codigoAcesso <> 1234) entao
      escreval("Usuário inválido!")
   fimse
ate (codigoAcesso = 1234)

para count de 1 ate 5 faca
   escreva("Digite a senha: ")
   leia(senha)
   se (senha = 9999) entao
      escreval("Acesso permitido")
      interrompa // break
   senao
      escreval("Usuário inválido! Tentativa",count,"/5.")
   fimse
fimpara

fimalgoritmo
