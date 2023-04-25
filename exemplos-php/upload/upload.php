<?php
// onde os arquivos serão salvos
$pasta = "arquivos/";
$arquivo = $pasta.basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$tipoArquivo = strtolower(pathinfo($arquivo,PATHINFO_EXTENSION));
if(isset($_POST["submit"])){
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false){
        echo "É uma imagem ".$arquivo;
    }else{
        echo "Não é uma imagem!<br>";
        $uploadOk = 0;
    }

    // teste se o arquivo já existe na pasta
    if(file_exists($arquivo)){
        echo "Arquivo já existente tente renomear ou enviar outro arquivo!<br>";
        $uploadOk = 0;
    }

    // Verifica o tamanho do arquivo
    if($_FILES["fileToUpload"]["size"] >= 500000){
        echo "Arquivo muito grande supera o tamanho de 500KB!<br>";
        $uploadOk = 0;
    }

    // Verifica o tipo de imagem permitido
    if($tipoArquivo != "jpg" && $tipoArquivo != "jpeg" && $tipoArquivo != "png" && $tipoArquivo != "gif"){
        echo "Tipo de arquivo não permitido!<br>";
        $uploadOk = 0;
    }

    if($uploadOk == 0){
        echo "Desculpe, não será possivel fazer o upload.";
    }else{
        if(move_uploaded_file($_FILES["fileToUpload"]["tmp_name"],$arquivo)){
            echo "Ok ao fazer o upload.";
        }else{
            echo "Desculpe, erro inesperado ao fazer o upload.";
        }
    }
}

?>