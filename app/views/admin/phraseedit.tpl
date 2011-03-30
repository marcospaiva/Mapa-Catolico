
	<form action="{$urlbase}master/fraseupdate" method="post" accept-charset="utf-8">
            <input type="hidden" name="cod" id="cod" value="{$frase.fr_id}">
		<fieldset id="" class="">
			<legend></legend>
			<div class="grid_6">
				<label for="frase">Frase</label>
				<textarea id="frase" name="frase" class="rounded">{$frase.fr_frase}</textarea>
			</div>
			<div class="grid_6">
				<label for="autor">Autor</label>
				<input type="text" name="autor" value="{$frase.fr_autor}" id="autor" class="rounded"/>
			</div>
			
		</fieldset>
		<input type="submit" name="some_name" value="Salvar" id="some_name" class="rounded btn">
		
	</form>
