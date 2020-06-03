<?php 
$alerta = "";

if($_POST){
	$usuario = $_POST["usuario"];
	$senha = $_POST["senha"];

	$sql = "SELECT * FROM tb_usuarios WHERE usuario='$usuario' AND senha = '$senha' ";
	$result = mysqli_query($conexao, $sql);

	if(mysqli_num_rows($result) > 0){
		$_SESSION["usuario"] = $usuario;
		echo "<script>alert('Usuário logado. Bem vindo usuário \"".$usuario. "\"!'); location.replace('index.php');</script>";

	}else{
		$alerta = "<div class='alert-danger mb-3' role='alert'> 
		<span class='fas fa-exclamation-triangle mr-2'></span>Erro ao Logar! Usuário ou senha incorretos!</div>";
	}
}

$smarty->assign("alerta", $alerta);
$smarty->display("login.tpl");

 ?>