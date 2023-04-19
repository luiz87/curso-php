<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Form Pessoa</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
<?php
include 'conectar.php';
include 'validar-cpf.php';
$msgCpf = $id = $nome = $email = $cpf = $sexo = $escolaridade = "";
if($_SERVER["REQUEST_METHOD"] == "GET"){
    if (array_key_exists('id',$_GET)){
        $id = $_GET['id'];
        $pessoa = buscar($id);
        $nome = $pessoa['nome'];
        $email = $pessoa['email'];
        $cpf = $pessoa['cpf'];
        $sexo = $pessoa['sexo'];
        $escolaridade = $pessoa['escolaridade'];
    }
    if (array_key_exists('apagar',$_GET)){
        $apagar = $_GET['apagar'];
        $msg = apagar($apagar);
        echo $msg;
    }
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $msg = "";
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $cpf = $_POST['cpf'];
    $sexo = $_POST['sexo'];
    $escolaridade = $_POST['escolaridade'];
    $id = $_POST['id'];

    $cpf = str_replace(".","",$cpf);
    $cpf = str_replace("-","",$cpf);

    if(validarCpf($cpf)){
        if($id == ''){
            $senha = $_POST['senha'];
            $confirmar = $_POST['confirmar'];
            if($senha == $confirmar){
                $msg = incluir($nome, $email, $cpf, $sexo, $escolaridade, $senha);
                $msgCpf = $id = $nome = $email = $cpf = $sexo = $escolaridade = "";
            }else{
                $msg = "Senhas divergentes!";
            }
            
        } else {
            $msg = alterar($id, $nome, $email, $cpf, $sexo, $escolaridade);
            $msgCpf = $id = $nome = $email = $cpf = $sexo = $escolaridade = "";
        }
    }else{
        $msgCpf = "CPF inválido!";
    }
    
    echo $msg;
}

?>
<form action="form-pessoa.php" method="post">
    <input type="hidden" name="id"  value="<?php echo $id; ?>">
    <h1>Formulário de Pessoa</h1>
<div class="row">    
    <div class="col-sm-6">
        <label for="nome" class="form-label">Nome:</label>
        <input id="nome" class="form-control" type="text" name="nome" value="<?php echo $nome; ?>" required ><br>
    
        <label for="email" class="form-label">E-mail:</label>
        <input id="email" class="form-control" type="email" name="email" value="<?php echo $email; ?>" required><br>
    
        <label for="cpf" class="form-label">CPF:<?php echo $msgCpf; ?></label>
        <input id="cpf" class="form-control" type="text" name="cpf" value="<?php echo $cpf; ?>" required><br>
    </div>
    
    <div class="col-sm-6">
        <label for="escolaridade" class="form-label">Escolaridade:</label>
        <select name="escolaridade" id="escolaridade" class="form-select">
            <option value="">Selecione</option>
            <option <?php if($escolaridade == "ensino-medio") { echo "selected"; }?> value="ensino-medio">Ensino Médio</option>
            <option <?php if($escolaridade == "superior-incompleto") { echo "selected"; }?> value="superior-incompleto">Superior Incompleto</option>
            <option <?php if($escolaridade == "superior-completo") { echo "selected"; }?> value="superior-completo">Superior Completo</option>
        </select>
        <br>
        <label class="form-label">Sexo:</label>
        <div class="form-check">
            <input id="sexo-m" class="form-check-input" type="radio" name="sexo" value="m" required <?php if($sexo == "m") echo "checked"; ?>>
            <label for="sexo-m" class="form-check-label">Masculino</label> 
        </div>
        <div class="form-check">
            <input id="sexo-f" class="form-check-input" type="radio" name="sexo" value="f" required <?php if($sexo == "f") echo "checked"; ?>>
            <label for="sexo-f" class="form-check-label">Feminino</label>
        </div>
        <br>
    </div>
</div>
        <?php if ($id == '') { ?>
            <div class="row">
                
                <div class="col-sm-6">
                    <label for="senha" class="form-label">Senha:</label>
                    <input id="senha" class="form-control" type="password" name="senha" required>
                </div>

                <div class="col-sm-6">
                    <label for="confirmar" class="form-label">Confirmar Senha:</label>
                    <input id="confirmar" class="form-control" type="password" name="confirmar">
                </div>

            </div>
        <?php } ?>

    <br>
    <input type="submit" value="Gravar" class="btn btn-success">
    <a href="form-pessoa.php" class="btn btn-secondary">
        Novo
    </a>
    <input id="mostra-tb" type="button" value="Tabela" class="btn btn-outline-info" onclick="mostarTabela()">
</form>
<br>

<table class="table table-striped table-hover" id="tabela">
    <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th>CPF</th>
        <th>Sexo</th>
        <th colspan="2">Ações</th>
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
        echo "<td><a class='btn btn-outline-warning btn-sm' href='form-pessoa.php?id=".$linha['id']."'>✏</a></td>";
        echo "<td><a class='btn btn-outline-danger btn-sm' onclick='return apagar(".$linha['id'].");' href='form-pessoa.php?apagar=".$linha['id']."'>🗑</a></td>";
        echo "</tr>";
    }
    ?>
    <script>
        function apagar(id){
            return confirm("Deseja Apagar o registro ID("+id+")?");
        }
    </script>
</table>
</div>
<script>
    function mostarTabela(){
        if(mostratb){
            document.getElementById("tabela").style.display = '';
            mostratb = false;
            document.getElementById("mostra-tb").value = "Ocultar Tabela";
        }else{
            document.getElementById("tabela").style.display = 'none'; 
            mostratb = true;
            document.getElementById("mostra-tb").value = "Mostrar Tabela";
        }
    }
    var mostratb = false;
    mostarTabela();
</script>
</body>
</html>