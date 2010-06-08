<!---->
<div id="edit_account" class="grid_12">
	<form action="edit_account_submit" method="get" accept-charset="utf-8" id="edit_acc">
		<ul class="clearfix">
			<li><a href="#account">Seus dados</a></li>
			<li><a href="#info">Sua localização</a></li>
		</ul>
		
		<fieldset id="account" class="">
			<legend>Edite a sua conta:</legend>
			<label for="nome">Seu Nome</label>
			<input type="text" name="nome" value="" id="nome">
		
			<label for="email">Email</label>
			<input type="text" name="email" value="" id="email">
			
			<label for="senha">Senha</label>
			<input type="password" name="senha" value="" id="senha">
			
			<label for="repita_a_senha">Repita a senha</label>
			<input type="password" name="repita_a_senha" value="" id="repita_a_senha">
			
			
		</fieldset>
		<fieldset id="info" class="">
			<legend>Informações sobre a sua localização:</legend>
			<label for="cep">CEP</label>
			<input type="text" name="cep" value="" id="cep">
			
			<label for="pais">País</label>
			<input type="text" name="" value="" id="">
			
			<label for="uf">Estado</label>
			<input type="text" name="uf" id="" class="litle"/>
			
			<label for="cidade">Cidade</label>
			<input type="text" name="" value="" id="">
			
			<label for="rua">Rua</label>
			<input type="text" name="rua" value="" id="rua" class="strong"/>
			
			<label for="numero">Numero</label>
			<input type="text" name="numero" value="" id="numero" class="litle"/>
			
			
		</fieldset>
		<input type="submit" name="atualizar_dados" value="Atualizar dados" id="atualizar_dados">
	</form>
</div>
<!---->