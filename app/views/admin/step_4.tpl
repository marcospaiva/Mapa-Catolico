<div class="grid_7 steps">
	<h2>Essa é a etapa 4 o do cadastramento, siga os passos corretamente.</h2>
	<form class="step-1" action="{$urlbase}paroquia/cadastro4" method="post" name="form1">

            <input type="hidden" name="bairro" id="bairro" value="{$bairro}">
            <input type="hidden" name="cep" id="cep" value="{$cep}">
            <input type="hidden" name="cidade" id="cidade" value="{$cidade}">
            <input type="hidden" name="pais" id="pais" value="{$pais}">
            <input type="hidden" name="lat" id="lat" value="{$lat}" >
            <input type="hidden" name="lon" id="lon" value="{$lon}" >
            <input type="hidden" name="numero" id="numero" value="{$numero}">
            <input type="hidden" name="tipo" id="tipo" value="{$tipo}">
            <input type="hidden" name="rua" id="rua" value="{$rua}">
            <input type="hidden" name="uf" id="uf" value="{$uf}">


		<fieldset id="" class="">
			<!-- <legend>Passo 3</legend> -->
			
			<label for="diocese">Nome da Diocese</label>
			<select name="diocese" id="diocese">
            	{html_options options=$diocese}
            </select>
                        
			<label for="tipo">Tipo</label>
			<select name="tipo" id="tipo">
                {html_options values=$tipo_id selected=$tipo_c output=$tipo}
            </select>
		
		</fieldset>
		<a href="">voltar uma etapa</a><input type="submit" value="Proximo passo">
	</form>
</div>

