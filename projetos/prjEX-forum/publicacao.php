<?php
include('conectar.php');
include('validar-session.php');
$titulo = $descricao = $id_publicacao = "";
if(isset($_GET['id'])){
    $id = $_GET['id'];
    $id_publicacao = $id;
    $sql = "select * from publicacao where id = $id;";
    $resut = conectar($sql);
    if($linha = $resut->fetch_assoc()){
        $titulo = $linha['titulo'];
        $descricao = $linha['descricao'];
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Publicação</title>
</head>
<body>
    <style>
        .alert-light{
            border: solid 1px black;
        }
    </style>
    <div class="container">
        <a href="lista-publicacoes.php">Voltar</a>
        <div class="mt-3 p-3 bg-secondary text-white rounded">
            <h1>
                <?= $titulo ?>
            </h1>
            <p>
                <?= $descricao ?>
            </p>
        </div>
        <br>

        <?php
            $sql = "select email, opniao from comentario c inner join admin a on a.id = c.id_admin where id_publicacao = $id_publicacao";
            $resut = conectar($sql);
            while ($linha = $resut->fetch_assoc()) {
                $email = $linha['email'];
                $opniao = $linha['opniao'];
                echo "
                <div class='alert alert-light'>
                <strong>$email</strong><br>$opniao
                </div>
                ";
            }
        ?>
        <?php if($id_admin == 0) { ?>
        <div class="alert alert-danger">
            <strong>Atenção!</strong><br>
            Para deixar um comentário é necessário fazer o <a href="index.php">login</a>.
        </div>
        <?php } else { ?>
            <form action="gravar-comentario.php" method="POST">
                <div class="mb-3 mt-3">
                <label for="comentario">Comentar</label>
                <textarea class="form-control" name="comentario" id="comentario" cols="30" rows="3" required></textarea>
                </div>
                <input type="submit" name="Comentar" id="" class="btn btn-primary">
                <input type="hidden" name="id_publicacao" value="<?= $id_publicacao ?>">
                <input type="hidden" name="id_admin" value="<?= $id_admin ?>">
            </form>
        <?php }?>
    </div>
</body>
</html>