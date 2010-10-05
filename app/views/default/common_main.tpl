<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>MapaCatolico</title>
		<link href="{$urlbase}public/css/style.css" type="text/css" rel="stylesheet" />
		<link href="{$urlbase}public/css/internal.css" type="text/css" rel="stylesheet" />
		<!--<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>-->
		<!--This page is a template for all of pages in this app-->
	</head>
             
                
        {if $template eq "default/new_account.tpl"}
            <script type="text/javascript" src="{$urlbase}public/js/jquery-1.4.2.min.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/jquery-validate/jquery.validate.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/jquery.maskedinput-1.2.2.js"/></script>
            <script type="text/javascript" src="{$urlbase}public/js/cadastro.js"></script>
            <script type="text/javascript" src="{$urlbase}public/js/mascara.js"></script>
            

        {/if}
        
        {if $template eq "default/parish.tpl"}

            <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
            <script src="{$urlbase}public/js/maps.js" type="text/javascript"></script>
            <body onload="init('{$pa.pa_nome}','{$pa.pa_latitude}','{$pa.pa_longitude}')">               
             
        {else}        
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
