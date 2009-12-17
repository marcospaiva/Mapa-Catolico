{*Smarty*}

<div>
<form action="{$urlbase}/paroquia/cadastro2" method="post" name="form1">

    
    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="tipo" id="tipo" value="{$tipo}">
    
    Estado : <input type="text" name="uf" id="uf" value="{$uf}"><br>
    Cidade : <input type="text" name="cidade" id="cidade" value="{$cidade}"><br>
    Bairro : <input type="text" name="bairro" id="bairro" value="{$bairro}"><br>
    Endereco: <input type="text" name="rua" id="rua" value="{$rua}">
    Numero : <input type="text" name="numero" id="numero" ><br><br>

    

    <input type="submit" value="Proximo">

</form>

</div>