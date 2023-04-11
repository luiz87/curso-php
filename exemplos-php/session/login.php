<?php
session_start();

if(!isset($_SESSION['tentativas'])){
    $_SESSION['tentativas'] = 5;
}else{
    $_SESSION['tentativas']--;
}
if($_SESSION['tentativas'] > 0){
    $bt = "submit";
}else{
    $bt = "hidden";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <form action="login.php" method="POST">
        Login:<br>
        <input type="text" name="login"><br>
        Senha:<br>
        <input type="password" name="senha"><br>
        <br>
        <input type="<?php echo $bt; ?>" value="Acessar">
    </form>
    <?php
        echo "<br> Tentativas possíveis: ".$_SESSION['tentativas']."<br>";  
        if(isset($_POST['login']) && isset($_POST['senha']) ){
            $login = $_POST['login'];
            $senha = $_POST['senha'];
            if($login == 'luiz' && $senha == '000'){
                echo "Acesso OK";
                $_SESSION['login'] = $login;
                echo "<br><a href='pagina-restrita.php'>Pégina Restrita</a>";
                header("Location: pagina-restrita.php");
            }else{
                echo "Acesso Negado";
            }
        }
    ?>

<?php

?>
</body>
</html>