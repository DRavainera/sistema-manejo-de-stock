<?php

$host="localhost";
$db="stocks";
$usuario="root";
$pass="";
$dsn = "mysql:host=$host;dbname=$db";
$codigo = $_GET['codigo'];

try {
    $cn = new PDO($dsn, $usuario, $pass);
    $cn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql="SELECT codigo, codgaci, descripcion FROM stock_articulos WHERE codigo=".$codigo.";";
    $result=$cn->query($sql);
    $row = $result->fetchAll();       
    foreach($row as $rs){
        echo "<tr><td><input type=\"radio\" name=\"articulo\" class=\"form-check-input\" value=\"".$rs['codgaci']."\"></td><td>".$rs['codigo']."</td><td>".$rs['codgaci']."</td><td>".$rs['descripcion']."</td></tr>";
    }  
  } catch(PDOException $e) {
    echo "Fallo la conexion: " . $e->getMessage();
  }
  $cn=null;
?>