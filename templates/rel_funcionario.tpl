<div class="container-fluid col-md-9 col-sm-12">

<center>	
	<div class="panel panel-primary mb-2">
		<div class="panel panel-heading">
			<center><b>Relatório de Funcionários - {$data_atual}</b></center>
		</div>



<!-- Botao SEARCH -->

					<!-- Para deixar com Borda e ver: <table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%"> -->

<center>

<div class="form-check form-check-fluid form-check-inline para_imprimir">
<form action="index.php?ac=rel_funcionario_busca" method="POST" class="form-inline">

<select class="form-control" name="campo_busca_funcionario" default="nome">
  <option value="nome_completo">Nome</option>
  <option value="id_funcionario">ID</option>
  <option value="cpf">CPF</option>
  <option value="endereco">Endereço</option>
  <option value="telefone">Telefone</option>
</select>

    <input type="text" name="pesquisar_funcionario" placeholder="Pesquisar Funcionário" class="form-control form-group">
  <button type="submit" class="btn btn-info"><i class="fas fa-search mr-2"></i>Pesquisar</button>
</div>
</form>


<!-- /Botao SEARCH -->



		<div class="panel-body" width="95%">
			<table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%">
				<thead>
					<th>ID</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>Endereço</th>
					<th>Telefone</th>
					
				</thead>
				{foreach from=$array_funcionarios item=tb_funcionarios}
				<tr>
					<td>{$tb_funcionarios.id_funcionario}</td>
					<td>{$tb_funcionarios.nome_completo}</td>
					<td>{$tb_funcionarios.cpf}</td>
					<td>{$tb_funcionarios.endereco}</td>
					<td>{$tb_funcionarios.telefone}</td>

				</tr>
				{/foreach}
			</table>

			
		</div>
		<div class="mb-5">
			<center>
				<a href="index.php" class="btn btn-danger para_imprimir"><i class="fas fa-ban"></i> Cancelar</a>
				<button class="btn btn-success para_imprimir" onclick="imprimir_rel()"><i class="fas fa-print"></i>&nbsp Imprimir &nbsp</button>
			</center>
		</div>
	</div>

</div>




<script type="text/javascript">
	function imprimir_rel(){
		$(".para_imprimir").hide();
		window.print();
		$(".para_imprimir").show();
	}
</script>

<!--
<script type="text/javascript">
	$(document).ready(function(){
		$("#tb_usuario").DataTable();
	});
</script>