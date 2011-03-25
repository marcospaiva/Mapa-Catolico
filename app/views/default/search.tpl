<!--search-->
<div class="grid_12">
	{if $total eq ""}
    <h1 class="title grid_12">Nada foi encontrado com os termos da sua busca :(</h1>
	{else}
    <h1 class="title grid_12">A sua busca tem {$total} resultados.</h1>
	{/if}
    <ul id="search_result" class="grid_12">

	{foreach name=loop item=item from=$dados}

                <li class="clearfix">
                    <a href="{$urlbase}p/{$item.pa_id}/{substituir nome= $item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}" class="img_list">
                        <img src="{image id =$item.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
                    </a>
                    <p class="name"><a href="{$urlbase}p/{$item.pa_id}/{substituir nome=$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}</a></p>
                    <p class="religious"><strong>Diocese:</strong>{$item.di_diocese}, <strong>Bispo:</strong>{$item.di_bispo}.</p>
                    <p class="local"><strong>Endereço:</strong>{$item.pa_rua} - {$item.pa_numero}, <strong>Bairro:</strong>{$item.pa_bairro}, <strong>País:</strong>Brasil.<span class="reliable_rate"> {$item.pa_validacao} pessoa(s) já estiveram aqui!</span></p>
                        {if $pa.pa_site eq ""} {else}
                    <p>
                        <strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
                    </p>
                </li>
            {/if}

        {/foreach}
    </ul>
	{if $total ge "10"}
		{include file="default/paginate.tpl"}	
	{/if}
</div>
<!--end search-->