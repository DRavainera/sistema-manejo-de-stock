<?php
$host="localhost";
$db="stocks";
$usuario="root";
$pass="";
$dsn = "mysql:host=$host;dbname=$db";

try {
    $cn = new PDO($dsn, $usuario, $pass);
    $cn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql="SELECT legajo,nombre FROM stock_legajos";
    $result=$cn->query($sql);
    $row = $result->fetchAll();       
    foreach($row as $rs){
        echo "<option value=\"".$rs['nombre']."\">".$rs['nombre']."</option>";
    }     
  } catch(PDOException $e) {
    echo "Fallo la conexion: " . $e->getMessage();
  }
  $cn=null;
?>