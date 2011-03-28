<section class="container_12">
	<header class="grid_7">
		<h1 class="title">{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}</h1>
	</header>
	<section class="wrapper _rounded rounded_ grid_12">
		<section class="left">
			<!-- mapa -->

			<section class="map" class="clearfix">

				<div id="map_canvas"></div>
				{include file="default/legend.tpl"}
			</section>
			<!-- end map -->
		
			<!-- funcões -->

			<section id="fn" class="clearfix">
				<ul>
					<li>
						<a href="" id="route" class="rounded">
							<span class="link">Como chegar</span>
							<span class="sprite">></span>
						</a>
						<form action="" method="" id="trace" class="rounded">
							<fieldset id="" class="rounded">
								<legend></legend>
								
									<label for=""><input type="radio" name="" value="">Usar a minha localização</label>
									<span class="clearfix"></span>
									<input type="text" name="some_name" value="" id="some_name" class="rounded_">
									<input type="submit" name="" value="OK" class="btn _rounded">				
							</fieldset>
						</form>
					</li>
					<li><a href="" id="here" class="_rounded rounded_">Eu já estive aqui</a></li>
					<li id="twitt"><a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-via="mapacatolico">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></li>
					<li id="face"><iframe src="http://www.facebook.com/plugins/like.php?href&amp;layout=button_count&amp;show_faces=false&amp;width=120&amp;action=like&amp;font=trebuchet+ms&amp;colorscheme=light&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:65px; height:21px;" allowTransparency="true"></iframe></li>
					<li><a href="" class="share rounded"><span class="sprite">Envelope</span>Email</a></li>
					<li><a href="" class="share rounded"> < /embed></a></li>
				</ul>

			</section>
			<!-- end funcões -->
			<hr>
			<!-- infos -->
			<section id="info">
				<div>
					<p>Diocese:{$diocese}</p>
					<p>Bispo:{$bispo}</p>
					<p>Pároco:{$pa.pa_paroco}</p>
				</div>
				<p id="institucional">
					TEL: {$pa.pa_tel}, email: {$pa.pa_email} - <a href="{$pa.pa_site}">{$pa.pa_site}</a><br>
					{$pa.pa_rua}, {$pa.pa_numero}, {$pa.pa_bairro} - {$pa.pa_cidade}-{$pa.pa_estado} / {$pa.pa_pais}
				</p>
				<span class="clear"></span>
				<hr>
				<p id="description">
					{$pa.pa_descricao}
				</p>
				<hr>
				<p id="update">
					<small>Última atualização em 00/00/0000 - por "usuário"</small><br>
					Achou alguma informação incorreta? Colabore <a href="">editando esse perfil</a> ou <a href="">denunciando abuso</a>
					
				</p>
			</section>
			<!--  -->
			
		</section>

		<section class="right big">
			{include file="default/lista-proximos.tpl"}
		</section>
	
	</section>


</section>



<span class="clear"></span>