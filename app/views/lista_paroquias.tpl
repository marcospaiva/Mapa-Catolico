{* Smarty *}


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>

	</head>
	<body>

    {foreach name=loop item=item from=$dados}
    <img src="{image id =$item.pa_id}"><br>

    <a href='{$urlbase}/p/{$item.di_id}/{$item.pa_nome}/'>
    {if $item.pa_tipo eq "1"}Paroquia :{else} Capela{/if} {$item.pa_nome} </a><br>
    Cidade : {$item.pa_cidade} - {$item.pa_estado} <br>
    Bairro : {$item.pa_bairro}<br>
    Endereco: {$item.pa_rua}, {$item.pa_numero}<br>

   {/foreach}

<br>

    {include file="paginacao.tpl"}
	</body>
</html>

