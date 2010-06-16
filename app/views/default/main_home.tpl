<!--main home-->
<h1 class="grid_6">Cadastro de Paróquias e Capelas.</h1>
<p id="first" class="grid_6">Agora você pode cadastrar as paróquias ou capelas que conhece e contribua para a evangelização de muitos.</p>
<p id="second" class="grid_6">Jovens católicos, levem para o mundo digital o testemunho de sua fé.<em> (Papa Bento XVI).</em></p>
<span class="clear"></span>
<!--line break here-->
<form id="main_search" class="grid_6" method= "POST" action = "{$urlbase}busca/buscar">
	<input type="hidden" id="tipo" name="tipo" value="paroquia">
	<label for="palavra" class="lupe">Faça a sua busca</label>
	<input type="text" name="palavra" id="palavra" value="Busca"/>
	<input type="submit" value="Buscar" />
</form>
<div class="tooltip">
	<a href="#">[X]fechar</a>
	{include file=default/login.tpl}
</div>
<p id="login"><a href="#">Faça o login</a> ou</p>
<p id="new_account"><a href="{$urlbase}usuario/cadastro" title="crie uma nova conta">Crie uma conta</a></p>
<!--end main home-->