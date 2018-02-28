<?php 
	$proveedor = $_GET['proveedor'];

	$conexion = new mysqli('localhost','root','','coches');
	if ($proveedor=='todos') 
		$cadena = "SELECT * FROM `proveedor` WHERE `disponible`='si'";
	else
		$cadena="SELECT * FROM `proveedor` WHERE `disponible`='si' and `cif`='".$proveedor."'";

	$consulta = $conexion->query($cadena);

	while ($resultado = $consulta->fetch_assoc()) 
	{
		$array[] = $resultado;
	}

	echo json_encode($array);

	$conexion->close();

 ?>