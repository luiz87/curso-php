<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
    <?php
    $nome = $_SESSION['nome'];
    $perfil = $_SESSION['perfil'];

    echo "Usuário: $nome Perfil:($perfil)";

    print_r($_SESSION);
    ?>
</body>
</html>