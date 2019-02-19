<?php
include 'mysql.php';
$database='question';
if(!empty($_GET)){
	foreach(select('answer',$_GET) as $v){
		if(!empty($v[0])){
			exit($v[0]);
		}		
	}		
exit();
}else{
	foreach(select('agree',$_POST) as $v){
		print_r($v);
		update(['agree'=>$v[0]+1],$_POST);
		$database='collect';
		update(['agree'=>$v[0]+1],$_POST);
	}		
	echo $v[0]+1;
}	