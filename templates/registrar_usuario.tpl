	<div class="container-fluid col-md-9 col-sm-12">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<center><b>Adicionar Usuário</b></center>
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
								Nome de Usuário:
							</span>
							<input type="text" name="usuario" id="usuario" class="form-control" placeholder="Insira seu nome de usuário" required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Senha: &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							</span>
							<input type="password" name="senha" id="senha" class="form-control" placeholder="Insira sua senha" required>
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Confirmar Senha:&nbsp 
							</span>
							<input type="password" name="confirmar_senha" id="confirmar_senha" class="form-control" placeholder="Confirme sua senha" required>
						</div>
					</div>

					<center>
						<input type="submit" name="btn_inserir" value="Inserir Usuário" class="btn btn-primary">
						<a href="index.php" class="btn btn-danger">&nbsp<i class="fas fa-ban"></i>&nbsp Cancelar&nbsp &nbsp </a>
					</center>

				</form>
			</div>
		</div>
	</div>
</div>