<?php

if(isset($_POST["m"])){
    extract($_POST);

    //ALTA PROVEEDOR
    if($m=="prov"){
       $resultado=update("UPDATE proveedor SET disponible='no' WHERE cif='$p'");

       
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Se ha eliminado al proveedor correctamente.</div>';
      
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