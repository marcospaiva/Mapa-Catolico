<!--the vicinity-->
<h2 class="grid_12 title">Paróquias e Capelas mais próximas de você!</h2>

<ul id="vicinity_list" class="grid_12">

     {foreach name=loop item=item from=$dados}
	<li class="grid_3">
                <img src="{image id =$item.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />

                <p class="name">
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
				{$item.pa_nome}
			</a>
		</p>
                
	</li>
        {/foreach}
	
</ul>
<!--end the vicinity-->