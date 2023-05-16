<?php
session_start();
include('conectar.php');
$msg = "";
$tpMsg = "danger";
if(isset($_POST['email'])){
    $email = $_POST['email'];
    $senha = $_POST['senha'];
    $sql = "select * from admin where email = '$email' and senha = '$senha';";
    $resut = conectar($sql);
    if($linha = $resut->fetch_assoc()){
        $_SESSION['id_admin'] = $linha['id'];
        echo "<script>window.location.replace('lista-publicacoes.php');</script>";
    }else{
        $msg = "Usuário ou Senha incorreto.";
    }
}

?>