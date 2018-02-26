<?php 
header('Content-Type: application/json');
header('Cache-Control: no-cache, must-revalidate');
header('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); 
	$proveedor = $_GET['cif'];

	$conexion = new mysqli('localhost','root','','coches') or die('error al conectar');; 
	$conexion->query("SET NAMES 'utf8'");
	$cadena = "SELECT `cif`, `nombre`, `direccion`, `telefono` FROM `proveedor` WHERE `cif`='".$proveedor."'";
	$consulta = $conexion->query($cadena);
	
	while ($resultado = $consulta->fetch_assoc()) 
	{
		$datos[] = $resultado;
	}

	echo json_encode($datos); 
	$conexion->close();

 ?>