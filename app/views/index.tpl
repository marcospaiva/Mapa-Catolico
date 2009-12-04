{assign var="urlbase" value="http://localhost:8888/paroquias/public/"}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="{$urlbase}css/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
		{include file=main_menu.tpl}
		{include file=main_login.tpl}
		{include file=main_home.tpl}
		{include file=main_vicinity.tpl}
		
		{include file=footer.tpl}
		
	</body>
</html>
