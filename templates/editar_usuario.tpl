<div class="container-fluid col-md-9 col-sm-12">
	
	<div class="panel panel-primary">
		<div class="panel panel-heading">
			<center><b>Editar Usuários</b></center>
		</div>



			<!-- Botao SEARCH -->
			
					<!-- Para deixar com Borda e ver: <table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%"> -->

<center>

<div class="form-check-fluid form-check-inline">
<form action="index.php?ac=editar_usuario_busca&pesquisar_usuario" method="POST" class="form-inline">

<select class="form-control fluid" name="campo_busca" default="nome">
  <option value="nome_completo">Nome</option>
  <option value="id_usuario">ID</option>
  <option value="usuario">Usuário</option>
</select>

    <input type="text" name="pesquisar_usuario" placeholder="Pesquisar Usuário" class="form-control form-group">
  <button type="submit" class="btn btn-info"><i class="fas fa-search mr-2"></i>Pesquisar</button>
</div>
</form>

</center>

				
			<!-- /Botao SEARCH -->
			

		<div class="panel-body fluid" width="95%">
			<table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<th>ID</th>
					<th>Nome</th>
					<th>Usuário</th>
					<th>Opções</th>
				</thead>
				{foreach from=$array_usuarios item=tb_usuario}
				<tr>
					<td>{$tb_usuario.id_usuario}</td>
					<td>{$tb_usuario.nome_completo}</td>
					<td>{$tb_usuario.usuario}</td>
					<td>
						<a href="index.php?ac=editar&id={$tb_usuario.id_usuario}" class="btn btn-primary"><i class="fas fa-user-edit  mr-1"></i>Editar</a>

						<a href="index.php?ac=excluir&id={$tb_usuario.id_usuario}" class="btn btn-danger"><i class="far fa-trash-alt mr-1"></i>Excluir</a>
					</td>
				</tr>
				{/foreach}
			</table>
		</div>
	</div>

</div>

<!--
<script type="text/javascript">
	$(document).ready(function(){
		$("#tb_usuario").DataTable();
	});
</script>