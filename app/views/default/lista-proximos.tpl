<div id="lista-proximos">
	<ul class="list">	
		{foreach name=proximos item=proximo from=$proximos}		
			
			<li>
				<a href="{$urlbase}p/{$proximo.di_id}/{$proximo.pa_nome}/">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>{$proximo.pa_nome}</h2>
					<h3>{$proximo.pa_cidade}</h3>
				</a>
			</li>
		{/foreach}		
	</ul>
</div>
{include file="default/paginacao.tpl"}