<div class="grid_7 steps">
	<h2 title="Etapa 5 de 5">Etapa 5 de 5</h2>

	<form action="{$urlbase}admin/paroquiainserir" method="post" name="formadmin" id="formadmin" enctype='multipart/form-data' class="step-1">
		<fieldset id="" class="">          
      		<legend>Nomeclatura e localização</legend>
		<input type="hidden" name="bairro" id="bairro" value="{$bairro}">
                <input type="hidden" name="cep" id="cep" value="{$cep}">
                <input type="hidden" name="cidade" id="cidade" value="{$cidade}">
                <input type="hidden" name="pais" id="pais" value="{$pais}">
                <input type="hidden" name="lat" id="lat" value="{$lat}" >
                <input type="hidden" name="lon" id="lon" value="{$lon}" >
                <input type="hidden" name="numero" id="numero" value="{$numero}">
                <input type="hidden" name="tipo" id="tipo" value="{$tipo}">
                <input type="hidden" name="rua" id="rua" value="{$rua}">
                <input type="hidden" name="uf" id="uf" value="{$uf}">
                <input type="hidden" name="diocese" id="diocese" value="{$diocese}">        
  
                <label for="nome"> Nome da Paroquia</label>
                <input type="text" name="nome" id="nome" value="{$nome}" title="Digite o nome da paróquia"/>

                <label for="paroco"> Nome da Paroco</label>
                <input type="text" name="paroco" id="paroco" value="{$paroco}" title="Digite o nome do Pároco"/>

                <label for="telefone">Telefone</label>
                <input type="text" name="tel" value="" id="tel" title="Digite o telefone"/>

                <label for="email">Email</label>
                <input type="text" name="email" value="" id="email" title="Digite o email de contato"/>

                <label for="site">Site</label>
                <input type="text" name="site" value="" id="site" class="strong" title="Digite o endereço do web site"/>

                <label for="imagem">Foto (da paroquia ou capela)</label>
                <input type="file" name="imagem" id="imagem" title="Enviar imagem"/>

                <label for="descricao">Descrição</label>
                <textarea name="descricao" rows="8" cols="40" title="Digite uma descrição"></textarea>
				
		</fieldset>
		<a href="">voltar uma etapa</a><input type="submit"  name="button" id="button" value="Finalizar Cadastro"/>

	</form>
</div>