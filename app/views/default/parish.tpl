<!--parish/chapel profile-->	

<div id="parish" class="clearfix">
	<h1 class="grid_12 title">{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}</h1>
	<h2 class="grid_12">{$pa.pa_cidade}-{$pa.pa_estado}</h2>
	<div id="info" class="grid_4">
		<p>
			<img src="http://img.cancaonova.com/paroquias/paroquias/{$pa.pa_id}.jpg" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}"/>
		</p>
		<p><strong>Diocese:</strong>{$diocese}</p>
		<p><strong>Bispo:</strong>{$bispo}</p>
		<p><strong>Pároco:</strong>{$pa.pa_paroco}</p>

		<p><strong>Endereço:</strong>{$pa.pa_rua}</p>
		<p><strong>Numero:</strong>{$pa.pa_numero}</p>
		<p><strong>Bairro:</strong>{$pa.pa_bairro}</p>
		<p><strong>País:</strong>{$pa.pa_pais}</p>
		
		{if $pa.pa_site eq ""} {else}
		<p>
			<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
		</p>
		{/if}

		<p><strong>Descrição:</strong>{$pa.pa_descricao}</p>

		<p>
			<strong>Quem cadastrou:</strong>
			<a href="" class="clearfix">{$usuario}</a>
            <a href="" class="clearfix">{$email}</a>
		</p>

	</div>
	<!--here render the map-->
	<div id="map_canvas" class="grid_8" style="height:500px;"></div>
		<!--end render the map-->
		<ul id="legend" class="prefix_9">
			<li><span class="icon_parish"></span>Paróquias</li>
			<li><span class="icon_chapel"></span>Capelas</li>
		</ul>
	</div>
</div>
<!--end parish/chapel profile-->