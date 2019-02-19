<?php
include 'mysql.php';
$database='question';
foreach(select('question,answer',$_GET) as $v){
	if($v['answer'] == ''){
		$a[]=$v;
	}	
}	
exit(json_encode($a));
