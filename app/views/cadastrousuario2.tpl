{*Smarty*}


<div>
<form action="{$urlbase}/usuario/inserir" method="post" name="form1">

    <input type="hidden" name="bairro" id="bairro" value="{$bairro}">
    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="diocese" id="diocese" value="{$diocese}">
    <input type="hidden" name="cidade" id="cidade" value="{$cidade}">
    <input type="hidden" name="email" id="email" value="{$email}">
    <input type="hidden" name="nome" id="nome" value="{$nome}">
    <input type="hidden" name="numero" id="numero" value="{$numero}" >
    <input type="hidden" name="rua" id="rua" value="{$rua}">
    <input type="hidden" name="senha" id="senha" value="{$senha}">
    <input type="hidden" name="sexo" id="sexo" value="{$sexo}">    
    <input type="hidden" name="uf" id="uf" value="{$uf}">
    <input type="text" name="lat" id="lat" value="{$lat}" >
    <input type="text" name="lon" id="lon" value="{$lon}" >
    

    <input type="submit" value="Finalizar">

</form>

</div>
