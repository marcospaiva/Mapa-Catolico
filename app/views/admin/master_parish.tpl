<!---->
<div id="edit" class="grid_12">
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr colspan="3">
				<th >Editar paróquias</th>
			</tr>
		</thead>
		<tbody>
               
		</li>
                         {foreach name=loop item=item from=$dados}
			<tr>
				<td>{$tipo} : {$item.pa_nome}</td><td>{$item.pa_cidade} - {$item.pa_estado}</td>
				<td><a href="{$urlbase}master/paroquiaeditar/id/{$item.pa_id}">Editar</a></td>
				<td class="exclude"><a href="{$urlbase}admin/paroquiadeletar/id/{$item.pa_id}">Exluir</a></td>
			</tr>
                        {/foreach}			
		</tbody>		
	</table>
</div>
<!---->