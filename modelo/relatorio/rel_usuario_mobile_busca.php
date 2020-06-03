<?php 

if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{

$pesquisar_usuario = $_POST["pesquisar_usuario"];
$campo_busca = $_POST["campo_busca"];

$sql = "SELECT * FROM tb_usuarios WHERE {$campo_busca} LIKE '%$pesquisar_usuario%' ";

$consultar_usuarios = mysqli_query($conexao, $sql);
$array_usuarios = array();

while($linha_dados = mysqli_fetch_array($consultar_usuarios)){
	$array_usuarios[] = $linha_dados;
}

$data_atual=date("d/m/Y");
$smarty->assign("data_atual", $data_atual);

$smarty->assign("pesquisar_usuario", $pesquisar_usuario);
$smarty->assign("campo_busca", $campo_busca);

$smarty->assign("array_usuarios", $array_usuarios);
$smarty->display("rel_usuario_mobile.tpl");
 
}

 ?>