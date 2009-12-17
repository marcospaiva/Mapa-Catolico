{* Smarty *}


<style type="text/css">
	@import url("http://localhost/projeto/public/css/style.css");
</style>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>

	</head>
	<body>

    {foreach name=loop item=item from=$dados}

    <a href='{$urlbase}/busca/usuarios/id/{$item.us_id}/'>
    Nome : {$item.us_nome} </a><br>
    E-mail: {$item.us_email} </a><br>
    cidade : {$item.us_cidade} - {$item.us_estado} <br>
 

   {/foreach}

<br>

    {include file="paginacao.tpl"}
	</body>
</html>

