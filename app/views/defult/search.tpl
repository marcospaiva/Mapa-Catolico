			<div class="container_12 clearfix">
				<ul id="search_result" class="grid_12">


                                        {foreach name=loop item=item from=$dados}
					<li>
                                               {if $tipo eq "paroquia" || $tipo eq "capela"}
                                                    <a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" class="search_list">
                                                            <img src="http://img.cancaonova.com/paroquias/paroquias/{$item.pa_id}.jpg" width="110" height="110">
                                                    </a>
                                                    <p class="name"><a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/">{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}</a></p>
                                                    <p>Cidade: {$item.pa_cidade} - {$item.pa_estado}</p>
                                                    <p>Bairro: {$item.pa_bairro}</p>
                                                    <p>Endereco: {$item.pa_rua}, {$item.pa_numero}</p>
                                                {/if}

                                                {if $tipo eq "usuario" }
                                                    <p class="name">Nome: <a href='{$urlbase}busca/usuarios/id/{$item.us_id}/'>{$item.us_nome}</a></p>
                                                    <p>Email: {$item.us_email}</p>
                                                    <p>Cidade: {$item.us_cidade} - {$item.us_estado}</p>
                                                {/if}

                                                {if $tipo eq "cidade" }
                                                    <p class="name">
                                                        <a href='{$urlbase}busca/cidades/cidade/{$item.pa_cidade}/uf/{$item.pa_estado}'>
                                                             {$item.pa_cidade} - {$item.pa_estado} 
                                                         </a>
                                                    </p>
                                                {/if}

					</li>
                                        {/foreach}
				</ul>
               {include file="defult/paginate.tpl"}
			</div>
		</div>
	