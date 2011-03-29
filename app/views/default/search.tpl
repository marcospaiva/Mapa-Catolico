<!--search-->
<section id="content" class="container_12 clearfix">


    <header class="grid_7">
		{if $total eq ""}
        <h1 class="title grid_12">Nada foi encontrado com os termos da sua busca</h1>
        <p class="grid_12">
			Por favor, tente outro termo a ser buscado.
        </p>
		{else}
        <h1 class="title grid_12">A sua busca tem {$total} resultados.</h1>
		{/if}

    </header>
    <section class="wrapper _rounded rounded_ grid_12">
        <!-- the map -->
        <section class="left">
           <section class="map" class="clearfix">

				<div id="map_canvas"></div>
				{include file="default/legend.tpl"}

	   </section>

        </section>
        <!-- end of map -->
        <!-- begin list -->
        <section class="right">
            <ul id="mylist" class="list">
		{foreach name=loop item=item from=$dados}

                <li>
                    <a href="{$urlbase}p/{$item.pa_id}/{substituir nome =$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
                        <img src="{image id =$item.pa_id}" alt="{$item.pa_id}/{substituir nome =$item.pa_nome}" width="62" height="62">

			</section>
		
		</section>
		<!-- end of map -->
		<!-- begin list -->
		<section class="right">
			<ul class="list">
				{foreach name=loop item=item from=$dados}

			                <li>
			                    <a href="{$urlbase}p/{$item.di_id}/{substituir nome =$item.pa_nome}/" title="{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome}">
									<img src="{image id =$item.pa_id}" alt="{$proximo.pa_id}/{substituir nome =$proximo.pa_nome}" width="62" height="62">
									<span class="over sprite"></span>

									{include file="interact.tpl"}
                        <h2>{if $item.pa_tipo eq "1"}Paroquia {else} Capela {/if} {$item.pa_nome} {$item.pa_nome}</h2>

                        <h3>{$item.pa_cidade} - {$item.pa_estado}</h3>
                    </a>
                </li>

                {/foreach}
            </ul>
        </section>



        <!-- end list -->
    </section>

</section>
