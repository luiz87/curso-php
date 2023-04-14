<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Lista de alunos</title>
</head>
<body>
    <?php
    include "conectar.php";
        if(isset($_POST['nome'])){
            
            $nome = $_POST['nome'];
            $github = $_POST['link-github'];
            $webhost = $_POST['link-webhost'];
            echo "request post $nome , $github, $webhost";
            incluir($nome, $github, $webhost);
        }
    ?>
    <form action="cadastrar-aluno.php" method="POST">
        Nome Completo: <br>
        <input type="text" name="nome" required><br>
        Link GitHub: <br>
        <input type="text" name="link-github" required><br>
        Link WebHost: <br>
        <input type="text" name="link-webhost" required><br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    <table border=1>
        <tr>
            <th>Nome</th>
            <th>Link GitHub</th>
            <th>Link WebHost</th>
        </tr>
        <?php
            $lista = listar();
            while ($linha = $lista->fetch_assoc()) {
                $nome = $linha['nome'];
                $github = $linha['github'];
                $webhost = $linha['webhost'];
                echo "
                <tr>
                    <td>$nome</td>
                    <td><a target='_blank' href='$github'>$github</a></td>
                    <td><a target='_blank'  href='$webhost'>$webhost</a></td>
                </tr>
                ";
            }
        ?>
    </table>
</body>
</html>