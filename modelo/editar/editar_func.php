<?php 


if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{


if($_POST){
	$id_funcionario = $_POST["id_funcionario"];
	$nome_completo = $_POST["nome_completo"];
	$cpf = $_POST["cpf"];
	$endereco = $_POST["endereco"];
	$telefone = $_POST["telefone"];

	

	$sql = "UPDATE tb_funcionarios SET nome_completo = '$nome_completo', cpf = '$cpf', endereco = '$endereco', telefone = '$telefone' WHERE id_funcionario = '$id_funcionario' ";

	$result = mysqli_query($conexao, $sql);
	if($result == ''){
		
		echo "<script>
		alert('Erro ao Atualizar');
		location.replace('index.php?ac=editar_funcionario&id= ". $_GET["id"] ." ');
		</script>"; 
		}else{
			
			echo "<script>
		alert('Editado com sucesso!');
		location.replace('index.php?ac=editar_funcionario');
		</script>"; 
		
	}

}


$id_funcionario = $_GET["id"];

$sql = "SELECT * FROM tb_funcionarios WHERE id_funcionario='$id_funcionario'";
$consultar = mysqli_query($conexao, $sql);

while($linha_dados = mysqli_fetch_array($consultar)){
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
$smarty->display("editar_func.tpl");

}

?>