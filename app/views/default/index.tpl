<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="content-language" content="pt-br" />
		<meta name="description" content="Cadastro nacional de paróquias e capelas." />
		<meta name="keywords" content="Mapa, católico, localização, paróquias, capelas" />
		<meta name="robots" content="index" />
		
		<title>Mapa Católico - cadastro de Paróquias e Capelas</title>
		<link href="{$urlbase}public/css/style.css" type="text/css" rel="stylesheet" />
		<link href="{$urlbase}public/css/main.css" type="text/css" rel="stylesheet" />
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="{$urlbase}public/js/resetDefaultValue.js"></script>
		<script type="text/javascript" src="http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.js"></script>
		<script type="text/javascript" src="{$urlbase}public/js/main.js"></script>
	</head>
	<body>
		<div class="total">
			<div class="container_12 clearfix">{include file=default/common_menu.tpl}</div>
		</div>
		<div class="total">
			<div id="main_home" class="container_12 clearfix">{include file=default/main_home.tpl}</div>
		</div>
		<div class="total">
			<div id="vicinity"class="container_12 clearfix">{include file=default/main_vicinity.tpl}</div>
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix">{include file=default/footer.tpl}</div>
		</div>
		
	</body>
</html>
