<div id="parish" class="clearfix">
	<h1 class="grid_12 title">{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}</h1>
	<h2 class="grid_12">{$pa.pa_cidade}-{$pa.pa_estado}</h2>
	<div id="info" class="grid_4">
		<p>
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" class="img_list">
		    	<img src="http://img.cancaonova.com/paroquias/paroquias/{$pa.pa_id}.jpg" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		    </a>
		</p>
		<p class="religious"><strong>Diocese:</strong>{$diocese}</p>
		<p class="religious"><strong>Bispo:</strong>{$bispo}</p>
		<p class="religious"><strong>Pároco:</strong>{$pa.pa_paroco}</p>
		<hr/>
		<p class="local"><strong>Endereço:</strong>{$pa.pa_rua}</p>
		<p class="local"><strong>Numero:</strong>{$pa.pa_numero}</p>
		<p class="local"><strong>Bairro:</strong>{$pa.pa_bairro}</p>
		<p class="local"><strong>País:</strong>{$pa.pa_pais}</p>
                {if $usuariobase eq ""}{else}
		<form method="post" name="form1" action ="{$urlbase}paroquiaexibir/validar">
                        <input type="hidden" id="validacao" name="validacao" value="{$pa.pa_validacao}">
                        <input type="hidden" id="paroquia" name="paroquia" value="{$pa.pa_id}">
			<input type="submit" value="Eu já estive aqui!"/>
	        </form>
                {/if}
		<p>{$pa.pa_validacao} pessoa(s) já estiveram aqui!</p>
		<hr/>
		<p class="other"><strong>Descrição:</strong>{$pa.pa_descricao}</p>           

		{if $pa.pa_site eq ""} {else}
		<p class="other">
			<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
		</p>
		{/if}
		<hr/>
		<p>
			<strong title="Quem cadastrou">Quem cadastrou:</strong>
			<a href="{$urlbase}busca/usuarios/id/{$usuarioid}/" class="clearfix" title="Usuário: {$usuario}">{$usuario}</a>
            <a href="" class="clearfix" title="Email: {$email}">{$email}</a>
		</p>

	</div>

	<div id="map_canvas" class="grid_8" style="height:500px;"></div>
	</div>
</div>