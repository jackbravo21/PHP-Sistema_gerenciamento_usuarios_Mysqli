<?php 

include("libs/Smarty.class.php");
$smarty = new smarty;

function conectar(){
	$servidor = "localhost";
	$usuario = "root";
	$senha = "";
	$bd = "sistemasmartycrud1";

	$con = new mysqli($servidor, $usuario, $senha, $bd);
	return $con;
}



 ?>