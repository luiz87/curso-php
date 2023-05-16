<?php
include('conectar.php');
if(isset($_POST['comentario'])){
    $comentario = $_POST['comentario'];
    $id_admin = $_POST['id_admin'];
    $id_publicacao = $_POST['id_publicacao'];
    $sql = "insert into comentario(id_admin, id_publicacao, opniao) values ('$id_admin','$id_publicacao','$comentario')";
    conectar($sql);
    echo "<script>window.location.replace('publicacao.php?id=$id_publicacao')</script>";
}
?>
