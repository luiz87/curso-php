<?php
include("conectar.php");
$msg = "";
$tpMsg = "danger";
if (isset($_POST['email'])) {
    $email = $_POST['email'];
    $sql = "select * from admin where email = '$email';";
    $resut = conectar($sql);
    if ($linha = $resut->fetch_assoc()) {
        $msg = "Email já existe.";
    } else {
        if ($_POST['senha'] == $_POST['confirmar']) {
            $senha = $_POST['senha'];
            $sql = "insert into admin(email, senha) values ('$email','$senha')";
            conectar($sql);
            $msg = "Novo usuário criado.";
            $tpMsg = "success";
        } else {
            $msg = "Senhas divergentes.";
        }
    }
}
