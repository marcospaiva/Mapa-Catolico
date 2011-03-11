<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="pt" class="no-js"> <!--<![endif]-->
<head>
	<meta charset="UTF-8">
	
	<title>Mapa católico - Seus lugares católicos.
			{if $template eq "default/new_account.tpl"}
				 | Criar nova conta.
			{/if}
			{if $template eq "default/parish.tpl"}
				 | Criar nova conta.
			{/if}
			{if $template eq "default/contact.tpl"}
				| Mande-nos uma mensagem.
			{/if}
			{if $template eq "default/search.tpl"}
				 | Resultados da busca.
			{/if}
			{if $template eq "default/recuperarsenha.tpl"}
					 | Recuperação de senha.
			{/if}
	</title>
	<meta name="keywords" content="Mapa, católico, localização, paróquias, capelas" />
	<meta name="robots" content="index" />
	<meta name="description" content="Os melhores lugares católicos">
	<meta name="author" content="@cancaonova - @marcos_paiva, @lucihana, @rafaelsalomao">
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="apple-touch-icon" href="apple-touch-icon.png"
	

	<link rel="stylesheet" type="text/css" href="{$urlbase}public/css/style.css">
	
	
	<script src="{$urlbase}public/js/libs/modernizr-1.6.min.js"></script>
</head>
<body>
<section id="top" class="container_12 clearfix">
	<header>
		<a href="{$urlbase}" title="ir para a home">Mapa Católico</a>
	</header>
	<form id="search_form" action="{$urlbase}busca/buscar" method="POST" accept-charset="utf-8">
		<input type="text" class="rounded_" value="Churbles e gueres"/>
		<input type="submit" class="_rounded" name="" value="buscar">
	</form>
	<nav>
		<ul>
			<li><a href="" class="rounded">Sobre<span> > </span></a></li>
			<li><a href="menu/ajuda" class="rounded">Ajuda</a></li>
			<li><a href="usuario/cadastro" class="rounded">Registrar</a></li>
			<li>
				<a href="" class="rounded sign_in">Entrar
					<span class="sprite"> > </span>
				</a>
				<div id="sign_box" class="_rounded rounded_">
					<form method="post" action="{$urlbase}entrar" class="_rounded rounded_">
						<fieldset id="" class="">
							<legend>Login</legend>
							
							<label for="email">Email</label>
							<input type="text" name="email" id="email" class="_rounded rounded_"/>
							<label for="senha">Senha</label>
							<input type='password' name="senha" id="senha" class="_rounded rounded_"/>
						</fieldset>
						<input type="submit" value="Entrar" class="_rounded rounded_"/>
						<a href="{$urlbase}usuario/recuperar" class="forgot">Esqueci a senha</a>
					</form>
				</div>
			</li>
			<li><a href="menu/contato" class="rounded">Contato</a></li>
		</ul>
	</nav>
</section>
<!-- end of top -->
<hr class="clear">