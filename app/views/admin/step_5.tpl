<div class="grid_7 steps">
	<h2>Essa é a etapa 4 do cadastramento, siga os passos corretamente.</h2>
<<<<<<< HEAD
	<form action="{$urlbase}paroquia/inserir" method="post" name="form" id="form" enctype='multipart/form-data'>
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
                <input type="hidden" name="tipo" id="tipo" value="{$tipo}">

		<fieldset id="" class="">
			<!-- <legend>Passo 4</legend> -->
                        {if $tipo eq 2}
                            <label for="Nome_da_Capela"> Nome da Capela</label>
                            <input type="text" name="nome" id="nome" value="{$nome}">
                        {/if}
                        {if $tipo eq 1}
                             <label for="Nome_da_Paroquia"> Nome da Paroquia</label>
                             <input type="text" name="nome" id="nome" value="{$nome}">

                             <label for="Nome_da_Paroco"> Nome da Paroco</label>
                             <input type="text" name="paroco" id="paroco" value="{$paroco}">
                        {/if}

			<label for="telefone">Telefone</label>
			<input type="text" name="tel" value="" id="tel">

			<label for="telefone">Email</label>
			<input type="text" name="email" value="" id="email">
			
			<label for="email">Site</label>
			<input type="text" name="site" value="" id="site" class="strong"/>
			
			<label for="imagem">Foto (da paroquia ou capela)</label>
			<input type="file" name="imagem" id="imagem">
=======
	<form class="step-1" action="common_main_parish.php">
		<fieldset id="" class="">
			<!-- <legend>Passo 4</legend> -->
			
			<label for="telefone">Telefone</label>
			<input type="text" name="telefone" value="" id="telefone">
			
			<label for="email">Email</label>
			<input type="text" name="email" value="" id="email" class="strong"/>
			
			<label for="foto_(da_paroquia_ou_capela)">Foto (da paroquia ou capela)</label>
			<input type="file" name="foto_(da_paroquia_ou_capela)" value="" id="foto_(da_paroquia_ou_capela)">
>>>>>>> d11275dfb71280eb68b507c3b68ff0f5a8a9a589
			
			<label for="descricao">Descrição</label>
			<textarea name="descricao" rows="8" cols="40"></textarea>
				
		</fieldset>
<<<<<<< HEAD
		<a href="admin_content_n_3.php">voltar uma etapa</a><input type="submit" name="" value="Finalizar Cadastro >" id="">
=======
		<a href="">voltar uma etapa</a><input type="submit" name="" value="Finalizar Cadastro >" id="">
>>>>>>> d11275dfb71280eb68b507c3b68ff0f5a8a9a589
	</form>
</div>