			
                        <div id="parish" class="container_12 clearfix">
				<h1 class="grid_12"> {if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}</h1>
				<h2 class="grid_12">{$pa.pa_cidade}-{$pa.pa_estado}</h2>
				<div id="info" class="grid_4">
                                        <p><img src="http://img.cancaonova.com/paroquias/paroquias/{$pa.pa_id}.jpg"><br>
					<p><strong>Diocese:</strong>{$diocese}</p>
					<p><strong>Bispo:</strong>{$bispo}</p>
					<p><strong>Pároco:</strong>{$pa.pa_paroco}</p>
					
					<p><strong>Endereço:</strong>{$pa.pa_rua}</p>
					<p><strong>Numero</strong>{$pa.pa_numero}</p>
					<p><strong>Bairro:</strong>{$pa.pa_bairro}</p>
					<p><strong>País:</strong>{$pa.pa_pais}</p>
					{if $pa.pa_site eq ""} {else}<p><strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a></p>{/if}
					
					<p><strong>Descrição:</strong>{$pa.pa_descricao}</p>
					
					<p><strong>Quem cadastrou:</strong><a href="" class="clearfix">{$usuario}</a>
                                        <a href="" class="clearfix">{$email}</a></p>
					
				</div>
				<div id="map_canvas" class="grid_8" style="height:500px;">
					
					<p id="legend"class="prefix_6"><a href="">Paroquias</a><a href="">Capela</a></p>
				</div>
			</div>
		</div>
