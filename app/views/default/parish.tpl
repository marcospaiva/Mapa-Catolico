<section class="container_12">
	

	<header class="grid_7">
		<h1 class="title">{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}</h1>
	
	</header>
	<section class="wrapper _rounded rounded_ grid_12">
	<!-- the map -->
		<section class="left">
		
			<section class="map">
				
			</section>
			<section id="fn">
				
			</section>
			<section id="info">
				<div>
					<p>Diocese:{$diocese}</p>
					<p>Bispo:{$bispo}</p>
					<p>Pároco:{$pa.pa_paroco}</p>
				</div>
				<p id="institucional">
					TEL: pa.pa_tel}, email: colocarumemail@coloque.com - <a href="{$pa.pa_site}">(colocar o site){$pa.pa_site}</a><br>
					{$pa.pa_rua}, {$pa.pa_numero}, {$pa.pa_bairro} - {$pa.pa_cidade}-{$pa.pa_estado} / {$pa.pa_pais}
				</p>
				<span class="clear"></span>
				<hr>
				<p>
					{$pa.pa_descricao}
				</p>
				<hr>
				<p>
					<small>Última atualização em 00/00/0000 - por "usuário"</small><br>
					Achou alguma informação incorreta? Colabore <a href="">editando esse perfil</a> ou <a href="">denunciando abuso</a>
					
				</p>
			</section	
		</section>
	<!-- end of map -->
		
	<!-- begin list -->
		<ul class="list ">
			<li>
				<a href="">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>Paróquia são benedito do escapulário sagrado</h2>
					<h3>Cachoeira Paulista - SP</h3>
				</a>
			</li>
			<li>
				<a href="">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>Paróquia são benedito do escapulário sagrado</h2>
					<h3>Cachoeira Paulista - SP</h3>
				</a>
			</li>
			<li>
				<a href="">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>Paróquia são benedito do escapulário sagrado</h2>
					<h3>Cachoeira Paulista - SP</h3>
				</a>
			</li>
			<li>
				<a href="">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>Paróquia são benedito do escapulário sagrado</h2>
					<h3>Cachoeira Paulista - SP</h3>
				</a>
			</li>
			<li>
				<a href="">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<span class="see _rounded rounded_" title="Veja mais">Veja +</span>
					<h2>Paróquia são benedito do escapulário sagrado</h2>
					<h3>Cachoeira Paulista - SP</h3>
				</a>
			</li>
		</ul>
	
		{include file="default/paginate.tpl"}	
	<!-- end list -->
	<span class="clear"></span>
	
	</section>


</section>



<span class="clear"></span>








<!-- 
	<h2 class="grid_12"></h2>
	<div id="info" class="grid_4">
		<p>
			<a href="{$urlbase}p/{$item.di_id}/{$item.pa_nome}/" class="img_list">
		    	<img src="{image id =$pa.pa_id}" width="110" height="110" alt="{if $pa.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$pa.pa_nome}" />
		    </a>
		
        
		
			{if $pa.pa_validacao eq "1"} 
			<p>	{$pa.pa_validacao} pessoa já esteve aqui!</p>
			
			{elseif $pa.pa_validacao ge "2"} 
				<p>{$pa.pa_validacao} pessoas já estiveram aqui!</p>
			{else}
				{if $pa.pa_validacao eq "0" and $usuariobase ne ""}
				<p>
					Seja o primeiro a dizer que esteve aqui.
				</p>
				{else}
				<a href="#dialog" class="login"name="modal">Seja o primeiro a dizer que esteve aqui</a>.
				{/if}
				
			{/if}
		</p>
		{if $usuariobase ne ""}
					<form method="post" name="form1" action ="{$urlbase}paroquiaexibir/validar">
		            	<input type="hidden" id="validacao" name="validacao" value="{$pa.pa_validacao}">
		               	<input type="hidden" id="paroquia" name="paroquia" value="{$pa.pa_id}">
						<input type="submit" value="Eu já estive aqui!"/>
			        </form>
		        {/if} 
		<hr/>
		<p class="other"><strong>Descrição:</strong></p>           

		{if $pa.pa_site eq ""} {else}
		<p class="other">
			<strong>Site:</strong><a href="{$pa.pa_site}">{$pa.pa_site}</a>
		</p>
		{/if}
		<hr/>
		<p>
			<strong title="Quem cadastrou">Quem cadastrou:</strong>
			<a href="{$urlbase}busca/usuarios/id/{$usuarioid}/" class="clearfix" title="Usuário: {$usuario}">{$usuario}</a>
            <a href="" class="clearfix" title="Email: {$email}">{$email}</a>
		</p>

	</div>

	<div id="map_canvas" class="grid_8" style="height:500px;"></div>
	</div>
</div> -->