<!--paginate-->
<ul id="paginate">
	{if $page->previous}
	<!--<li><a href='{$url}{$page->first}/' title='Primeiro'> << </a></li>-->
	<li><a href="javascript:void()" title="Anterior" onclick="listaProximos('{$urlbase}',{$page->previous},{$latitude},{$longitude})" class="_rounded rounded_  prev btn"> < </a></li>
	{/if}
	<li id="pags">
	{foreach item=pagina from=$page->pagesInRange}
		{if $page->current eq $pagina}
		    <a href="javascript:void()" class="active">{$pagina}</a>
		{else}	
		    <!--<li><a href="{$url}{$pagina}/">{$pagina}</a> </li>-->
		    <a href="javascript:void()" onclick="listaProximos('{$urlbase}',{$pagina},{$latitude},{$longitude})">{$pagina}</a> 
		{/if}
		{/foreach}
	</li>
	
	
	{if $page->next}		
	<li><a href="javascript:void()" title="Proximo" onclick="listaProximos('{$urlbase}',{$page->next},{$latitude},{$longitude})" class="_rounded rounded_  next btn"> > </a></li>
	<!--<li><a href='{$url}{$page->last}/' title='Ultimo'> >> </a></li>-->
	{/if}
</ul>
<!--end paginate-->


