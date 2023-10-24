<?php 
	require('lib.php');

  /*$nombreTabla = 'usuario';
  $props['Id']='INT NOT NULL PRIMARY KEY AUTO_INCREMENT';
  $props['Nombre']= 'VARCHAR(100) NOT NULL';//para hacer una tabla usuarios 
  $props['FechaNacimiento']= 'date NOT NULL';
  $props['Username']= 'VARCHAR(100) NOT NULL';
  $props['Password']= 'VARCHAR(100) NOT NULL';*/

  $nombreTabla = 'evento';
  $props['Id']= 'INT NOT NULL PRIMARY KEY AUTO_INCREMENT';//para hacer una tabla eventos
  $props['IdUsuario']= 'INT NOT NULL';
  $props['Titulo']= 'VARCHAR (100) NOT NULL';
  $props['FechaInicio']= 'date NOT NULL';
  $props['HoraInicio']= 'time DEFAULT NULL';
  $props['FechaFinalizacion']= 'date DEFAULT NULL';
  $props['HoraFinalizacion']= 'time DEFAULT NULL';
  $props['DiaCompleto']= 'tinyint (1) NOT NULL';


	$conector = new ConectorBD();

  if ($conector->initConexion('calendario_db')=='OK') {

  	$query = $conector->getNewTableQuery($nombreTabla, $props);
   if ($conector->ejecutarQuery($query)) {
      echo "La tabla se creó exitosamente";
    }else {
      echo "Se produjo un error al crear la tabla";
    }
    $conector->cerrarConexion();
  }else {
    echo $conector->initConexion();
  }

 ?>