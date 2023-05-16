<?php
function conectar($sql){
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "mydb";
    $id = "";

    if(true){
        $id = "id20602874_";
        $senha = "Xnqi\jZ*(8Tb^4B=";
    }

    $usuario = $id.$usuario;
    $banco = $id.$banco;

    $con = new mysqli($servidor, $usuario, $senha, $banco);

    if($con->connect_error){
        die("Erro :".$con->connect_error);
    }
    return $con->query($sql);
}

?>