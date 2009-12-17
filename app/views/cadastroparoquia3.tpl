{*Smarty*}


<div>
<form action="{$urlbase}/paroquia/inserir" method="post" name="form1" enctype='multipart/form-data'>

    <input type="hidden" name="bairro" id="bairro" value="{$bairro}">
    <input type="hidden" name="cep" id="cep" value="{$cep}">
    <input type="hidden" name="cidade" id="cidade" value="{$cidade}">
    <input type="hidden" name="diocese" id="diocese" value="{$diocese}">
    <input type="hidden" name="lat" id="lat" value="{$lat}" >
    <input type="hidden" name="lon" id="lon" value="{$lon}" >    
    <input type="hidden" name="nome" id="nome" value="{$nome}">
    <input type="hidden" name="numero" id="numero" value="{$numero}">
    <input type="hidden" name="paroco" id="paroco" value="{$paroco}">
    <input type="hidden" name="tipo" id="tipo" value="{$tipo}">
    <input type="hidden" name="rua" id="rua" value="{$rua}">
    <input type="hidden" name="uf" id="uf" value="{$uf}">

    telefone: <input type="text" name="tel_cod" id="tel_cod" value="{$tel_cod}">
    <input type="text" name="tel" id="tel" value="{$tel}"><br>
    email : <input type="text" name="email" id="email" value="{$email}"><br>
    site : <input type="text" name="site" id="site" value="http:\\"><br>
    Imagem : <input type="file" name="imagem" id="imagem"><br>
    Descricao : <textarea name="descricao" id="descricao"></textarea><br>


   
    <input type="submit" value="Proximo">

</form>

</div>
