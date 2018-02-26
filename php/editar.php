<?php 
if(isset($_POST["m"])){
    extract($_POST);

	//proveedor
	if ($m=='proveedor') 
	{
		$cadena = "UPDATE `proveedor` SET `nombre`='".$nombre."',`direccion`='".$direccion."',`telefono`=".$telefono." WHERE `cif`='".$cif."'";
		$consulta = update($cadena);
	}

}

function update($cadena)
{
	$conexion = new mysqli('localhost','root','','coches') or die('error al conectar');; 
	$conexion->query("SET NAMES 'utf8'");
	$consulta = $conexion->query($cadena);
	$conexion->close();

}	
 ?>
