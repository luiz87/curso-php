<?php include("validar-session.php"); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Lista de Publicações</title>
</head>

<body>
    <div class="container">
        <h2>Lista de Publicações
            <?php if ($id_admin > 0) { ?>
                <a href="form-publicacao.php" class="btn btn-success">Nova Publicação</a>
                <a href="logoff.php" class="btn btn-danger">Sair</a>
            <?php } ?>
        </h2>
        <table class="table">
            <tr>
                <th>Titulo</th>
                <th class="col-3">Autor</th>
                <th class="col-1">Acessar</th>
            </tr>
            <?php
            include("conectar.php");
            $sql = "select p.id, p.titulo, a.email from publicacao p inner join admin a on a.id = p.id_admin;";
            $resut = conectar($sql);
            while ($linha = $resut->fetch_assoc()) {
                $id = $linha['id'];
                $t = $linha['titulo'];
                $email = $linha['email'];
                echo "<tr>
                        <td>$t</td>
                        <td>$email</td>
                        <td><a href='publicacao.php?id=$id'>👀</a></td>
                    </tr>";
            }
            ?>
        </table>
    </div>
</body>

</html>