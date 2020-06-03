	<div class="default col-md-9 col-sm-12">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<center><b>Adicionar Funcionário</b></center>
			</div>
			<div class="panel-body" width="95%">
				<form name="registrar_usuario" method="post">
					{$alerta}
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Nome Completo: &nbsp 
							</span>
							<input type="text" name="nome_completo" id="nome_completo" class="form-control" placeholder="Insira seu nome completo" required>
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								CPF: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							</span>
							<input type="text" name="cpf" id="cpf" class="form-control" placeholder="Insira seu CPF" required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Endereço: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
							</span>
							<input type="text" name="endereco" id="endereco" class="form-control" placeholder="Insira seu endereço"   required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Telefone: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
							</span>
							<input type="text" name="telefone" id="telefone" class="form-control" placeholder="Insira seu telefone" required>
						</div>
					</div>


					

					<center>
						<input type="submit" name="btn_inserir" value="Inserir Funcionário" class="btn btn-primary">
						<a href="index.php" class="btn btn-danger">&nbsp &nbsp <i class="fas fa-ban"></i>&nbspCancelar&nbsp &nbsp &nbsp </a>
					</center>

				</form>
			</div>
		</div>
	</div>
</div>