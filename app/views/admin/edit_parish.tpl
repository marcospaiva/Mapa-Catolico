<!--  -->
<div id="edit_parish" class="grid_12">


	<form action="{$urlbase}admin/paroquiaupdate" method="post" name="edit_par" id="edit_par" enctype='multipart/form-data'>
    	<input type="hidden" name="id" id="id" value="{$pa.pa_id}"/>
    	<input type="hidden" name="lat" id="lat" value="{$pa.pa_latitude}" />
    	<input type="hidden" name="lon" id="lon" value="{$pa.pa_longitude}" />
	
		<ul class="clearfix">
			<li><a href="#religious">Dados Religiosos</a></li>
			<li><a href="#localization">Localização</a></li>
			<li><a href="#contact">Contato</a></li>
		</ul>
	
		<fieldset id="religious" class="">
			<legend>Dados religiosos</legend>
			<label for="tipo">Tipo</label>
			<select name="tipo" id="tipo">
				{html_options values=$tipo_id selected=$pa.pa_tipo output=$tipo}
			</select>
		
			<label for="diocese">Faz parte da diocese de:</label>
			<select name="diocese" id="diocese">
				{html_options options=$diocese selected=$pa.di_id }
			</select>
		
			<label for="nome">Nome</label>
			<input type="text" name="nome" value="{$pa.pa_nome}" id="nome"/>
		
			<label for="paroco">Nome do paroco:</label>
			<input type="text" name="paroco" value="{$pa.pa_paroco}" id="paroco"/>
		
		</fieldset>
	
		<fieldset id="localization" class="">
			<legend>Localização</legend>
		
			<label for="cep">CEP</label>
			<input type="text" name="cep" value="{$pa.pa_cep}" id="cep"/>
		
			<label for="uf">Estado</label>
			<input type="text" name="uf" value="{$pa.pa_estado}" id="uf"/>
		
			<label for="cidade">Cidade</label>
			<input type="text" name="cidade" value="{$pa.pa_cidade}" id="cidade"/>
		
			<label for="bairro">Bairro</label>
			<input type="text" name="bairro" value="{$pa.pa_bairro}" id="bairro"/>

                        <label for="rua">Rua</label>
			<input type="text" name="rua" value="{$pa.pa_rua}" id="rua"/>
		
			<label for="rua">Numero</label>
			<input type="text" name="numero" value="{$pa.pa_numero}" id="numero"/>
		
		
		</fieldset>
	
		<fieldset id="contact" class="">
			<legend>Contato</legend>
		
			<label for="tel">TEL</label>
			<input type="text" name="tel" value="{$pa.pa_tel}" id="tel"/>
		
			<label for="email">Email</label>
			<input type="text" name="email" value="{$pa.pa_email}" id="email"/>
		
			<label for="site">Site</label>
			<input type="text" name="site" value="{$pa.pa_site}" id="site"/>
		
			<label for="imagem">Imagem</label>
			<input type="file" name="imagem" id="imagem" title="Enviar imagem"/>
		
			<label for="descricao">Descrição</label>
			<textarea name="descricao" id="descricao">{$pa.pa_descricao}</textarea>
		
		</fieldset>

		<input type="submit" name="atualizar_dados" value="Atualizar dados" id="atualizar_dados">

	</form>

</div>
<!--  -->