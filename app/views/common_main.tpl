<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="{$urlbase}css/style.css" type="text/css" rel="stylesheet" />
		<link href="{$urlbase}css/common.css" type="text/css" rel="stylesheet" />
		<!--This page is a template for all of pages in this app-->
	</head>
	<body>
		<div class="total">
			<div class="container_12 clearfix">{include file=common_menu.tpl} {include file=common_rightbox.tpl}</div>
		</div>
		<div class="total">
			<div id="main_home" class="container_12 clearfix">{include file=common_top.tpl}</div>
		</div>
		<div class="total">
			{include file=contact.tpl}
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix">{include file=footer.tpl}</div>
		</div>
	</body>
</html>
