<?php
  require('./acceso.php');

  $conexion = new mysqli($host, $user, $password);

  if ($conexion->connect_error) {
    echo "Error:" . $conexion->connect_error;
  }

  $sql = 'CREATE DATABASE calendario_db';

  if ($conexion->query($sql) === TRUE) {
    echo "La base de datos calendario_db se creó exitosamente";
  }else {
    echo "Se presentó un error ".$conexion->error;
  }



  $conexion->close();
 ?>