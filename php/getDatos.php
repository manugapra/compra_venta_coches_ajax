<?php 
if(isset($_GET["d"])){
    extract($_GET);
    //proveedor
    if ($d=='proveedor') 
	{
		$cadena = "SELECT `cif`, `nombre`, `direccion`, `telefono` FROM `proveedor` WHERE `cif`='".$proveedor."'";
		$consulta = consulta($cadena);
	}
	//empleado
	else if ($d=='empleado') {
		$cadena = "SELECT `dni`, `nombre`, `apellidos`, `salario` FROM `empleados` WHERE `dni`='".$empleado."'";
		$consulta = consulta($cadena);
	}
	//cliente
	else if ($d=='cliente') {
		$cadena = "SELECT  `dni`, `nombre`, `apellidos`, `telefono` FROM `clientes` WHERE `dni`='".$cliente."'";
		$consulta = consulta($cadena);
	}


}

function consulta($cadena)
{
	$conexion = new mysqli('localhost','root','','coches') or die('error al conectar');; 
	$conexion->query("SET NAMES 'utf8'");
	$consulta = $conexion->query($cadena);
	while ($resultado = $consulta->fetch_assoc()) 
	{
		$datos[] = $resultado;
	}

	echo json_encode($datos);
	$conexion->close();
}

?>