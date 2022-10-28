<?php
@session_start();

// define db variables
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'dinobank');

$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME, DB_USER, DB_PASS) or die('Não foi possível conectar-se ao banco de dados.');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// pdo utf-8    
$pdo->exec("SET NAMES 'utf8'");

define('SITE_URL', 'http://localhost/');
define('ASSETS_URL', SITE_URL . 'assets/');
define('SITE_NAME', 'DinoBank');
define('SITE_VERSION', '1.0');




