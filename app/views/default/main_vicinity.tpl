<!--the vicinity-->
<h2 class="grid_12 title">Paróquias e Capelas mais próximas de você.</h2>
<ul id="vicinity_list" class="clearfix">

     {foreach name=loop item=item from=$dados}
	<li class="grid_4">
        <a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" class="img_list">
        	<img src="{image id =$item.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		</a>
        <p class="name">
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
				{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}
			</a>
		</p>
                
	</li>
        {/foreach}
</ul>
<!--end the vicinity-->