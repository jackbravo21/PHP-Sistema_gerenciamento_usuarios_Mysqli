<?php 


if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{


$id_funcionario=$_GET["id"];
/*
$nome_completo = $_GET["nome_completo"];
$cpf = $_GET["cpf"];
$endereco = $_GET["endereco"];
$telefone = $_GET["telefone"];
*/

if($_GET["id"]!="" && isset($_GET["opc"]) && $_GET["opc"]=="del"){
	$id_funcionario=$_GET["id"];


	$sql = "DELETE FROM tb_funcionarios WHERE id_funcionario = '$id_funcionario'";
	$result = mysqli_query($conexao, $sql);
	if($result){
		echo "<script>
		alert('Funcionário excluido com sucesso!');
		location.replace('index.php?ac=editar_funcionario');
		</script>"; 
	}else{
		echo "<script>
		alert('O funcionário não foi excluido!');
		location.replace('index.php?ac=editar_funcionario');
		</script>"; 
	}

}else{
	$id_usuario=$_GET["id"];
	$sql = "SELECT * FROM tb_funcionarios WHERE id_funcionario='$id_funcionario' ";
$consultar_funcionarios = mysqli_query($conexao, $sql);

while($linha_dados = mysqli_fetch_array($consultar_funcionarios)){
	$id_funcionario = $linha_dados["id_funcionario"];
	$nome_completo = $linha_dados["nome_completo"];
	$cpf = $linha_dados["cpf"];
	$endereco = $linha_dados["endereco"];
	$telefone = $linha_dados["telefone"];
}

$smarty->assign("id_funcionario", $id_funcionario);
$smarty->assign("nome_completo", $nome_completo);
$smarty->assign("cpf", $cpf);
$smarty->assign("endereco", $endereco);
$smarty->assign("telefone", $telefone);
$smarty->display("excluir_func.tpl");
}

}

 ?>