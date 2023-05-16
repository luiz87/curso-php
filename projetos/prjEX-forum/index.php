<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Document</title>
</head>

<body>
    <?php include("login.php"); ?>
    <div class="container mt-3">
        <div class="row justify-content-center">
            <div class="col-6">
                <h2>Login</h2>
                <?php if ($msg != "") { ?>
                    <div class="alert alert-<?php echo $tpMsg; ?>">
                        <strong><?php echo $msg; ?></strong>
                    </div>
                <?php } ?>
                <form action="index.php" method="post">
                    <div class="mb-3 mt-3">
                        <label for="email">Email:</label>
                        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                    <div class="mb-3">
                        <label for="senha">Senha:</label>
                        <input type="password" class="form-control" id="senha" placeholder="Enter password" name="senha">
                    </div>
                    <button type="submit" class="btn btn-primary">Acessar</button>
                    <a href="form-criar-conta.php">Criar conta</a>
                </form>
            </div>
        </div>
    </div>
</body>

</html>