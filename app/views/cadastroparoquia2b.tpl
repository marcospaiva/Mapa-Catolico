{*Smarty*}


<div>
<form action="{$urlbase}/paroquia/cadastro3" method="post" name="form1">

    <input type="hidden" name="bairro" id="bairro" value="{$bairro}">
    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="cidade" id="cidade" value="{$cidade}">
    <input type="hidden" name="lat" id="lat" value="{$lat}" >
    <input type="hidden" name="lon" id="lon" value="{$lon}" >
    <input type="hidden" name="logr" id="logr" value="{$logr}">
    <input type="hidden" name="numero" id="numero" value="{$numero}">
    <input type="hidden" name="tipo" id="tipo" value="{$tipo}">
    <input type="hidden" name="tp_logr" id="tp_logr" value="{$tp_logr}">
    <input type="hidden" name="uf" id="uf" value="{$uf}">

    Essa capela faz parte da diocese de  <select name=diocese id =diocese>
	{html_options options=$diocese}
    </select><br>

    Nome da Capela : <input type="text" name="nome" id="nome" value="{$nome}"><br>

    <input type="submit" value="Proximo">

</form>

</div>
