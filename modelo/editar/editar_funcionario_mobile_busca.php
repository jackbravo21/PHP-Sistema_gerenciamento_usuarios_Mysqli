<?php 

if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{


$pesquisar_funcionario = $_POST["pesquisar_funcionario"];
$campo_busca_funcionario = $_POST["campo_busca_funcionario"];

$sql = "SELECT * FROM tb_funcionarios WHERE {$campo_busca_funcionario} LIKE '%{$pesquisar_funcionario}%' ";

$consultar_funcionario = mysqli_query($conexao, $sql);
$array_funcionario = array();

while($linha_dados = mysqli_fetch_array($consultar_funcionario)){
	$array_funcionario[] = $linha_dados;
}


$smarty->assign("pesquisar_funcionario", $pesquisar_funcionario);
$smarty->assign("campo_busca_funcionario", $campo_busca_funcionario);

$smarty->assign("array_funcionario", $array_funcionario);
$smarty->display("editar_funcionario_mobile.tpl");
 
}

?>