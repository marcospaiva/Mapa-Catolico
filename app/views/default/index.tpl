{include file=header.tpl}

<section id="content" class="container_12">
	<!-- common search and index -->
	{include file=default/common.tpl}
	<!-- end common search and index -->
	<hr class="clear">
	<section id="ad" class="grid_6">
		<span>publicidade</span>
		<img src="{$urlbase}public/img/ad.jpg" alt="">
	</section>
	<section id="refresh" class="grid_6 _rounded rounded_">
		<header>
			<h1 id="notícias_e_atualizações">Notícias e atualizações</h1>
		</header>
		<section class="slider">
			<ul>
			{foreach from=$frase item=f key=k}
				<!--{if $k < 3}
					<li>{$f.fr_frase} - {$f.fr_autor}</li>
				{/if}-->
				{$f}
			
			{/foreach}
			</ul>

		
		</section>
	</section>
</section>
<!-- end content -->

<hr class="clear">
<!-- end of content -->
{include file=footer.tpl}