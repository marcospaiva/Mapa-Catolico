{include file="header.tpl"}
<section id="content" class="admin container_12">
	<header class="grid_12">
		<h1 id="user" class="title">
			<img src="{$urlbase}public/img/gueres.jpg" alt="">
			{$usuariobase}
		</h1>

	</header>
	<span class="clear"></span>
	<!--Master menu-->
	<div id="master_menu" class="grid_12 clearfix" >
		<ul class="clearfix">
			<li><a href="{$urlbase}master/usuarios" class="rounded">denúncias</a></li>
			<li><a href="{$urlbase}master/paroquias" class="rounded">Gerenciar Cadastros</a></li>
			<li><a href="{$urlbase}master/frases" class="rounded">Gerenciar Frases da Home</a></li>
	        <li><a href="{$urlbase}relatorio" class="rounded">Relatorio de Acesso</a></li>
		</ul>
	</div>
	<!---->
	<span class="clear"></span>
	<section class="clearfix">
		{include file="$template"}
	</section>
	
</section>


{include file="footer.tpl"}