
<!--paginate-->
<ul id="paginate">

	<li><a href='{$url}{$page->previous}/' title='Anterior' class="_rounded rounded_ prev btn"> << </a></li>
            <li id="pags">
		{foreach item=pagina from=$page->pagesInRange}
                    {if $page->current eq $pagina}
                            {$pagina}
                    {else}
                    <a href="{$url}{$pagina}/">{$pagina}</a> 
                    {/if}
                {/foreach}
            </li>
	<li><a href='{$url}{$page->next}/' title='Proximo' class="_rounded rounded_  next btn"> >> </a></li>
</ul>
<!--end paginate-->

