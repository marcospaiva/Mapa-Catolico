<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="content-language" content="pt-br" />
		<meta name="description" content="Cadastro nacional de paróquias e capelas." />
		<meta name="keywords" content="Mapa, católico, localização, paróquias, capelas" />
		<meta name="robots" content="index" />
		
		<title>Mapa católico - cadastro de Paróquias e Capelas
				{if $template eq "default/new_account.tpl"}
					 | Criar nova conta.
				{/if}
				{if $template eq "default/parish.tpl"}
					 | Criar nova conta.
				{/if}
				{if $template eq "default/contact.tpl"}
					
				{/if}
				{if $template eq "default/search.tpl"}
					 | Resultados da busca.
				{/if}
				{if $template eq "default/recuperarsenha.tpl"}
						 | Recuperação de senha.
				{/if}
		</title>
		<link href="{$urlbase}public/css/style.css" type="text/css" rel="stylesheet" />
		<link href="{$urlbase}public/css/internal.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
		<!--This page is a template for all of pages in this app-->
	
             
        {if $template eq "default/help.tpl"}
			<script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
			<script type="text/javascript" src="{$urlbase}public/js/jquery-ui-1.8.1.custom.min.js"></script>
			<script type="text/javascript" src="{$urlbase}public/js/main.js"></script>
		</head>
		{/if}
        
        {if $template eq "default/new_account.tpl"}
            <script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/cadastro.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
         </head>   

        {/if}
        
        {if $template eq "default/parish.tpl"}

            <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
            <script src="{$urlbase}public/js/maps.js" type="text/javascript"></script>
        </head> 
		<body onload="init('{$pa.pa_nome}','{$pa.pa_latitude}','{$pa.pa_longitude}')">               
             
        {else}        
        </head>
		<body>           
        {/if}     
	
		<div class="total">
			<div class="container_12 clearfix">{include file="default/ads.tpl"}</div>
		</div>
		<div class="total">
			<div class="container_12 clearfix">{include file="default/common_top.tpl"}</div>
		</div>
		<div class="total_search">
			<div class="container_12 clearfix">{include file="default/common_search.tpl"}</div>
		</div>
		<div class="total">
			<div class="container_12 clearfix">{include file= $template }</div>
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix">{include file="default/footer.tpl"}</div>
		</div>
	</body>
</html>