<?php 

if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{

$alerta = "";
if($_POST){
	$nome_completo = $_POST["nome_completo"];
	$cpf = $_POST["cpf"];
	$endereco = $_POST["endereco"];
	$telefone = $_POST["telefone"];
	

	
	$sql = "SELECT * FROM tb_funcionarios WHERE cpf='$cpf'";
	$result = mysqli_query($conexao, $sql);

	if(mysqli_num_rows($result) > 0){
		$alerta = "<div class='alert-danger mb-3' role='alert'> 
		<span class='fas fa-exclamation-triangle mr-2'></span>O funcionário já existe no banco!</div>";
	}else{
		$sql_cadastra = "INSERT INTO tb_funcionarios (nome_completo, cpf, endereco, telefone) VALUES ('$nome_completo', '$cpf', '$endereco', '$telefone')";

		$cadastra = mysqli_query($conexao, $sql_cadastra);
		if($cadastra == ''){
			$alerta = "<div class='alert-danger mb-3' role='alert'> 
		<span class='fas fa-exclamation-triangle mr-2'></span>Erro ao Cadastrar!</div>";
		}else{
			$alerta = "<div class='alert-success mb-3' role='alert'> 
		<span class='fas fa-check-circle mr-2'></span>Cadastrado com Sucesso!</div>";
		}
	}
}

$smarty->assign("alerta", $alerta);
$smarty->display("registrar_funcionario.tpl");

}

?>