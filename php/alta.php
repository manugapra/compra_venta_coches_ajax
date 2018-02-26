<?php

if(isset($_POST["m"])){
    extract($_POST);

    //ALTA PROVEEDOR
    if($m=="proveedor"){
        $resultado=insert("INSERT INTO proveedor (cif, nombre, direccion, telefono, disponible) VALUES ('$c','$n','$d',$t,'si')");
        
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
        $resultado=insert("INSERT INTO empleados (dni, nombre, apellidos,salario, disponible) VALUES ('$d','$n','$a',$s,'si')");
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
        $resultado=insert("INSERT INTO vehiculos (matricula, marca, modelo, tasacion, combustible, plazas, disponible) VALUES ('$matricula','$marca','$modelo','$tasacion','$combustible','$plazas','si')");

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
        $resultado=insert("INSERT INTO vehiculos (matricula, marca, modelo, tasacion, combustible, plazas, disponible) VALUES ('$matricula','$marca','$modelo','$tasacion','$combustible','$plazas', 'si')");
       

       $consultaId=cUltimoId();

        if($consultaId=="null"){
           $consultaId=0;
        } 


        

        $resultado2=insert("INSERT INTO camion (cargamax, tipocarga, cap_comb, id) VALUES ($carga, '$tipo', $capacidad, ".$consultaId.")");
       



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


    //ALTA CLIENTE
    if($m=="cliente"){
        $resultado=insert("INSERT INTO clientes (dni, nombre, apellidos, telefono, disponible) VALUES ('$d','$n','$a',$t, 'si')");
        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Cliente dado de alta correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ya existe un cliente dado de alta con ese DNI</div>';
            } else {
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
      
    }

     //REGISTRAR COMPRA
     if($m=="compra"){
        $resultado=insert("INSERT INTO compra (vehiculo, importe, fecha, proveedor, empleado, comentarios, disponible) VALUES ('$v',$i,'$f','$p','$e','$o', 'si')");
        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Compra registrada correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>El vehiculo seleccionado ya ha sido vendido</div>';
            } else {
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Ha ocurrido un error.</div>';
            }
        }
      
    }

    if($m=="venta"){
        $resultado=insert("INSERT INTO `venta`(`vehiculo`, `importe`, `fecha`, `cliente`, `empleado`, `comentarios`, `disponible`) VALUES ('$v',$i,'$f','$c','$e','$o','si')");
        venta($v);
        if($resultado==""){
            echo '<div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Venta registrada correctamente</div>';
        } else if ($resultado!=""){
            
            $errores = explode (" ", $resultado);
            if ($errores[0]=="Duplicate"){
                echo '<div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>El vehiculo seleccionado ya ha sido vendido</div>';
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
    

  function venta($vehiculo)
  {
      $conexion = new mysqli('localhost','root','','coches');
      $cadena = "UPDATE `vehiculos` SET `disponible`='no' WHERE `matricula`='".$vehiculo."'";
      $consulta = $conexion->query($cadena);
      $conexion->close();
  }    
?>