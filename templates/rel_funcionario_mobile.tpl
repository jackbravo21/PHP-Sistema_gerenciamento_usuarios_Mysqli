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
<form action="index.php?ac=rel_funcionario_mobile_busca" method="POST" class="form-inline">

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

<!-- Espaco que desaparece ao imprimir -->
<div class="para_imprimir">
<br>
</div>
<!-- /Espaco que desaparece ao imprimir -->

<!-- Botoes imprimir e cancela -->

<div class="mb-5">
			<center>
				<a href="index.php" class="btn btn-danger para_imprimir"><i class="fas fa-ban"></i> Cancelar</a>
				<button class="btn btn-success para_imprimir" onclick="imprimir_rel()"><i class="fas fa-print"></i>&nbsp Imprimir &nbsp</button>
			</center>
		</div>

<!-- /Botoes imprimir e cancela -->


	<table class="text border-dark fluid"; style="width:70%">
					{foreach from=$array_funcionarios item=tb_funcionario}
							
	    <tr class="center border-top"><th>&nbsp</th><td>&nbsp</td></tr>
	    <tr><th><b>&nbspID:</b>&nbsp</th><td>{$tb_funcionario.id_funcionario}&nbsp</td></tr>
	    <tr><th><b>&nbspNome:</b>&nbsp</th><td>{$tb_funcionario.nome_completo}&nbsp</td></tr>
	    <tr><th><b>&nbspCPF:</b>&nbsp</th><td>{$tb_funcionario.cpf}&nbsp</td></tr>
	    <tr><th><b>&nbspEndereço:</b>&nbsp</th><td>{$tb_funcionario.endereco}&nbsp</td></tr>
	    <tr><th><b>&nbspTelefone:</b>&nbsp</th><td>{$tb_funcionario.telefone}&nbsp</td></tr>

	        
	    </td>
	    <tr><th>&nbsp</th><td>&nbsp</td></tr>
	  </tr>
	  {/foreach}
	</table> 

			
		</div>

<br>

		<div class="mb-5">
			<center>
				<a href="index.php" class="btn btn-danger para_imprimir"><i class="fas fa-ban"></i> Cancelar</a>
				<button class="btn btn-success para_imprimir" onclick="imprimir_rel()"><i class="fas fa-print"></i>&nbsp Imprimir &nbsp</button>
			</center>
		</div>
	</div>

</div>

<br><br><br><br><br><br>

</center>


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