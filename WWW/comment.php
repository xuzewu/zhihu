<?php
include 'mysql.php';
$database='comment';
if(isset($_GET['commenter'])){
	foreach(select('comment',$_GET) as $v){	
		$a=$v[0];	
	}
	isset($a) ? exit($a) : exit();	
}
if(isset($_GET['count'])){	
	foreach(select('id,commenter,comment',$_GET) as $v){	
		$a[]=$v;
	}
	isset($a) ? exit(json_encode($a)) : exit();	
}	
insert($_POST);
