<?php 
if(isset($_POST["m"])){
    extract($_POST);

	//proveedor
	if ($m=='proveedor') 
	{
		$cadena = "UPDATE `proveedor` SET `nombre`='".$nombre."',`direccion`='".$direccion."',`telefono`=".$telefono." WHERE `cif`='".$cif."'";
		$consulta = update($cadena);
	}
	//empleado
	else if ($m=='empleado') {
		$cadena = "UPDATE `empleados` SET `nombre`='".$nombre."',`apellidos`='".$apellidos."',`salario`='".$salario."' WHERE `dni`='".$dni."'";
		$consulta = update($cadena);
		//echo true;
	}
	//cliente
	elseif ($m=='cliente') 
	{
		$cadena = "UPDATE `clientes` SET `nombre`='".$nombre."',`apellidos`='".$apellidos."',`telefono`='".$telefono."' WHERE `dni`='".$dni."'";
		$consulta = update($cadena);
		//echo true;
	}

	//vehiculo
	else if ($m=='vehiculo')
	{
		$cadena = "UPDATE `vehiculos` SET `matricula`='".$matricula."',`tasacion`=".$tasacion." WHERE `matricula`='".$matricula."'";
		$consulta = update($cadena);
		//echo true;
		
	}

	//venta
	else if ($m=='venta')
	{
		$cadena = "UPDATE `venta` SET `importe`=".$importe.",`comentarios`='".$comentario."' WHERE `vehiculo`='".$vehiculo."'";
		$consulta = update($cadena);
		//echo true;
		
	}
	//compra
	else if ($m=='compra')
	{
		$cadena = "UPDATE `compra` SET `importe`=".$importe.",`comentarios`='".$comentario."' WHERE `vehiculo`='".$vehiculo."'";
		$consulta = update($cadena);
		//echo true;	
	}
	//reparacion
	else
	{
		$cadena = "UPDATE `reparacion` SET `desc_rep`='".$descripcion."',`coste`='".$coste."' WHERE vehiculo='".$vehiculo."'";
		$consulta = update($cadena);
		//echo true;	
	}

	

}

function update($cadena)
{
	$conexion = new mysqli('localhost','root','','coches') or die('error al conectar');; 
	$conexion->query("SET NAMES 'utf8'");
	$consulta = $conexion->query($cadena);
	if ($consulta) 
		echo true;
	else
		echo false;
	$conexion->close();

}	
 ?>
