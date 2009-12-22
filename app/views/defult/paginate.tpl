<p id="more_results">Mais resultados:</p>
<ul id="paginate_result">
{if $page->previous}
	<li><a href='{$url}{$page->first}/' title='Primeiro'> << </a></li>
	<li><a href='{$url}{$page->previous}/' title='Anterior'> < </a></li>
{/if}
{foreach item=pagina from=$page->pagesInRange}
	{if $page->current eq $pagina}
		{$pagina}
	{else}
		
			<li><a href="{$url}{$pagina}/">{$pagina}</a> /</li>
	{/if}
{/foreach}
{if $page->next}
	<li><a href='{$url}{$page->next}/' title='Proximo'> > </a></li>
	<li><a href='{$url}{$page->last}/' title='Ultimo'> >> </a></li>
{/if}
</ul>