<!-- header user -->
		{if $usuariobase eq "Master"}
			<header id="user" class="grid_12">
				<h1 class="title">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<a href="{$urlbase}master" title="Página inicial admin">{$usuariobase}</a>
				</h1>
				<ul id="interaction">
					<li><a href="{$urlbase}/master" class="rounded btn sprite edit" title="Editar conta">Minha Conta</a></li>
					<li><a href="{$urlbase}index/sair" class="rounded btn sprite out" title="Sair">Sair</a></li>
				</ul>
			</header>
		{else}
			<header id="user" class="grid_12">
				<h1 class="title">
					<img src="{$urlbase}public/img/gueres.jpg" alt="">
					<a href="{$urlbase}admin" title="Página inicial admin">{$usuariobase}</a>
				</h1>
				<ul id="interaction">
					<li><a href="{$urlbase}admin/usuario" class="rounded btn sprite edit" title="Editar conta">Minha Conta</a></li>
					<li><a href="{$urlbase}index/sair" class="rounded btn sprite out" title="Sair">Sair</a></li>
				</ul>
			</header>
			
		{/if}

<!-- end header user -->