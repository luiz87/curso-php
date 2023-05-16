<?php
session_start();
$id_admin = 0;
if(isset($_SESSION['id_admin'])){
    $id_admin = $_SESSION['id_admin'];
}
?>