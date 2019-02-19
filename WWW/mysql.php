<?php
$dsn = "mysql:host=localhost;dbname=zhihu";
$db = new PDO($dsn, 'root', 'root');
function insert($array){
	$database=$GLOBALS['database'];
	$i=0;
	foreach($array as $k=>$v){
		$i==0?$kk=$k:$kk.=','.$k;
		$i==0?$vv="'$v'":$vv.=",'$v'";
		$i++;
	}
	$GLOBALS['db']->exec("INSERT INTO $database($kk) values ($vv)");
};
function delete($array=''){
	$database=$GLOBALS['database'];
	if(!$array){
		$GLOBALS['db']->exec("delete from $database");
	}else{
		if(is_array($array)){
			$i=0;
			foreach($array as $k=>$v){
				$i==0?$arr="$k='$v'":$arr.=" and $k='$v'";
				$i++;			
			}
			$array=$arr;
		}	
		$GLOBALS['db']->exec("delete  from $database where $array");
	}
};
function update($array,$column_name=''){
	$database=$GLOBALS['database'];
	$i=0;
	foreach($array as $k=>$v){
		$i==0?$arr="$k='$v'":$arr.=",$k='$v'";
		$i++;			
	}
	if(!$column_name){
		$GLOBALS['db']->exec("update $database set $arr");
	}else{
		if(is_array($column_name)){
			$i=0;
			foreach($column_name as $k=>$v){
				$i==0?$array="$k='$v'":$array.=" and $k='$v'";
				$i++;			
			}
			$column_name=$array;
		}	
		$GLOBALS['db']->exec("update $database set $arr where $column_name");
	}	
};
function select($column_name,$array='',$limit=''){
	$database=$GLOBALS['database'];
	if(!$array){
		$res=$GLOBALS['db']->query("select $column_name from $database $limit");
	}else{
		if(is_array($array)){
			$i=0;
			foreach($array as $k=>$v){
				$i==0?$arr="$k='$v'":$arr.=" and $k='$v'";
				$i++;			
			}
			$array=$arr;
		}	
		$res=$GLOBALS['db']->query("select $column_name from $database where $array $limit");
	}	
	return $res;
};