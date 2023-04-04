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
function incluir($nome, $email){
    $con = conectar();
    $sql = "insert into pessoa(nome, email) values('$nome','$email')";
    if($con->query($sql) === true){
        return "Ok ao gravar";
    }else{
        return "Erro: $sql".$con->error;
    }
}

?>