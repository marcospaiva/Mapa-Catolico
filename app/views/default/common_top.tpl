<!--common top-->
<div id="common_top">
	<h1 id="common_logo"class="grid_5">
		<a href="{$urlbase}" title="Voltar para a home">Cadastro de Paroquias e capelas</a>
	</h1>

        
	{include file=default/common_menu.tpl}

        {if $usuariobase eq ""}
	<div id="login" class="grid_7 clearfix">
		{include file=default/login.tpl}
	</div>
        {else}
        <div id="login" class="grid_7 clearfix">
		<p class="grid_6 logged">Olá <a href="{$urlbase}/admin">{$usuariobase}</a>, bem vindo a sua conta no Mapa Católico. <a href="{$urlbase}index/sair" class="logout">Log out</a></p>
	</div>
        {/if}
</div>
<!--end common top-->