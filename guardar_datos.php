<?php

$host="localhost";
$db="stocks";
$usuario="root";
$pass="";
$dsn = "mysql:host=$host;dbname=$db";
$cantidad = $_GET['cantidad'];
$legajo = $_GET['legajo'];
$codgaci = $_GET['codgaci'];
$vale = $_GET['vale'];
date_default_timezone_set('America/Argentina/Buenos_Aires');
$fecha = date('m/d/Y');
$hora = date('g:ia');
try {
    $cn = new PDO($dsn, $usuario, $pass);
    $cn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql1="SELECT codvale FROM stock_codigos;";
    $result1=$cn->query($sql1);
    $row1 = $result1->fetchAll();
    $sql2="SELECT legajo, nombre FROM stock_legajos WHERE nombre=\"".$legajo."\";";
    $result2=$cn->query($sql2);
    $row2 = $result2->fetchAll();
    $sql3="SELECT codigo, codgaci, descripcion FROM stock_articulos WHERE codgaci=\"".$codgaci."\";";
    $result3=$cn->query($sql3);
    $row3 = $result3->fetchAll();       
    foreach($row1 as $rs1){
        foreach($row2 as $rs2){
            foreach($row3 as $rs3){
                $sql4 = "INSERT INTO stock_vales(codigo, codgaci, descripcion, legajo, nombre, vale, fecha, hora) VALUES (".$rs3['codigo'].",\"".$rs3['codgaci']."\",\"".$rs3['descripcion']."\",".$rs2['legajo'].",\"".$rs2['nombre']."\",".$rs1['codvale'].",".$fecha.",\"".$hora."\");";
                $result4 = $cn->exec($sql4);
            }
        }
    }  
  } catch(PDOException $e) {
    echo "Fallo la conexion: " . $e->getMessage();
  }
  $cn=null;
?>