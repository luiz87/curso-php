<?php
include("validar-session.php");
if ($id_admin == 0) {
    echo "<script>window.location.replace('index.php');</script>";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Criar Publicação</title>
</head>

<body>
    <div class="container mt-3">
        <?php include("gravar-publicacao.php"); ?>
        <div class="row justify-content-center">
            <div class="col-8">
                <h2>Criar Nova Publicação </h2>
                <?php if ($msg != "") { ?>
                    <div class="alert alert-<?php echo $tpMsg; ?>">
                        <strong><?php echo $msg; ?></strong>
                    </div>
                <?php } ?>
                <form action="form-publicacao.php" method="POST">
                    <input type="hidden" value="<?= $id ?>" name="id">
                    <div class="mb-3 mt-3">
                        <label for="titulo">Titulo:</label>
                        <input type="text" class="form-control" id="titulo" value="<?= $titulo ?>" name="titulo" required>
                    </div>
                    <div class="mb-3">
                        <label for="descricao">Descricao:</label>
                        <textarea type="text" class="form-control" id="descricao" name="descricao" required><?= $descricao ?></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Gravar publicação</button>
                    <a href="form-publicacao.php" class="btn btn-secondary">Novo</a>
                    <a href="lista-publicacoes.php">Voltar</a>
                </form>
                <table class="table">
                    <tr>
                        <th>Titulo</th>
                        <th class="col-1">Operações</th>
                    </tr>
                    <?php
                    while ($linha = $resut->fetch_assoc()) {
                        $id = $linha['id'];
                        $t = $linha['titulo'];
                        echo "<tr>
                        <td>$t</td>
                        <td>
                            <a href='form-publicacao.php?editar=$id'>✏</a>
                            <a href='form-publicacao.php?apagar=$id' onclick='return apagar()'>🗑</a>
                        </td>
                    </tr>";
                    }
                    ?>
                </table>
            </div>
        </div>

        <script>
            function apagar() {
                return confirm("Deseja realmente apagar?");
            }
        </script>
    </div>
</body>

</html>