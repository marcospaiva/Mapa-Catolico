<!--search-->
<div class="grid_12">

	<!--<h1 class="title grid_12">A sua busca tem {10} resultados.</h1>-->


	<h1 class="title grid_12">A sua busca tem {$total} resultados.</h1>

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
				<a href="{$urlbase}p/{$item.pa_id}/{substituir nome =$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
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
		    	
			
		</li>
	{/if}
	
        {if $tipo eq "usuario" }
         <li class="clearfix">   
			<p class="name"><a href='{$urlbase}busca/usuarios/id/{$item.us_id}/'>{$item.us_nome}</a></p>
            <p><strong>Email:</strong> {$item.us_email}</p>
            <p><strong>Cidade:</strong> {$item.us_cidade} - {$item.us_estado} 1</p>
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
	<!--Aqui tem que colocar um if pra verificar se a busca retornou algum resultado.-->
{include file="default/paginate.tpl"}
</div>
<!--end search-->