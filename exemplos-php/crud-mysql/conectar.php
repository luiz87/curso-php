<?php
// função para fazer a conexão com o banco de dados/
// essa função retorna uma variavel que tem acesso ao BD.
function conectar(){
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";

    $con = new mysqli($servidor, $usuario, $senha, "mydb");

    if($con->connect_error){
        die("Erro :".$con->connect_error);
    }
    //echo "Ok ao conectar";
    return $con;
}

// função para incluir uma nova pessoa na tabela
function incluir($nome, $email, $cpf, $sexo, $escolaridade, $senha){
    $con = conectar();
    $sql = "insert into pessoa(nome, email, cpf, sexo, escolaridade, senha) 
            values('$nome','$email','$cpf', '$sexo','$escolaridade', '$senha')";
    if($con->query($sql) === true){
        return "Ok ao gravar";
    }else{
        return "Erro: $sql".$con->error;
    }
}

// buscar todas as pessoas que estão gravadas no banco
function listar(){
    $con = conectar();
    $sql = "select id, ucase(nome) as nome, email, cpf, ucase(sexo) as sexo from pessoa";
    $resultado = $con->query($sql);
    return $resultado;
}

function buscar($id){
    $con = conectar();
    $sql = "select id, nome, email, cpf, sexo, escolaridade from pessoa where id = $id";
    $resultado = $con->query($sql);
    $resultado = $resultado->fetch_assoc();
    return $resultado;
}

function alterar($id, $nome, $email, $cpf, $sexo, $escolaridade){
    $con = conectar();
    $sql = "update pessoa set 
            nome = '$nome', email = '$email', cpf = '$cpf', sexo = '$sexo', escolaridade = '$escolaridade'
            where id = $id";
    if($con->query($sql) === true){
        return "Ok ao Atualizar";
    }else{
        return "Erro: $sql".$con->error;
    }
}

function apagar($id){
    $con = conectar();
    $sql = "delete from pessoa where id = $id";
    if($con->query($sql) === true){
        return "Ok ao Apagar";
    }else{
        return "Erro: $sql".$con->error;
    }
}

?>