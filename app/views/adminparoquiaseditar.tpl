{* Smarty *}

<form action="{$urlbase}/admin/paroquiaupdate" method="post" name="form1">
    <input type="hidden" name="id" id="id" value="{$pa.pa_id}">
    <input type="hidden" name="lat" id="lat" value="{$pa.pa_latitude}" >
    <input type="hidden" name="lon" id="lon" value="{$pa.pa_longitude}" >

    Tipo: <select name=tipo id =tipo>
	{html_options values=$tipo_id selected=$pa.pa_tipo output=$tipo}
    </select>

    <br>
    CEP : <input type="text" name="cep" id="cep" value="{$pa.pa_cep}" /> <br>



    Estado : <input type="text" name="uf" id="uf" value="{$pa.pa_estado}"><br>
    Cidade : <input type="text" name="cidade" id="cidade" value="{$pa.pa_cidade}"><br>
    Bairro : <input type="text" name="bairro" id="bairro" value="{$pa.pa_bairro}"><br>
    Endereco: <input type="text" name="rua" id="rua" value="{$pa.pa_rua}">
    Numero : <input type="text" name="numero" id="numero" value="{$pa.pa_numero}" ><br><br>


Faz parte da diocese de: <select name=diocese id =diocese>
	{html_options options=$diocese selected=$pa.di_id }
    </select>
<br>


    Nome da Paroquia : <input type="text" name="nome" id="nome" value="{$pa.pa_nome}"><br>
    Nome do Paroco : <input type="text" name="paroco" id="paroco" value="{$pa.pa_paroco}"><br>

    telefone: <input type="text" name="tel_cod" id="tel_cod" value="{$pa.pa_tel_cod}">
    <input type="text" name="tel" id="tel" value="{$pa.pa_tel}"><br>
    email : <input type="text" name="email" id="email" value="{$pa.pa_email}"><br>
    site : <input type="text" name="site" id="site" value="{$pa.pa_site}"><br>
    Imagem : <input type="file" name="imagem" id="imagem"><br>
    Descricao : <textarea name="descricao" id="descricao">{$pa.pa_descricao}</textarea><br>

<input type="submit" value="Alterar">

</form>
