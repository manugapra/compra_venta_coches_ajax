<?php 
	$cliente = $_GET['cliente'];

	$conexion = new mysqli('localhost','root','','coches');
	if ($cliente=='todos') 
		$cadena = "SELECT * FROM `clientes` WHERE `disponible`='si'";
	else
		$cadena="SELECT * FROM `clientes` WHERE `disponible`='si' and `dni`='".$cliente."'";

	$consulta = $conexion->query($cadena);

	while ($resultado = $consulta->fetch_assoc()) 
	{
		$array[] = $resultado;
	}

	echo json_encode($array);

	$conexion->close();

 ?>