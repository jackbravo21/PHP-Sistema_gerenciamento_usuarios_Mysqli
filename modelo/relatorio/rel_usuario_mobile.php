<?php 



$sql = "SELECT * FROM tb_usuarios";
$consultar_usuarios = mysqli_query($conexao, $sql);
$array_usuarios = array();

while($linha_dados = mysqli_fetch_array($consultar_usuarios)){
	$array_usuarios[] = $linha_dados;
}

$data_atual=date("d/m/Y");
$smarty->assign("data_atual", $data_atual);
$smarty->assign("array_usuarios", $array_usuarios);
$smarty->display("rel_usuario_mobile.tpl");



 ?>