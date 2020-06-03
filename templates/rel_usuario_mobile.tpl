<div class="col-md-9 col-sm-12">
	
	<div class="panel panel-primary mb-2">
		<div class="panel panel-heading">
			<center><b>Relatório de Usuários - {$data_atual}</b></center>
		</div>



			<!-- Botao SEARCH -->
			
					<!-- Para deixar com Borda e ver: <table id="tb_usuario" class="table table-striped table-bordered" cellspacing="0" width="100%"> -->

<center>

<div class="form-check-fluid form-check-inline para_imprimir">
<form action="index.php?ac=rel_usuario_mobile_busca" method="POST" class="form-inline">

<select class="form-control fluid" name="campo_busca" default="nome">
  <option value="nome_completo">Nome</option>
  <option value="id_usuario">ID</option>
  <option value="usuario">Usuário</option>
</select>

    <input type="text" name="pesquisar_usuario" placeholder="Pesquisar Usuário" class="form-control form-group">
  <button type="submit" class="btn btn-info"><i class="fas fa-search mr-2"></i>Pesquisar</button>
</div>
</form>

<!-- Espaco que desaparece ao imprimir -->
<div class="para_imprimir">
<br>
</div>
<!-- /Espaco que desaparece ao imprimir -->

				
			<!-- /Botao SEARCH -->


<!-- Botoes imprimir e cancela -->

<div class="mb-5">
			<center>
				<a href="index.php" class="btn btn-danger para_imprimir"><i class="fas fa-ban"></i> Cancelar</a>
				<button class="btn btn-success para_imprimir" onclick="imprimir_rel()"><i class="fas fa-print"></i>&nbsp Imprimir &nbsp</button>
			</center>
		</div>

<!-- /Botoes imprimir e cancela -->



	<table class="text border-dark fluid"; style="width:70%">
		{foreach from=$array_usuarios item=tb_usuario}
							
	    <tr class="center border-top"><th>&nbsp</th><td>&nbsp</td></tr>
	    <tr><th><b>&nbspID:</b>&nbsp</th><td>{$tb_usuario.id_usuario}&nbsp</td></tr>
	    <tr><th><b>&nbspNome:</b>&nbsp</th><td>{$tb_usuario.nome_completo}&nbsp</td></tr>
	    <tr><th><b>&nbspUsuário:</b>&nbsp</th><td>{$tb_usuario.usuario}&nbsp</td></tr>

	        
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