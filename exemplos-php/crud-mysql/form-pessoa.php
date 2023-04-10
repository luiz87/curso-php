<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Pessoa</title>
</head>
<body>
<?php
include 'conectar.php';
$id = $nome = $email = $cpf = $sexo = "";
if($_SERVER["REQUEST_METHOD"] == "GET"){
    if (array_key_exists('id',$_GET)){
        $id = $_GET['id'];
        $pessoa = buscar($id);
        $nome = $pessoa['nome'];
        $email = $pessoa['email'];
        $cpf = $pessoa['cpf'];
        $sexo = $pessoa['sexo'];
    }
    if (array_key_exists('apagar',$_GET)){
        $apagar = $_GET['apagar'];
        $msg = apagar($apagar);
        echo $msg;
    }
}
?>
<form action="form-pessoa.php" method="post">
    <input type="hidden" name="id"  value="<?php echo $id; ?>">
    <h1>Formulário de Pessoa</h1>
    Nome: <br>
    <input type="text" name="nome" value="<?php echo $nome; ?>"><br>
    E-mail: <br>
    <input type="text" name="email" value="<?php echo $email; ?>"><br>
    CPF: <br>
    <input type="text" name="cpf" value="<?php echo $cpf; ?>"><br>
    Sexo: <br>
    <input type="radio" name="sexo" value="m" <?php if($sexo == "m") echo "checked"; ?>>Masculino
    <input type="radio" name="sexo" value="f" <?php if($sexo == "f") echo "checked"; ?>>Feminino
    <br>
    <br>
    <input type="submit" value="Gravar">
    <a href="form-pessoa.php">
    <input type="button" value="Novo">
    </a>
</form>
<?php
//  onclick="window.location.replace('form-pessoa.php');"
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $cpf = $_POST['cpf'];
    $sexo = $_POST['sexo'];

    $id = $_POST['id'];
    if($id == ''){
        $msg = incluir($nome, $email, $cpf, $sexo);
    } else {
        $msg = alterar($id, $nome, $email, $cpf, $sexo);
    }
    
    echo $msg;
}

?>
<br>
<table border="1">
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th>CPF</th>
        <th>Sexo</th>
    </tr>
    <?php
    $dados = listar();
    while ($linha = $dados->fetch_assoc()) {
        echo "<tr>";
        echo "<td>".$linha['id']."</td>";
        echo "<td>".$linha['nome']."</td>";
        echo "<td>".$linha['email']."</td>";
        echo "<td>".$linha['cpf']."</td>";
        echo "<td>".$linha['sexo']."</td>";
        echo "<td><a href='form-pessoa.php?id=".$linha['id']."'>Editar</a></td>";
        echo "<td><a href='form-pessoa.php?apagar=".$linha['id']."'>Apagar</a></td>";
        echo "</tr>";
    }
    ?>
</table>
</body>
</html>