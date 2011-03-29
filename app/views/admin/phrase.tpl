<!--  -->


	<form action="{$urlbase}master/frasesalvar" method="post">
		<fieldset id="" class="">
			<legend></legend>
			<div class="grid_6">
				<label for="frase">Nova frase</label>
				<textarea id="frase" class="rounded"></textarea>	
			</div>
			<div class="grid_6">
				<label for="autor">Autor</label>
				<input type="text" name="autor" value="" id="autor" class="rounded">
			</div>
		</fieldset>
		<input type="submit" name="some_name" value="Salvar" id="some_name" class="rounded btn">
		
	</form>
	<hr>
	<table border="0" cellspacing="0" cellpadding="0" class="grid_12">
				<thead>
					<tr colspan="2">
						<th>Frases</th>
						<th>Autor</th>
					</tr>
				</thead>
				<tbody>
					{foreach name=loop item=item from=$frases}
						<tr>
							<td>{$item.fr_frase}</td>
							<td>{$item.fr_autor}</td>
	                                                {if $item.fr_ativo eq 1}
	                                                    <td><a href="{$urlbase}master/frasestatus/id/{$item.fr_id}/status/0">Bloquear</a></td>
	                                                {elseif $item.fr_ativo eq 0}
	                                                    <td><a href="{$urlbase}master/frasestatus/id/{$item.fr_id}/status/1">Liberar</a></td>
	                                                {/if}
							<td><a href="{$urlbase}master/fraseeditar/id/{$item.fr_id}">Editar</a></td>
							<td><a href="{$urlbase}master/frasedelet/id/{$item.fr_id}">Excluir</a></td>
						</tr>
	                 {/foreach}
				</tbody>		
			</table>
