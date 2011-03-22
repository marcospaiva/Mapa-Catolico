<!--  -->

<div id="edit" class="grid_12">
	<form action="{$urlbase}master/frasesalvar" method="post">
		<fieldset id="" class="">
			<legend></legend>
			<label for="">Nova frase</label>
			<textarea id="" ></textarea>
			<label for="autor">Autor</label>
			<input type="text" name="autor" value="" id="autor">
		</fieldset>
		<input type="submit" name="some_name" value="Enviar" id="some_name">
		
	</form>
	<table border="0" cellspacing="0" cellpadding="0">
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
	                                                    <td class="exclude"><a href="{$urlbase}master/frasestatus/id/{$item.fr_id}/status/0">Bloquear</a></td>
	                                                {elseif $item.fr_ativo eq 0}
	                                                    <td class="exclude"><a href="{$urlbase}master/frasestatus/id/{$item.fr_id}/status/1">Liberar</a></td>
	                                                {/if}
							<td><a href="{$urlbase}master/fraseeditar/id/{$item.fr_id}">Editar</a></td>
							<td class="exclude"><a href="{$urlbase}master/frasedelet/id/{$item.fr_id}">Exluir</a></td>
						</tr>
	                 {/foreach}
				</tbody>		
			</table>
		</div>