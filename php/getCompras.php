<?php 
header('Content-Type: application/json');
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); 

	$conexion = new mysqli('localhost','root','','coches') or die('error al conectar');
	$conexion->query("SET NAMES 'utf8'");
	$cadena = "SELECT * FROM `compra` WHERE `disponible`='si'";
	$consulta = $conexion->query($cadena);
	
	while ($resultado = $consulta->fetch_assoc()) 
	{
		$datos[] = $resultado;
	}

	echo json_encode($datos); 
	$conexion->close();

 ?>