<!---->
<div id="edit" class="grid_12">
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
		    <tr colspan="3">
		        <th>Edite os seus cadastros abaixo:</th>
		    </tr>
		</thead>
		<tbody>
                       {foreach from=$paroquias item=par}
                        <tr>
                              <td>{$par.pa_nome}</td>
                              <td><a href="{$urlbase}admin/paroquiaeditar/id/{$par.pa_id}">Editar</a></td>
                              <td class="exclude"><a href="{$urlbase}admin/paroquiadeletar/id/{$par.pa_id}">Exluir</a></td>
                        </tr>

                        {/foreach}
			
		</tbody>
	</table>
</div>
<!---->