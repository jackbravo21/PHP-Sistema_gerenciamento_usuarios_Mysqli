<?php 

if(!isset($_SESSION["usuario"])){
	include("login.php");
}else{


if($_POST){
	$id_usuario = $_POST["id_usuario"];
	$nome_completo = $_POST["nome_completo"];
	$usuario = $_POST["usuario"];
	$senha = $_POST["senha"];
	$confirmar_senha = $_POST["confirmar_senha"];

	if($senha != $confirmar_senha){
		echo "<script>
		alert('As senhas são diferentes');
		location.replace('index.php?ac=editar&id= ". $_GET["id"] ." ');
		</script>"; 
	}

	$sql = "UPDATE tb_usuarios SET nome_completo = '$nome_completo', usuario = '$usuario', senha = '$senha', confirmar_senha = '$confirmar_senha' WHERE id_usuario = '$id_usuario' ";

	$result = mysqli_query($conexao, $sql);
	if($result == ''){
		
		echo "<script>
		alert('Erro ao Atualizar');
		location.replace('index.php?ac=editar&id= ". $_GET["id"] ." ');
		</script>"; 
		}else{
			
			echo "<script>
		alert('Usuário editado com sucesso!');
		location.replace('index.php?ac=editar_usuario');
		</script>"; 
		
	}

}


$id_usuario = $_GET["id"];

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
$smarty->display("editar.tpl");


}

?>