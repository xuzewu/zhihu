<?php 
include 'mysql.php';
$database='question';
foreach(select('id',$_GET) as $v){
	$id=$v[0];
}	
foreach(select('question',['answer'=>''],"and id>$id limit 5") as $l){
	$a[]=$l;
}
exit(json_encode($a));
	