{include file="header.tpl"}
<section id="content" class="admin container_12">
	{include file = "admin/user_header.tpl"}
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