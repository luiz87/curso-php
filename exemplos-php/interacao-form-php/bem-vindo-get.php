<?php
//  exemplo usando o metodo GET.
$nome = $_GET["nome"];
$email = $_GET["email"];
$idade = $_GET["idade"];

echo "Bem Vindo ao mundo PHP $nome <br>";
echo "E-mail registrado $email <br>";
echo "Idade $idade <br>";
echo "<a href='index.html'>Voltar</a>";
?>