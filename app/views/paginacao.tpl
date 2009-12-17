{*Smarty*}

{if $page->previous}
	<a href='{$url}{$page->first}/' title='Primeiro'> << </a>
	<a href='{$url}{$page->previous}/' title='Anterior'> < </a>
{/if}
{foreach item=pagina from=$page->pagesInRange}
	{if $page->current eq $pagina}
		{$pagina}
	{else}
		<a href='{$url}{$pagina}/'>{$pagina}</a>
	{/if}
{/foreach}
{if $page->next}
	<a href='{$url}{$page->next}/' title='Proximo'> > </a>
	<a href='{$url}{$page->last}/' title='Ultimo'> >> </a>
{/if}