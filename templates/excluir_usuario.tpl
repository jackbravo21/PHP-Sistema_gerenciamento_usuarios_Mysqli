<div class="default col-md-9">
 <div class="panel panel-primary">
 	<div class="panel panel-heading"> <center> <b>Excluir Usuário</b></center></div>
 	<div class="panel-body" width="95%">
		<div class="alert alert-danger" role="alert">
		<h3>
		<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
		<span class="sr-only">Erro:</span>
		Deseja Excluir o usuário <font color="red"><b>"{$nome_completo}"</font> ?</b>
		</h3>
		<hr>
		Ao excluir o usuário, ele será excluído permanentemente e todas as suas informações serão excluidas da base de dados!
		<br><br>
		<center>
			 <a href="index.php?ac=excluir&id={$id_usuario}&opc=del" class="btn btn-primary mt-2"><span class="glyphicon glyphicon-trash"></span>
			 	<i class="far fa-thumbs-up"></i>&nbsp;Excluir Definitivamente &nbsp;&nbsp;&nbsp;</a>
			 &nbsp;
             <a href="index.php?ac=editar_usuario" class="btn btn-danger mt-2">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <i class="fas fa-ban"></i>&nbsp Cancelar 
         	 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
 			</center>
		</div>
 	</div>
 </div>
</div>