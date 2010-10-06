<!--search-->
<div class="grid_12">
	{if $total eq ""}
		<h1 class="title grid_12">Nada foi encontrado com os termos da sua busca :(</h1>
	{else}
		<h1 class="title grid_12">A sua busca tem {$total} resultados.</h1>
	{/if}
	<ul id="search_result" class="grid_12">
		
		{foreach name=loop item=item from=$dados}
			
		{if $tipo eq "paroquia" || $tipo eq "capela" || $tipo eq "geral"}
		
		<li class="clearfix">
		
		   
		    <img src="{image id =$item.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		   
		
		    <p class="name">
				<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
					{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}
				</a>
			</p>
		
		    <p><strong>Endereço:</strong>{$item.pa_rua}, {$item.pa_numero}, 
                    <p><strong>Bairro:</strong>{$item.pa_bairro}  <strong>Cidade:</strong>{$item.pa_cidade} - {$item.pa_estado}
		    <p><strong><span class="reliable_rate"> {$item.pa_validacao} pessoa(s) já estiveram aqui!</span></strong></p></p>
		
			{if $pa.pa_site eq ""} {else}
			<p>
				<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
			</p>
			{/if}

                    <p><strong>Diocese:</strong>{$item.di_diocese}
                    <p><strong>Bispo:</strong>{$item.di_bispo}
                    <p><strong>Cidade:</strong>{$item.di_cidade} - {$item.di_estado}
		    	
			
		</li>
	{/if}
	
        {if $tipo eq "usuario" }
         <li class="clearfix">   
			<p class="name"><a href='{$urlbase}busca/usuarios/id/{$item.us_id}/'>{$item.us_nome}</a></p>
            <p><strong>Email:</strong> {$item.us_email}</p>
            <p><strong>Cidade:</strong> {$item.us_cidade} - {$item.us_estado} </p>
            <p><strong>Paroquias e capelas cadastradas:</strong>{$item.paroquias} </p>
        </li>
		{/if}

        {if $tipo eq "cidade" }
        <li>
    		<p class="name">
                <a href='{$urlbase}busca/cidades/cidade/{$item.pa_cidade}/uf/{$item.pa_estado}'>
                     {$item.pa_cidade} - {$item.pa_estado} 
                 </a>
            </p>
			<p><strong>Quantidade de Paroquias/Capelas:</strong> {$item.total}</p>			
		</li>
        {/if}
		{/foreach}
	</ul>
	{if $total ge "10"}
		{include file="default/paginate.tpl"}	
	{/if}
</div>
<!--end search-->