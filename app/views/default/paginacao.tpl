<!--paginate-->
<ul>
	{if $page->previous}
	<!--<li><a href='{$url}{$page->first}/' title='Primeiro'> << </a></li>-->
	<li><a href='javascript:void()' title='Anterior' onclick='listaProximos({$page->previous},{$latitude},{$longitude})'> < </a></li>
	{/if}
	<li>
	{foreach item=pagina from=$page->pagesInRange}
		{if $page->current eq $pagina}
		    <a href="javascript:void()">{$pagina}</a>
		{else}	
		    <!--<li><a href="{$url}{$pagina}/">{$pagina}</a> </li>-->
		    <a href="javascript:void()" onclick="listaProximos({$pagina},{$latitude},{$longitude})">{$pagina}</a> 
		{/if}
	</li>
	{/foreach}
	
	{if $page->next}		
	<li><a href='javascript:void()' title='Proximo' onclick='listaProximos({$page->next},{$latitude},{$longitude})'> > </a></li>
	<!--<li><a href='{$url}{$page->last}/' title='Ultimo'> >> </a></li>-->
	{/if}
</ul>
<!--end paginate-->