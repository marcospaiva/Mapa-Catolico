<div class="grid_7 steps">
	<h2>Essa é a etapa 2 o do cadastramento, siga os passos corretamente.</h2>
	<form class="step-1" action="{$urlbase}paroquia/cadastro2" method="post" name="form1">
        <input type="hidden" name="cep" id="cep" value="{$cep}">
		<fieldset id="" class="">
			<!-- <legend>Passo 2</legend> -->
			
			<label for="uf">Estado</label>
			<input type="text" name="uf" value="{$uf}" id="uf"class="litle"/>
			
			<label for="pais">País</label>
			<input type="text" name="pais" value="Brasil" id="pais">
			
			<label for="cidade">Cidade</label>
			<input type="text" name="cidade" value="{$cidade}" id="cidade">

                        <label for="bairro">Bairro</label>
			<input type="text" name="bairro" value="{$bairro}" id="bairro">
			
			<label for="rua">Rua</label>
			<input type="text" name="rua" value="{$rua}" id="rua" class="strong"/>
			
			<label for="numero">Numero</label>
			<input type="text" name="numero" value="{$numero}" id="numero" class="litle"/>
		
		</fieldset>
		<a href="admin_content_n_1.php">voltar uma etapa</a><input type="submit" value="Proximo passo">
	</form>
</div>
