{assign var="urlbase" value="http://localhost:8888/paroquias/public/"}
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="{$urlbase}css/style.css" type="text/css" rel="stylesheet" />
		
	</head>
	<body>
		<div class="container_12 clearfix">{include file=main_menu.tpl} {include file=main_login.tpl}</div>
		<div class="clear">{include file=main_home.tpl}</div>
		<div>{include file=main_vicinity.tpl}</div>
		<div>{include file=footer.tpl}</div>
		
		
		
		
		
		
		
	</body>
</html>
