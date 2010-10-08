<!--main home-->
<h1 class="grid_6">Cadastro de Paróquias e Capelas.</h1>
<p id="first" class="grid_6">Agora você pode cadastrar as paróquias ou capelas que conhece e contribua para a evangelização de muitos.</p>
<p id="second" class="grid_6">{$frase.fr_frase}<em> ({$frase.fr_autor}).</em></p>
<span class="clear"></span>
<!--line break here-->
<form id="main_search" class="grid_6" method= "POST" action = "{$urlbase}busca/buscar">
	<input type="hidden" id="tipo" name="tipo" value="geral">
	<label for="palavra" class="lupe">Faça a sua busca</label>
	<input type="text" name="palavra" id="palavra" value="Busca"/>
	<input type="submit" value="Buscar" />
</form>

 {if $usuariobase eq ""}
	<div id="boxes">
		<div id="dialog" class="window">
			<!-- Botão para fechar a janela tem class="close" -->
			<a href="#" class="close">Fechar [X]</a>
			{include file=default/login.tpl}
		</div>
		<div id="mask"></div>
	</div>
<p id="login"><a href="#dialog" name="modal">Faça o login</a> ou</p>
<p id="new_account"><a href="{$urlbase}usuario/cadastro" title="crie uma nova conta">Crie uma conta</a></p>

{else}
<p id="login"><a href="{$urlbase}admin/paroquiacadastro" title="Cadastrar Paroquia ou Capela">Cadastrar sua Paroquia ou Capela</a></p>

{/if}
<!--end main home-->