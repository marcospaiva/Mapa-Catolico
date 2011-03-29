
<!--paginate-->
<ul id="paginate">
        {if $page->previous}
	<li><a href='{$url}{$page->previous}/' title='Anterior' class="_rounded rounded_ prev btn"> << </a></li>
        {/if}
            <li id="pags">
		{foreach item=pagina from=$page->pagesInRange}
                   {if $page->current eq $pagina}
		    <a href="{$url}{$pagina}/" class="active">{$pagina}</a>

                    {else}
                    <a href="{$url}{$pagina}/">{$pagina}</a> 
                    {/if}
                {/foreach}
            </li>
        {if $page->next}
	<li><a href='{$url}{$page->next}/' title='Proximo' class="_rounded rounded_  next btn"> >> </a></li>
        {/if}
</ul>
<!--end paginate-->

