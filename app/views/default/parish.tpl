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

                {if $denuncia > 0 }
                    <form method="post" name="form1" action ="{$urlbase}paroquiaexibir/validar">
                        <input type="hidden" name="id" id="id" value="{$pa.pa_id}">
                        <input type="hidden" name="latitude" id="latitude" value="{$pa.pa_latitude}">
                        <input type="hidden" name="longitude" id="longitude" value="{$pa.pa_longitude}">
                        <input type="hidden" name="pontuacao" id="pontuacao" value="{$pa.pa_validacao}">

                        <input type="submit" value="Confiavel">
                     <form>
                {else}
                    <p>{$pa.pa_validacao}%</p>
                {/if}

		{if $pa.pa_site eq ""} {else}
		<p>
			<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
		</p>
		{/if}

		<p><strong>Descrição:</strong>{$pa.pa_descricao}</p>

		<p>
			<strong title="Quem cadastrou">Quem cadastrou:</strong>
			<a href="" class="clearfix" title="Usuário: {$usuario}">{$usuario}</a>
            <a href="" class="clearfix" title="Email: {$email}">{$email}</a>
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