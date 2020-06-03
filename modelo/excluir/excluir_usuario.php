<?php 

if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{

if($_GET["id"]!="" && isset($_GET["opc"]) && $_GET["opc"]=="del"){
	$id_usuario=$_GET["id"];

	$sql = "DELETE FROM tb_usuarios WHERE id_usuario = '$id_usuario'";
	$result = mysqli_query($conexao, $sql);
	if($result){
		echo "<script>
		alert('Usuário excluido com sucesso!');
		location.replace('index.php?ac=editar_usuario');
		</script>"; 
	}else{
		echo "<script>
		alert('O usuário não foi excluido!');
		location.replace('index.php?ac=editar_usuario');
		</script>"; 
	}

}else{
	$id_usuario=$_GET["id"];
	$sql = "SELECT * FROM tb_usuarios WHERE id_usuario='$id_usuario'";
$consultar_usuarios = mysqli_query($conexao, $sql);

while($linha_dados = mysqli_fetch_array($consultar_usuarios)){
	$id_usuario = $linha_dados["id_usuario"];
	$nome_completo = $linha_dados["nome_completo"];
	$usuario = $linha_dados["usuario"];
	$senha = $linha_dados["senha"];
	$confirmar_senha = $linha_dados["confirmar_senha"];
}

$smarty->assign("id_usuario", $id_usuario);
$smarty->assign("nome_completo", $nome_completo);
$smarty->assign("usuario", $usuario);
$smarty->assign("senha", $senha);
$smarty->assign("confirmar_senha", $confirmar_senha);
$smarty->display("excluir_usuario.tpl");
}

}

 ?>