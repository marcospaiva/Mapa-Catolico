<div id="edit" class="grid_12">
	<form action="{$urlbase}master/fraseupdate" method="post" accept-charset="utf-8">
            <input type="hidden" name="cod" id="cod" value="{$frase.fr_id}">
		<fieldset id="" class="">
			<legend></legend>
			<label for="">Frase</label>
			<textarea id="frase" name="frase">{$frase.fr_frase}</textarea>
			<label for="autor"></label>
			<input type="text" name="autor" value="{$frase.fr_autor}" id="autor">
		</fieldset>
		<input type="submit" name="some_name" value="Enviar" id="some_name">
		
	</form>
	
		</div>