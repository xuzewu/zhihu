<?php
include 'mysql.php';
$database='agree';
if(isset($_GET['count'])){
	foreach(select('agreeer',$_GET) as $v){	
		exit($v[0]);	
	}
	exit();
}	
if(isset($_POST['agree'])){	
	exit(insert($_POST));
}

delete($_POST);	