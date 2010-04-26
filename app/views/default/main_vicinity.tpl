<!--the vicinity-->
<h2 class="grid_12 title">Paróquias e Capelas mais próximas de você!</h2>
<ul id="vicinity_list" class="grid_12">
	<li class="grid_4">
		<a href="" class="img_list">
	    	<img src="http://img.cancaonova.com/paroquias/paroquias/1.jpg" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
	    </a>
		<p class="name">
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
				Paróquia Banedito socorro da providencia
			</a>
		</p>
	</li>
	<li class="grid_4">
		<a href="" class="img_list">
	    	<img src="http://img.cancaonova.com/paroquias/paroquias/1.jpg" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
	    </a>
		<p class="name">
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
				Paróquia Banedito socorro da providencia
			</a>
		</p>
	</li>
</ul>
<!--end the vicinity-->