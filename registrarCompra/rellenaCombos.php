<?php

    if(isset($_GET["c"])){
        extract($_GET);
        if($c=='prov'){
            datosCombo("SELECT cif, nombre from proveedor");
        }
        if($c=='emp'){
            datosCombo("SELECT dni, nombre, apellidos from empleados");
        }
        if($c=='veh'){
            datosCombo("SELECT matricula, marca, modelo from vehiculos");
        }
    }
    
    function datosCombo($sql){
        $mysqli = new mysqli("localhost", "root", "", "coches");
      
      mysqli_set_charset ( $mysqli , "utf8" );
      /* comprobar la conexión */
      
      if (mysqli_connect_errno()) {
      
      printf("Falló la conexión: %s\n", mysqli_connect_error());
      
      exit();
      
      }
      
       $cont=0;
      
      $consulta = $sql;
      
      if ($resultado = $mysqli->query($consulta)) {
      
      if ( $resultado->num_rows!=0){
      
        while ($fila = $resultado->fetch_row()) {
      
      
      
          $columna[$cont]=$fila;
      
          $cont++;
      
      
      
        }
      
        echo json_encode($columna);
          
      }
      
        $resultado->close();
                      
      /* cerrar la conexión */
      
      $mysqli->close();
      
      } else {
      
         echo json_encode(0);
      
        }
    }

?>