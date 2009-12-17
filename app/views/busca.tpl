{* Smarty *}

<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
	<head>
              
       	</head>
	<body>
        <form action="{$urlbase}/busca/buscar" method="POST" name="form1">
            <select name="tipo" id="tipo">
                <option value='capela'>Capela</option>
                <option value='paroquia'>paroquia</option>
                <option value='usuario'>Usuario</option>
                <option value='cidade'>cidade</option>
            </select>

            <input type="text" name="palavra" id="palavra">
            <input type="submit" value="BUSCAR">

        </form>
	{include file="paginacao.tpl"}
	</body>
</html>
