<div id="user" class="container_12 clearfix">
	<h1 class="grid_12 title">Nome do cara</h1>
	<h2 class="grid_12">Cidade onde o cara mora</h2>
	<div id="info" class="grid_4">
		<p>
			<a href="{$urlbase}p/{$item.pa_id}/{substituir nome= $item.pa_nome}/" class="img_list">
		    	<img src="{image id =$item.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		    </a>
		</p>
		<hr/>
		<p class="other"><strong>Sobre:</strong>{$pa.pa_descricao}</p>           

		
		<p class="other">
			<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
		</p>
		
	</div>
</div>