<?php 
	class ConectorBD
  {
    private $host = 'localhost';
    private $user = 'root';
    private $password = '';
    private $conexion;

    function initConexion($nombre_db){
      $this->conexion = new mysqli($this->host, $this->user, $this->password, $nombre_db);
      if ($this->conexion->connect_error) {
        return "Error:" . $this->conexion->connect_error;
      }else {
        return "OK";
      }
    }

    function getNewTableQuery($nombre_tbl, $campos){
      $sql = 'CREATE TABLE '.$nombre_tbl.' (';
      $length_array = count($campos);
      $i = 1;
      foreach ($campos as $key => $value) {
        $sql .= $key.' '.$value;
        if ($i!= $length_array) {
          $sql .= ', ';
        }else {
          $sql .= ');';
        }
        $i++;
      }
      return $sql;
    }

    function nuevaRelacion($from_tbl, $to_tbl, $from_field, $to_field){
        $sql= 'ALTER TABLE '.$from_tbl.' ADD FOREIGN KEY ( '.$from_field.') REFERENCES '.$to_tbl.'('.$to_field.');';
        if ($this->ejecutarQuery($sql)) {
          return true;
        }else return false;
      }
      

    function ejecutarQuery($query){
      return $this->conexion->query($query);
    }

    function cerrarConexion(){
      $this->conexion->close();
    }
  }
 ?>