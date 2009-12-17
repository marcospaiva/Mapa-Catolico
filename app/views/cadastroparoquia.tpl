{*Smarty*}

<div>

<form action="{$urlbase}/paroquia/cadastro1" method="post" name="form1">

    
    Tipo: <select name=tipo id =tipo>
	{html_options values=$tipo_id selected=$tipo_c output=$tipo}
    </select>
    <br>
    CEP : <input type="text" name="cep" id="cep" value="{$cep}" /> <br>
    <input type="submit" value="Proximo">

</form>

  
  
</div>
