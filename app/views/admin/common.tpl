
<section class="wrapper _rounded rounded_ grid_12">
	<!-- the map -->
	<section class="left">
		<section class="map">
			<div id="map_canvas"></div>
		</section>
	</section>
	<!-- end of map -->
	<!-- begin list -->

	<ul class="list">
		{foreach name=loop item=item from=$dados}
		<li>
			<a href="{$urlbase}p/{$proximo.di_id}/{$proximo.pa_nome}/">
				<img src="{$urlbase}public/img/gueres.jpg" alt="">
				<h2>{$tipo} : {$item.pa_nome}</h2>
				<h3>{$item.pa_cidade} - {$item.pa_estado}</h3>
			</a>
		</li>
		{/foreach}
	</ul>
	

		
			
			<a href="{$urlbase}master/paroquiaeditar/id/{$item.pa_id}">Editar</a>


			<a href="{$urlbase}admin/paroquiadeletar/id/{$item.pa_id}">Exluir
    
	
	<!--{include file="default/paginate.tpl"}-->	
	<!-- end list -->
</section>