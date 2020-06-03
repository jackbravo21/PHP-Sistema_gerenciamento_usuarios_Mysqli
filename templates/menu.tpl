<div class="row">
	<div class="container-fluid col-md-3 col-sm-12 para_imprimir">
		<div class="list-group">
			<a href="#" class="list-group-item active"><i class="fas fa-cog"></i>&nbsp Menu Usuários</a>

			<!-- vou colocar a variavel $botao para que ele faca a verificacao e fique disable caso nao tenha login -->
			<a href="index.php" class="list-group-item"><i class="fas fa-sign-in-alt"></i>&nbsp Inicial</a>
			<a href="index.php?ac=registrar_usuario" class="list-group-item {$botao}"><i class="fas fa-user-plus"></i>&nbsp Inserir Usuário</a>
			<a href="index.php?ac=editar_usuario" class="list-group-item {$botao}"><i class="fas fa-address-book"></i>&nbsp Editar Usuário &nbsp<i class="fas fa-desktop"></i></a>
			<a href="index.php?ac=rel_usuario" class="list-group-item"><i class="fas fa-paste"></i>&nbsp Relatório Usuário &nbsp<i class="fas fa-desktop"></i></a>
			<a href="index.php?ac=editar_usuario_mobile" class="list-group-item {$botao}"><i class="fas fa-address-book"></i>&nbsp Editar Usuário Mobile &nbsp<i class="fas fa-mobile-alt"></i></a>
			<a href="index.php?ac=rel_usuario_mobile" class="list-group-item"><i class="fas fa-paste"></i>&nbsp Relatório Usuário Mobile &nbsp<i class="fas fa-mobile-alt"></i></a>
			
		</div>

		<div class="list-group mt-3">
			<a href="#" class="list-group-item active"><i class="fas fa-cog"></i>&nbsp Menu Funcionários</a>
			
			<a href="index.php?ac=registrar_funcionario" class="list-group-item {$botao}"><i class="fas fa-user-plus"></i>&nbsp Inserir Funcionário</a>
			<a href="index.php?ac=editar_funcionario" class="list-group-item {$botao}"><i class="fas fa-address-book"></i>&nbsp Editar Funcionário &nbsp<i class="fas fa-desktop"></i></a>
			<a href="index.php?ac=rel_funcionario" class="list-group-item"><i class="fas fa-paste"></i>&nbsp Relatório Funcionário &nbsp<i class="fas fa-desktop"></i></a>
			<a href="index.php?ac=editar_funcionario_mobile" class="list-group-item {$botao}"><i class="fas fa-address-book"></i>&nbsp Editar Funcionário Mobile &nbsp<i class="fas fa-mobile-alt"></i></a>
			<a href="index.php?ac=rel_funcionario_mobile" class="list-group-item"><i class="fas fa-paste"></i>&nbsp Relatório Funcionário Mobile &nbsp<i class="fas fa-mobile-alt"></i></a>
		</div>
		
		<div class="list-group mt-3">
		<a href="controlador/sair.php" class="list-group-item list-group-item-action list-group-item-danger {$botao}"><i class="fas fa-sign-out-alt"></i> Sair</a>
		</div>
	</div>