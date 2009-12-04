{*Smarty*}

<div>
<form action="/paroquias/usuario/cadastro2" method="post" name="form1">

    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="end" id="end" value="{$end}">
    Estado : <input type="text" name="uf" id="uf" value="{$uf}"><br>
    Cidade : <input type="text" name="cidade" id="cidade" value="{$cidade}"><br>
    Bairro : <input type="text" name="bairro" id="bairro" value="{$bairro}"><br>
    Endereco: <input type="text" name="tp_logr" id="tp_logr" value="{$tp_logr}">
    <input type="text" name="logr" id="logr" value="{$logr}"><br>
    Numero : <input type="text" name="numero" id="numero" >

    <input type="submit" value="Proximo">

</form>

</div>