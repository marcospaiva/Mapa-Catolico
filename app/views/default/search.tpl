<!--search-->
<div class="grid_12">
	<h1 class="title grid_12">A sua busca tem {10} resultados.</h1>
	<!--Aqui é uma condicional para verificar se a busca não retornou nada.
	<h1 class="title grid_12">Ocorreu algum erro, por favor, tente buscar mais uma ver.</h1>
	-->
	<ul id="search_result" class="grid_12">
		
		{foreach name=loop item=item from=$dados}
			
		{if $tipo eq "paroquia" || $tipo eq "capela"}
		
		<li class="clearfix">
		
		    <a href="" class="img_list">
		    	<img src="http://img.cancaonova.com/paroquias/paroquias/{$item.pa_id}.jpg" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		    </a>
		
		    <p class="name">
				<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
					{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}
				</a>
			</p>
		
		    <p><strong>Endereço:</strong>{$item.pa_rua}, {$item.pa_numero}, <strong>Bairro:</strong>{$item.pa_bairro}, <strong>País:</strong>{$item.pa_pais}.<span class="reliable_rate"> 100% confiavel</span></p>
		
		    <p><strong>Diocese:</strong>{$item.pa_diocese}, <strong>Bispo:</strong>{$item.pa_bispo}, <strong>Pároco:</strong>{$pa.pa_paroco}.</p>
		
			{if $pa.pa_site eq ""} {else}
			<p>
				<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
			</p>
			{/if}
		
		    <p>
				<strong>Quem cadastrou:</strong>
				<a href="" class="clearfix">{$item.pa_usuario}</a>
	            <a href="" class="clearfix">{$item.pa_email}</a>
			</p>	
			
		</li>
	{/if}
	
        {if $tipo eq "usuario" }
            <p class="name">Nome: <a href='{$urlbase}busca/usuarios/id/{$item.us_id}/'>{$item.us_nome}</a></p>
            <p>Email: {$item.us_email}</p>
            <p>Cidade: {$item.us_cidade} - {$item.us_estado}</p>
        {/if}

        {if $tipo eq "cidade" }
            <p class="name">
                <a href='{$urlbase}busca/cidades/cidade/{$item.pa_cidade}/uf/{$item.pa_estado}'>
                     {$item.pa_cidade} - {$item.pa_estado} 
                 </a>
            </p>
        {/if}</li>
		{/foreach}
	</ul>
{include file="default/paginate.tpl"}
</div>
<!--end search-->