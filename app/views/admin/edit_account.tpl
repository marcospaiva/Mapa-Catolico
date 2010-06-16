<!---->
<div id="edit_account" class="grid_12">
	<form action="{$urlbase}/admin/usuarioupdate" method="post" name="form1" id="edit_acc">
		<ul class="clearfix">
			<li><a href="#account">Seus dados</a></li>
			<li><a href="#info">Sua localização</a></li>
		</ul>
		
		<input type="hidden" name="lat" id="lat" value="{$usuario.us_latitude}"/>
	        <input type="hidden" name="lon" id="lon" value="{$usuario.us_longitude}"/>
		
		<fieldset id="account" class="">
			<legend>Edite a sua conta:</legend>
			<label for="nome">Seu Nome</label>
			<input type="text" name="nome"  id="nome" value="{$usuario.us_nome}"/>
		
			<label for="email">Email</label>
			<input type="text" name="email"  id="email" value="{$usuario.us_email}"/>
			
			<label for="sexo">Sexo:</label>
			<select name="sexo" id="sexo" title="Selecione o seu sexo">
				{html_options values=$sexo_id selected=$usuario.us_sexo output=$sexo}
			</select>
			
			
			<label for="senha">Senha</label>
			<input type="password" name="senha" id="senha"/>
			
			<label for="repita_a_senha">Repita a senha</label>
			<input type="password" name="repita_a_senha"  id="repita_a_senha"/>
			
			
		</fieldset>
		<fieldset id="info" class="">
			<legend>Informações sobre a sua localização:</legend>
			<label for="cep">CEP</label>
			<input type="text" name="cep" value="{$usuario.us_cep}" id="cep"/>
			
			<label for="pais">País</label>
			<input type="text" name="" value="{$usuario.us_pais}" id="">
			
			<label for="uf">Estado</label>
			<input type="text" name="uf" id="" class="litle" value="{$usuario.us_estado}"/>
			
			<label for="cidade">Cidade</label>
			<input type="text" name="cidade" id="" value="{$usuario.us_cidade}"/>
			
			<label for="bairro">Bairro</label>
			<input type="text" name="bairro" id="" value="{$usuario.us_bairro}"/>
			
			<label for="rua">Rua</label>
			<input type="text" name="rua"  id="rua" class="strong" value="{$usuario.us_rua}"/>
			
			<label for="numero">Número</label>
			<input type="text" name="numero"  id="numero" class="litle" value="{$usuario.us_numero}" />
			
			
		</fieldset>
		<input type="submit" name="atualizar_dados" value="Atualizar dados" id="atualizar_dados">
	</form>
</div>
<!---->