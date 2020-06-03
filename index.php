<?php 
$botao = "";

session_start();

include("includes/config.ini.php");

//variavel de conexao, eh necessario informar a variavel de conexao.
$conexao = conectar();

$titulo = "Sistema de Gerenciamento";

$smarty->assign("titulo", $titulo);
$smarty->display("cabecalho.tpl");

if(!isset($_SESSION["usuario"])){
		$botao = "disabled";
	}

$smarty->assign("botao", $botao);
$smarty->display("menu.tpl");


//soh pode ser chamada depois do menu ser chamado, questao de ordem.
//verifica se esta vindo da variavel ac(acao) e com valor "registrar_usuario", as duas tem que ser verdadeira "&&", e vai incluir uma pagina com include;
if(isset($_GET["ac"]) && $_GET["ac"]=="registrar_usuario"){
	include("modelo/registrar/registrar_usuario.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_usuario"){
	include("modelo/editar/editar_usuario.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_usuario_busca")  {
	include("modelo/editar/editar_usuario_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_usuario_mobile"){
	include("modelo/editar/editar_usuario_mobile.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_usuario_mobile_busca")  {
	include("modelo/editar/editar_usuario_mobile_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar"){
	include("modelo/editar/editar.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="excluir"){
	include("modelo/excluir/excluir_usuario.php");

////////////////////////////////////////////////////////////////////////////////////////////	

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_usuario"){
	include("modelo/relatorio/rel_usuario.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_usuario_busca"){
	include("modelo/relatorio/rel_usuario_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_usuario_mobile"){
	include("modelo/relatorio/rel_usuario_mobile.php");	

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_usuario_mobile_busca"){
	include("modelo/relatorio/rel_usuario_mobile_busca.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="registrar_funcionario"){
	include("modelo/registrar/registrar_funcionario.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_funcionario"){
	include("modelo/editar/editar_funcionario.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_funcionario_busca")  {
	include("modelo/editar/editar_funcionario_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_funcionario_mobile"){
	include("modelo/editar/editar_funcionario_mobile.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_funcionario_mobile_busca"){
	include("modelo/editar/editar_funcionario_mobile_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="editar_func"){
	include("modelo/editar/editar_func.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="excluir_func"){
	include("modelo/excluir/excluir_func.php");

////////////////////////////////////////////////////////////////////////////////////////////

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_funcionario"){
	include("modelo/relatorio/rel_funcionario.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_funcionario_busca"){
	include("modelo/relatorio/rel_funcionario_busca.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_funcionario_mobile"){
	include("modelo/relatorio/rel_funcionario_mobile.php");

}else if(isset($_GET["ac"]) && $_GET["ac"]=="rel_funcionario_mobile_busca"){
	include("modelo/relatorio/rel_funcionario_mobile_busca.php");


////////////////////////////////////////////////////////////////////////////////////////////


}else if(!isset($_SESSION["usuario"])){
	include("controlador/login.php");
}else{

$smarty->display("inicial.tpl");

	?>

	
	<?php
}


$smarty->display("rodape.tpl");
 
?>