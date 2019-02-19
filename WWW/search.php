<?php
$dsn = "mysql:host=localhost;dbname=zhihu";
$db = new PDO($dsn, 'root', 'root');
$question=$_GET['question'];
if($question) $res=$db->query("select * from question where question like '%$question%' limit 10");
foreach($res as $question){
	$q[]=$question;
}
echo json_encode($q);	
