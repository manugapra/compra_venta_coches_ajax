<?php

if(isset($_POST["m"])){
    extract($_POST);

    //ALTA PROVEEDOR
    if($m=="proveedor"){
        $resultado=insert("INSERT INTO proveedor (cif, nombre, direccion, telefono) VALUES ('$c','$n','$d',$t)");
        
        if($resultado==""){
            //Si no ha devuelto error
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Proveedor dado de alta correctamente</div>';
        } else if ($resultado!=""){
            //si ha devuelto error
            $errores = explode (" ", $resultado); //separa el mensaje de error para detectar el error
            if ($errores[0]=="Duplicate"){
                //en caso de entrada duplicada
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ya existe un proveedor dado de alta con ese CIF</div>';
            } else {
                //otro error no indicado
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
    }


    //ALTA EMPLEADO
    if($m=="empleado"){
        $resultado=insert("INSERT INTO empleados (dni, nombre, apellidos, num_ventas, salario) VALUES ('$d','$n','$a',0,$s)");
        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Empleado dado de alta correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ya existe un empleado dado de alta con ese DNI</div>';
            } else {
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
      
    }

    //ALTA COCHE
    if($m=="coche"){
        $resultado=insert("INSERT INTO vehiculos (matricula, marca, modelo, tasacion, combustible, plazas) VALUES ('$matricula','$marca','$modelo','$tasacion','$combustible','$plazas')");

        $consultaId=cUltimoId();

        if($consultaId=="null"){
           $consultaId=0;
        } 

        

        $resultado2=insert("INSERT INTO coche (num_puertas, tapiceria, tipocoche, id) VALUES ($puertas, '$tapiceria', '$tipo', ".$consultaId.")");

        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Vehiculo dado de alta correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ya existe un vehiculo dado de alta con esa matrícula.</div>';
            } else {
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
      
    }

    //ALTA CAMION
    if($m=="camion"){
        $resultado=insert("INSERT INTO vehiculos (matricula, marca, modelo, tasacion, combustible, plazas) VALUES ('$matricula','$marca','$modelo','$tasacion','$combustible','$plazas')");
       

       $consultaId=cUltimoId();

        if($consultaId=="null"){
           $consultaId=0;
        } 


        

        $resultado2=insert("INSERT INTO camion (cargamax, tipocarga, cap_comb, id) VALUES ($carga, '$tipo', $capacidad, ".$consultaId.")");
        echo "INSERT INTO camion (cargamax, tipocarga, cap_comb, id) VALUES ($carga, '$tipo', $capacidad, ".$consultaId.")";



        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Vehiculo dado de alta correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ya existe un vehiculo dado de alta con esa matrícula.</div>';
            } else {
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
      
    }
}


     function insert($consulta){

        $mysqli = new mysqli("localhost", "root", "", "coches");
      
      
      
      /* comprobar la conexión */
      
      if (mysqli_connect_errno()) {
      
      printf("Falló la conexión: %s\n", mysqli_connect_error());
      
      exit();
      
      }
      
      $mysqli->query($consulta);
      
        
        return mysqli_error($mysqli);
      
      
      
      $mysqli->close();
      
      }

   


      //FUNCION PARA HACER CONSULTAS
      function consulta($cadena){
$mysqli = new mysqli("localhost", "root", "", "coches");

mysqli_set_charset ( $mysqli , "utf8" );
/* comprobar la conexión */

if (mysqli_connect_errno()) {

printf("Falló la conexión: %s\n", mysqli_connect_error());

exit();

}

 $cont=0;

$consulta = $cadena;



if ($resultado = $mysqli->query($consulta)) {

if ( $resultado->num_rows!=0){

  while ($fila = $resultado->fetch_row()) {



    $columna[$cont]=$fila;

    $cont++;



  }

  return $columna;

  /* liberar el conjunto de resultados */



}

  $resultado->close();





/* cerrar la conexión */

$mysqli->close();

} else {

  return 0;

}

}
   
function cUltimoId(){
  $mysqli = new mysqli("localhost", "root", "", "coches");

mysqli_set_charset ( $mysqli , "utf8" );
/* comprobar la conexión */

if (mysqli_connect_errno()) {

printf("Falló la conexión: %s\n", mysqli_connect_error());

exit();

}

 $cont=0;

$consulta = "SELECT MAX(id_v) as id from vehiculos";



if ($resultado = $mysqli->query($consulta)) {

if ( $resultado->num_rows!=0){

  while ($fila = $resultado->fetch_row()) {



    $columna[$cont]=$fila;

    $cont++;



  }

  return $columna[0][0];

  /* liberar el conjunto de resultados */



}

  $resultado->close();





/* cerrar la conexión */

$mysqli->close();

} else {

  return 0;

}
}
      
?>