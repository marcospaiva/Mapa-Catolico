<!--paginate-->
{if $template eq ""}
	{assign var='url' value='index/listaProximos'}
{elseif $template eq "default/parish.tpl"}
	{assign var='url' value='paroquiaexibir/listaProximos'}
{/if}
<ul>
	{if $page->previous}
	<!--<li><a href='{$url}{$page->first}/' title='Primeiro'> << </a></li>-->
	<li><a href="javascript:void()" title="Anterior" onclick="listaProximos('{$urlbase}{$url}',{$page->previous},{$latitude},{$longitude})"> < </a></li>
	{/if}
	<li>
	{foreach item=pagina from=$page->pagesInRange}
		{if $page->current eq $pagina}
		    <a href="javascript:void()">{$pagina}</a>
		{else}	
		    <!--<li><a href="{$url}{$pagina}/">{$pagina}</a> </li>-->
		    <a href="javascript:void()" onclick="listaProximos('{$urlbase}{$url}',{$pagina},{$latitude},{$longitude})">{$pagina}</a> 
		{/if}
	</li>
	{/foreach}
	
	{if $page->next}		
	<li><a href="javascript:void()" title="Proximo" onclick="listaProximos('{$urlbase}{$url}',{$page->next},{$latitude},{$longitude})"> > </a></li>
	<!--<li><a href='{$url}{$page->last}/' title='Ultimo'> >> </a></li>-->
	{/if}
</ul>
<!--end paginate-->