<?php
require_once "conexion.php";
$usuario=$_POST['logemail'];
$contra=$_POST['logpass'];
$consulta= "SELECT * FROM empleados";
$resultado= $conexion ->query ($consulta);
 while ($si = $resultado -> fetch()){
	if($usuario==$si["nombre"] && $contra==$si["password"]){
		$so=1;
		header ("location:../despues-login.html");
	}
}
if($so!=1){
	header ("location:https://www.youtube.com/watch?v=DLzxrzFCyOs");
}
?>