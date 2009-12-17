<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="{$urlbase}public/css/style.css" type="text/css" rel="stylesheet" />
		<link href="{$urlbase}public/css/common.css" type="text/css" rel="stylesheet" />
		<!--This page is a template for all of pages in this app-->
	</head>

        {if $template eq "defult/parish.tpl"}
        <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
        <script src="{$urlbase}public/js/maps.js" type="text/javascript"></script>
            <body onload="init('{$pa.pa_nome}','{$pa.pa_latitude}','{$pa.pa_longitude}')">
        {else}
            <body>
        {/if}
	
		<div class="total">
			<div class="container_12 clearfix">{include file="defult/common_menu.tpl"} {include file="defult/common_rightbox.tpl"}</div>
		</div>
		<div class="total">
			<div id="main_home" class="container_12 clearfix">{include file="defult/common_top.tpl"}</div>
		</div>
		<div class="total">
			{include file= $template }
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix">{include file="defult/footer.tpl"}</div>
		</div>
	</body>
</html>
