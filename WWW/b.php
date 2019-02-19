<?php
$dsn = "mysql:host=localhost;dbname=test";
$db = new PDO($dsn, 'root', 'root');
$id=$_GET['id'];
$db->exec("INSERT INTO speed(num) values $id");