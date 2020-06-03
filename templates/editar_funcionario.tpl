
<div class="container-fluid col-md-9 col-sm-12">		
	<div class="panel panel-primary">
		<div class="panel panel-heading">
			<center><b>Editar Funcionário:</b></center>
		</div>


<!-- Botao SEARCH -->

					<!-- Para deixar com Borda e ver: <table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%"> -->

<center>

<div class="form-check form-check-fluid form-check-inline">
<form action="index.php?ac=editar_funcionario_busca&pesquisar_funcionario" method="POST" class="form-inline">

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



      <div class="panel-body fluid" width="95%">
      <table id="tb_funcionario" class="table-fluid table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
          <th>ID</th>
          <th>Nome</th>
          <th>CPF</th>
          <th>Endereço</th>
          <th>Telefone</th>
          <th>Opções</th>
        </thead>
        {foreach from=$array_funcionario item=tb_funcionario}
        <!-- <tr class="col-md-2"> -->
          <tr>
          <!-- aqui o tb_funcionario eh o mesmo que recebeu o nome do item do foreach, para validar a linha, assim como na a href ali embaixo, se for mudar um, tem que mudar todos, soh unfluencia aqui. -->
          <td>&nbsp{$tb_funcionario.id_funcionario}&nbsp</td>
          <td>&nbsp{$tb_funcionario.nome_completo}&nbsp</td>
          <td>&nbsp{$tb_funcionario.cpf}&nbsp</td>
          <td>&nbsp{$tb_funcionario.endereco}&nbsp</td>
          <td>&nbsp{$tb_funcionario.telefone}&nbsp</td>
          <td>
            <a href="index.php?ac=editar_func&id={$tb_funcionario.id_funcionario}" class="btn btn-primary"><i class="fas fa-user-edit  mr-2"></i> Editar</a>
            
            <a href="index.php?ac=excluir_func&id={$tb_funcionario.id_funcionario}" class="btn btn-danger"><i class="far fa-trash-alt mr-2"></i> Excluir</a>
          </td>
        </tr>
        {/foreach}
        </table>



<br>

	</div>

</div>
</center>

<!--
<script type="text/javascript">
	$(document).ready(function(){
		$("#tb_usuario").DataTable();
	});
</script>