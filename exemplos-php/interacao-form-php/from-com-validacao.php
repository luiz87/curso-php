<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form de boas Vindas</title>
</head>
<body>
    <?php 

    $nome = $email = $idade = $genero = "";
    $nomeErr = $emailErr = $idadeErr = $generoErr = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $nome = teste_input($_POST["nome"]);
        if(empty($nome)){
            $nomeErr = "Nome é obrigatório.";
        }
        $email = teste_input($_POST["email"]);
        if(empty($email)){
            $emailErr = "E-mail é obrigatório.";
        }
        $idade = teste_input($_POST["idade"]);

        if(empty($_POST["genero"])){
            $generoErr = "Genero é obrigatório.";
        }else{
            $genero = teste_input($_POST["genero"]);
        }
        

    }

    function teste_input($dado){
        $dado = htmlspecialchars($dado);
        $dado = trim($dado);
        $dado = stripslashes($dado);
        return $dado;
    }

    ?>

<h1>Formulario com validação</h1>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="post">
        Nome:<input type="text" name="nome" required><span class="erro">*<?php echo $nomeErr;?></span><br>
        E-mail:<input type="email" name="email" required><span class="erro">*<?php echo $emailErr;?><br>
        Idade:<input type="number" name="idade"><br>
        Genero:<span class="erro">*<?php echo $generoErr;?>
        <br><input type="radio" name="genero" required value="masculino">Masculino
        <br><input type="radio" name="genero" required value="feminino">Feminino
        <br><input type="radio" name="genero" required value="outro">Outro
        <br><input type="submit">
    </form>
    <br>
<?php
    if(!empty($nome) && !empty($email) && !empty($genero)){
        echo "Nome: $nome <br>";
        echo "E-mail: $email <br>";
        echo "Idade: $idade <br>";
        echo "Genero: $genero <br>";
    }
    

?>
    <a href="/curso-php/index.php">Voltar</a>
    
</body>
</html>