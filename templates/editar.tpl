	<div class="container-fluid col-md-9 col-sm-12">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<center><b>Editar Usuário</b></center>
			</div>
			<div class="panel-body" width="95%">
				<form name="registrar_usuario" method="post">
					
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Nome Completo &nbsp 
							</span>
							<input type="text" name="nome_completo" id="nome_completo" class="form-control" placeholder="Insira seu nome completo" value="{$nome_completo}" required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Nome Usuário&nbsp &nbsp &nbsp   
							</span>
							<input type="text" name="usuario" id="usuario" class="form-control" placeholder="Insira seu nome de usuário" value="{$usuario}"  required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Senha&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							</span>
							<input type="password" name="senha" id="senha" class="form-control" placeholder="Insira sua senha" value="{$senha}" required>
						</div>
					</div>


					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Confirmar Senha
							</span>
							<input type="password" name="confirmar_senha" id="confirmar_senha" class="form-control" placeholder="Confirme sua senha" value="{$confirmar_senha}" required>
						</div>
					</div>

					<input type="hidden" name="id_usuario" id="id_usuario" value="{$id_usuario}">

					<center>
						<input type="submit" name="btn_editar" value="Editar Usuário" class="btn btn-primary">
						<a href="index.php?ac=editar_usuario" class="btn btn-danger">&nbsp &nbsp &nbspCancelar&nbsp &nbsp &nbsp </a>
					</center>

				</form>
			</div>
		</div>
	</div>
</div>