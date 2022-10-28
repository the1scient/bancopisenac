<?php 
require_once('configs.php');


$email = $_POST['email'];
$password = $_POST['password'];

$sql = $pdo->prepare("SELECT * FROM usuarios WHERE email = :email AND senha = :senha");
$sql->bindValue(':email', $email);
$sql->bindValue(':senha', $password);
$sql->execute();

echo $sql->rowCount();

if($sql->rowCount() > 0) {

    $dado = $sql->fetch();
    
    // redirecionar para home.php

    $_SESSION['id'] = $dado['id'];
    
    header("Location: ".SITE_URL."home.php");



}
else {

    echo "Email ou senha incorretos";



}




?>