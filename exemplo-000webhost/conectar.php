<?php

function conectar(){
    $id = "";
    $senha = "";

    $hostweb = true;
    if($hostweb){
        $id = "id20602874_";
        $senha = "Xnqi\jZ*(8Tb^4B=";
    }

    $servidor = "localhost";
    $usuario = $id."root";
    $banco = $id."mydb";

    $con = new mysqli($servidor, $usuario, $senha, $banco);

    if($con->connect_error){
        die("Erro :".$con->connect_error);
    }
    //echo "Ok ao conectar";
    return $con;
}

function incluir($nome, $github, $webhost){
    $con = conectar();
    $sql = "insert into aluno(nome, github, webhost) values('$nome','$github','$webhost')";
    $con->query($sql);
}

function listar(){
    $con = conectar();
    $sql = "select * from aluno";
    $resultado = $con->query($sql);
    return $resultado;
}
?>