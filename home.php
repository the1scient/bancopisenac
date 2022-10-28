<?php 
require_once('global.php');

if(!isset($_SESSION['id'])) {
    header("Location: ".SITE_URL."login.php");
    exit;
}



?>