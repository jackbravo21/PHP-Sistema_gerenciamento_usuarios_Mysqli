	<div class="container-fluid col-md-9 col-sm-12">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<center><b>Efetuar Login</b></center>
			</div>
			<div class="panel-body" width="95%">
				<form name="registrar_usuario" method="post">
					{$alerta}
					

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Usuário&nbsp   
							</span>
							<input type="text" name="usuario" id="usuario" class="form-control" placeholder="Insira seu nome de usuário" required>
						</div>
					</div>

					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon">
								Senha&nbsp &nbsp 
							</span>
							<input type="password" name="senha" id="senha" class="form-control" placeholder="Insira sua senha" required>
						</div>
					</div>


					

					<center>
						<input type="submit" name="btn_inserir" value="Login" class="btn btn-primary">
						
					</center>
				</form>
			</div>
		</div>
		<br>
		<p align="center">Este é um sistema de gerenciamento de pessoas, criado por <b>"Michael Douglas"</b> = <b>"Jack Bravo"</b>.</p>
		<p align="center">Você só consegue utilizar plenamente o sistema se logar, caso você não tenha um login, <font color="red">solicite.</font></p>
	</div>
</div>
