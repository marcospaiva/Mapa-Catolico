<!--common search-->
<div id="common_search" class="grid_12 clear_fix" >
	<form method= "post" action = "{$urlbase}/busca/buscar">
	<fieldset>
		<label for="type">Buscar por:</label>
			<span class="litle_left"></span>
			<select id="tipo" name="tipo" class="select" title="Selecione um parâmetro para a busca">
				<option value='capela'>Capela</option>
	            <option value='paroquia'>Paroquia</option>
	            <option value='usuario'>Usuario</option>
	            <option value='cidade'>Cidade</option>
			</select>
			<input type="text" name="palavra" id="palavra" title="Digite o termo para a busca"/>
			<input type="submit" value="Buscar" title="Buscar"/>
	</fieldset>
</form>
</div>
<!--end common search-->