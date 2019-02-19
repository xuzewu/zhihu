<?php 
include 'mysql.php';
$database='question';
if($_POST){
	foreach(select('question',$_POST) as $v){
		$a=$v;
	}
	if(empty($v)){
		exit(insert($_POST));
	}else{
		exit('问题已存在,请勿重复提问');
	}
}else{		
	if(isset($_GET['question'])){
		foreach(select('question,count,answer,agree',$_GET) as $v){
			if($v['answer'] != ''){
				$a[]=$v;
			}	
		}	
		exit(json_encode($a));
	}	
	if(isset($_GET['prev'])){
		foreach(select('id',$_GET) as $v){
			$id=$v[0];
		}	
		foreach(select('question',['answer'=>''],"and id>$id limit 5") as $l){
			$a[]=$l;
		}
		exit(json_encode($a));
	}	
	foreach(select('question',['answer'=>''],"order by id limit 5") as $l){
		$a[]=$l;
	}
	echo json_encode($a);
}	
