<!--new account-->
<div id="new_account" class="grid_9_center">
	<form action="{$urlbase}usuario/inserir" method="post" name="formcadastro" id="formcadastro">
			<fieldset>
				<legend title="Digite os seus dados corretamente" class="title">Preencha os campos abaixo corretamente</legend>
				
				<label for="nome">Nome completo:</label>
				<input type="text" id="nome" name="nome" value="{$nome}" title="Digite o seu nome completo" />

                <span class="clear"></span>

				<label for="email">E-mail:</label>
				<input type="text" id="email1" name="email1" value="{$email}" title="Digite o seu email corretamente"/>
				
				<span class="clear"></span>
				
				<label for="sexo">Sexo:</label>
				<select name="sexo" id="sexo" title="Selecione o seu sexo">
					{html_options values=$sexo_id selected=$sexo_c output=$sexo}
				</select>
				
				<span class="clear"></span>
				
				<label for="password">Senha:</label>
				<input type="password" id="password" name="password" title="Digite uma senha de 6 digitos"/>
				
				<span class="clear"></span>
				<label for="password2">Repita a senha:</label>
				<input type="password" id="password2" name="password2" title="Repira a senha"/>
				
				<span class="clear"></span>
				
				<label for="cep">Seu CEP:</label>
				<input type="text" id="cep" name="cep" alt="cep" title="informe o seu CEP" />
				
				<span class="clear"></span>	
				
				<p class="tos-agree">Ao clicar em "Crie a minha conta", abaixo, você concorda com os <a href="http://www.mapacatolico.com/menu/termos"> Termos de serviço </a>.</p>
		</fieldset>
		<input type="submit" name="button" id="button" value="Crie a minha conta" title="crie a minha conta"/>
	</form>
</div>
<!--end new account-->