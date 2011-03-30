{include file=header.tpl}

<section id="content" class="admin container_12">
	<header class="grid_12">
		<h1 id="user" class="title">
			<img src="{$urlbase}public/img/gueres.jpg" alt="">
			{$usuariobase}
			<a href="{$urlbase}admin/cadastro">Novo Cadastro</a>
			<a href="{$urlbase}admin/paroquia">Editar Cadastros</a>
			<a href="{$urlbase}admin/usuario">Minha Conta</a>
			
			
		</h1>

	</header>
	
	{include file = $template}

</section>
<!-- end content -->

<hr class="clear">
<!-- end of content -->
{include file=footer.tpl}