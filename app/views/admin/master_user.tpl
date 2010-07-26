<!---->
<div id="edit" class="grid_12">
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr colspan="3">
				<th >Usuários</th>
			</tr>
		</thead>
		<tbody>

                 {foreach name=loop item=item from=$dados}
					<tr>
				<td>{$item.us_nome} -{$item.us_email} || {$item.us_cidade} - {$item.us_estado}</td>                                
				<td><a href="{$urlbase}master/usuarioeditar/id/{$item.us_id}">Editar</a></td>
				{if $item.us_ativo eq 1}
                                     <td class="exclude"><a href="{$urlbase}master/usuariostatus/id/{$item.us_id}/status/2{$caminho}">Bloquear</a></td>
                                {elseif $item.us_ativo eq 2}
                                     <td class="exclude"><a href="{$urlbase}master/usuariostatus/id/{$item.us_id}/status/1{$caminho}">Desbloquear</a></td>
                                {elseif $item.us_ativo eq 0}
                                     <td class="exclude"><a href="{$urlbase}master/usuariostatus/id/{$item.us_id}/status/1{$caminho}">Liberar</a></td>
                                {/if}
			</tr>
                 {/foreach}

                  {include file="default/paginate.tpl"}
			
		</tbody>		
	</table>
</div>
<!---->