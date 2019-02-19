<?php
include 'mysql.php';
$database='question';
foreach(select('question,answer,agree',$_GET) as $v){
	$a[]=$v;
	exit(json_encode($a));	
}	
	
