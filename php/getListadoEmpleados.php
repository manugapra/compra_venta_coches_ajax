<?php

$sDatos = $_REQUEST["empleado"];

$oDatos = json_decode($sDatos);

$empleado = $oDatos->empleado;


// Configuración BASE DE DATOS MYSQL
$servidor  = "localhost";
$basedatos = "coches";
$usuario   = "root";
$password  = "";

// Creamos la conexión al servidor.
$conexion = mysqli_connect($servidor, $usuario, $password,$basedatos) or die(mysql_error());
mysqli_query( $conexion,"SET NAMES 'utf8'");

// Seleccionar la base de datos en esa conexion.
//mysql_select_db($basedatos, $conexion) or die(mysql_error());

// Consulta SQL para insertar en la bbdd
if ($empleado=='todos') 
{
	$sql = "SELECT `dni`, `nombre`, `apellidos`, `salario` FROM `empleados` WHERE `disponible`='si'";
}
else
{
	$sql = "SELECT `dni`, `nombre`, `apellidos`, `salario` FROM `empleados` WHERE `disponible`='si' and dni='".$empleado."'";
}


$resultado = mysqli_query($conexion,$sql) or die(mysql_error());

$sXML = '<?xml version="1.0" encoding="UTF-8"?>';
$sXML .= '<empleados>';

while ( $fila = mysqli_fetch_array($resultado)){
    $sXML .= '<empleado>';
    $sXML .= '<dni>'.$fila["dni"].'</dni>';
    $sXML .= '<nombre>'.$fila["nombre"].'</nombre>';;
    $sXML .= '<apellidos>'.$fila["apellidos"].'</apellidos>';
    $sXML .= '<salario>'.$fila["salario"].'</salario>';
    $sXML .= '</empleado>';
}
$sXML .= '</empleados>';
mysqli_close($conexion);

header("Content-Type: text/xml");

echo $sXML;

?>
