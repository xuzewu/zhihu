<?php
include 'mysql.php';
$database='main';
if($_POST){
	if(!empty($_POST['sentence'])){
		$_POST['topic']='语录';
			insert($_POST);
	}
	if(!empty($_POST['title'])){
		$_POST['topic']='文集';
			insert($_POST);
	}
}else{
	if(isset($_GET['title'])){
		foreach(select('content','',$_GET) as $v){	
			$a[]=$v;
		}	
	}elseif(isset($_GET['topic'])){
		if($_GET['topic']=='文集'){
			foreach(select('title,content','',$_GET) as $v){	
				$a[]=$v;
			}
		}else{
			foreach(select('sentence','',$_GET) as $v){	
				$a[]=$v;
			}
		}	
	}else{
		foreach(select('title') as $v){	
			$a[]=$v;
		}		
	}	
	exit(json_encode($a));
}	
	
