{* Smarty *}

<form action="{$urlbase}/admin/usuarioupdate" method="post" name="form1">
    <input type="hidden" name="lat" id="lat" value="{$usuario.us_latitude}" >
    <input type="hidden" name="lon" id="lon" value="{$usuario.us_longitude}" >


    Nome Completo: <input type="text" name="nome" id="nome" value="{$usuario.us_nome}" />
<br>
    Sexo: <select name=sexo id =sexo>
	{html_options values=$sexo_id selected=$usuario.us_sexo output=$sexo}
    </select>
<br>
    E-mail: <input type="text" name="email" id="email" value="{$usuario.us_email}" />
<br>
    Faz parte da diocese de: <select name=diocese id =diocese>
	{html_options options=$diocese selected=$usuario.di_id }
    </select>
<br>

    CEP : <input type="text" name="cep" id="cep" value="{$usuario.us_cep}" />
<br>

    Estado : <input type="text" name="uf" id="uf" value="{$usuario.us_estado}">
<br>
    Cidade : <input type="text" name="cidade" id="cidade" value="{$usuario.us_cidade}">
<br>
    Bairro : <input type="text" name="bairro" id="bairro" value="{$usuario.us_bairro}">
<br>
    Endereco: <input type="text" name="rua" id="rua" value="{$usuario.us_rua}">
    Numero : <input type="text" name="numero" id="numero" value="{$usuario.us_numero}" >
<br>


<input type="submit" value="Alterar">

</form>
