<!--It`s a main home of this app-->
<h1 class="grid_6">Cadastro de Paróquias e Capelas</h1>
<p id="first" class="grid_6">Olá, eu sou um texto descritivo da ferramenta de cadastro de paróquias e capelas. Sou um texto breve e sucinto.</p>
<p id="second" class="grid_6">Eu sou uma frase famosa de algum padre ou papa, ou até mesmo um versiculo biblico.<em>Referência</em></p>
<span class="clear"></span>
<!--line break here-->
<form id="main_search" class="grid_6" method= "POST" action = "{$urlbase}busca/buscar">
	<input type="hidden" id="tipo" name="tipo" value="paroquia">
	<input type="text" name="palavra" id="palavra" value="Busca"/>
	<label class="btn_more_left"><input type="submit" value="buscar" class="btn_more_center"><span class="btn_more_right"></span></label>
</form>
<p id="new_account" class="btn_more_left"><a class=" btn_more_center" href="">Crie uma conta</a><span class="btn_more_right"></span></p>