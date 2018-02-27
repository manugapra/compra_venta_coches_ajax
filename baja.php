<?php

if(isset($_POST["m"])){
    extract($_POST);

    //ALTA PROVEEDOR
    if($m=="prov"){
       $resultado=update("UPDATE proveedor SET disponible='no' WHERE cif='$p'");

       
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Empleado dado de baja.</div>';
      
    }
    if($m=="emp"){
      $resultado=update("UPDATE empleados SET disponible='no' WHERE dni='$e'");
     
      
           echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Proveedor dado de baja.</div>';
     
   }
   if($m=="veh"){
    $resultado=update("UPDATE vehiculos SET disponible='no' WHERE matricula='$v'");
    echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Vehiculo dado de baja.</div>';
     
    
         
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