<?php
include 'mysql.php';
$database='collect';
if(isset($_GET['count'])){
	if(isset($_GET['question'])){
		foreach(select('collecter',$_GET) as $v){	
			exit($v[0]);	
		}
		exit();
	}	
	foreach(select('question,answer,agree',$_GET) as $v){
		$a[]=$v;
	
	}
	exit(json_encode($a));		
}	
if(isset($_POST['agree'])){	
	insert($_POST);
	exit('OK');
}
delete($_POST);	