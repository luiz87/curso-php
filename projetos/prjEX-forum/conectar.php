<?php
function conectar($sql){
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $banco = "mydb";
    $id = "";

    if(false){
        $id = "id98sdfj_";
    }

    $senha = $id.$senha;
    $banco = $id.$banco;

    $con = new mysqli($servidor, $usuario, $senha, $banco);

    if($con->connect_error){
        die("Erro :".$con->connect_error);
    }
    return $con->query($sql);
}

?>