	<div class="container-fluid col-md-9 col-sm-12">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<center><b>Editar Funcionário</b></center>
			</div>
			<div class="panel-body" width="95%">
				<form name="registrar_usuario" method="post">
					
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Nome Completo: &nbsp 
							</span>
							<input type="text" name="nome_completo" id="nome_completo" class="form-control" placeholder="Insira seu nome completo" value="{$nome_completo}" required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								CPF: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp 
							</span>
							<input type="text" name="cpf" id="cpf" class="form-control" placeholder="Insira seu CPF" value="{$cpf}"  required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Endereço: &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp&nbsp
							</span>
							<input type="text" name="endereco" id="endereco" class="form-control" placeholder="Insira seu endereço" value="{$endereco}" required>
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Telefone: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp&nbsp
							</span>
							<input type="text" name="telefone" id="telefone" class="form-control" placeholder="Insira seu telefone" value="{$telefone}" required>
						</div>
					</div>

					<input type="hidden" name="id_funcionario" id="id_funcionario" value="{$id_funcionario}">

					<center>
						<input type="submit" name="btn_editar" value="Editar Funcionário" class="btn btn-primary">
						<a href="index.php?ac=editar_funcionario" class="btn btn-danger">&nbsp &nbsp <i class="fas fa-ban"></i>&nbsp Cancelar&nbsp &nbsp &nbsp </a>
					</center>

				</form>
			</div>
		</div>
	</div>
</div>