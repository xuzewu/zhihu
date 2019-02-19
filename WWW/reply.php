<?php
include 'mysql.php';
$database='reply';
if(isset($_GET['pid'])){
	foreach(select('replyer,replyd,reply',$_GET) as $v){	
		$a[]=$v;	
	}
	isset($a) ? exit(json_encode($a)) : exit();	
}
insert($_POST);
echo 'ok';