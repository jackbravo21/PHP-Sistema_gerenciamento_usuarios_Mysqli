<?php 



$sql = "SELECT * FROM tb_funcionarios";
$consultar_funcionarios = mysqli_query($conexao, $sql);
$array_funcionarios = array();

while($linha_dados = mysqli_fetch_array($consultar_funcionarios)){
	$array_funcionarios[] = $linha_dados;
}

$data_atual=date("d/m/Y");
$smarty->assign("data_atual", $data_atual);
$smarty->assign("array_funcionarios", $array_funcionarios);
$smarty->display("rel_funcionario.tpl");



 ?>