{*Smarty*}

<div>
<form action="{$urlbase}/usuario/cadastro2" method="post" name="form1">

    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="nome" id="nome" value="{$nome}">
    <input type="hidden" name="email" id="email" value="{$email}">
    <input type="hidden" name="senha" id="senha" value="{$senha}">
    <input type="hidden" name="sexo" id="sexo" value="{$sexo}">
    
    Estado : <input type="text" name="uf" id="uf" value="{$uf}"><br>
    Cidade : <input type="text" name="cidade" id="cidade" value="{$cidade}"><br>
    Bairro : <input type="text" name="bairro" id="bairro" value="{$bairro}"><br>
    Endereco: <input type="text" name="rua" id="rua" value="{$rua}"><br>
    Numero : <input type="text" name="numero" id="numero" ><br><br>

    Faço parte da diocese de : <select name=diocese id =diocese>
	{html_options options=$diocese}
    </select><br>

    <input type="submit" value="Proximo">

</form>

</div>