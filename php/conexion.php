<?php 
try{
	$conexion = new PDO('mysql:host=localhost;dbname=empleados',"root","");
}
catch(PDOException $e){
	echo "ERROR".$e->getMessage();
}
?>