<?php 
include 'mysql.php';
$database='user';
if($_POST['count']){
	foreach(select('count',$_GET) as $v){	
		exit($v[0]);
	}
	exit(insert($_POST));
}else{
	foreach(select('count,password',$_GET) as $v){	
		if($v){
			echo 'success';
		}	
	}		
}