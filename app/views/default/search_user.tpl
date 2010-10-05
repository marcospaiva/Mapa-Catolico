	<div class="container_12 clearfix">
				<ul id="search_result" class="grid_12">

                                        {foreach name=loop item=item from=$dados}
					<li>
                                                <p class="name">Nome: <a href='{$urlbase}/busca/usuarios/id/{$item.us_id}/'>{$item.us_nome}</a></p>
						<p>Email: {$item.us_email}</p>
                                                <p>Cidade: {$item.us_cidade} - {$item.us_estado}</p>
					</li>
                                        {/foreach}
				</ul>

                                {include file="paginacao.tpl"}

				<p id="more_results">Mais resultados:</p>
				<ul id="paginate_result">
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
				</ul>
			</div>
		</div>
