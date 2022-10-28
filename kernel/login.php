<?php 
require_once('configs.php');


$cpf = $_POST['cpf'];

// remove all illegal characters from cpf
$cpf = preg_replace("/[^0-9]/", "", $cpf);

$password = htmlspecialchars($_POST['password']);

$sql = $pdo->prepare("SELECT * FROM usuarios WHERE cpf = :cpf AND senha = :senha");
$sql->bindValue(':cpf', $cpf);
$sql->bindValue(':senha', md5($password));
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