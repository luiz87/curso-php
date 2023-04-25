<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Exemplo Upload</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <form action="upload.php" method="post" enctype="multipart/form-data">
            Selecione a imagem:<br>
            <input type="file" name="fileToUpload" class="btn btn-outline-info"><br><br>
            <input type="submit" value="Enviar Imagem" name="submit" class="btn btn-success">
        </form>
    </div>
</body>

</html>