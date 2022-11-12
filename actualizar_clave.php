<?php
$Usuario=$_POST["usuario"];
$Clave=$_POST["clave"];
$NClave=$_POST["nclave"];
$conexion=mysql_connect("localhost","root","");
mysql_select_db("bd_seguimiento",$conexion);
$consult=mysql_query("UPDATE encargado SET password=$NClave WHERE username=$Usuario and password=$Clave");
echo "Se cambio la contraseña con éxito <br>";
echo "<a href=index.html> Volver al principio </a>";
?>