<!--new account-->
<section id="content" class="container_12">
	<form action="{$urlbase}usuario/inserir" method="post" name="formcadastro" id="formcadastro" class="">
            <input type="hidden" value="{$urlbase}" id="urlbase" name="urlbase">
			<fieldset>
				<legend title="Digite os seus dados corretamente" class="title grid_12">Preencha os campos abaixo corretamente</legend>
				
				<div class="grid_6">
					<label for="nome">Nome completo:</label>
					<input type="text" id="nome" name="nome" value="{$nome}" title="Digite o seu nome completo" class="_rounded rounded_" />
				</div>
				
				<div class="grid_6">
					<label for="email">E-mail:</label>
					<input type="text" id="email1" name="email1" value="{$email}" title="Digite o seu email corretamente" class="_rounded rounded_"/>
				</div>
                
				<div class="grid_6">
					<label for="password">Senha:</label>
					<input type="password" id="password" name="password" title="Digite uma senha de 6 digitos" class="_rounded rounded_"/>
				</div>
				
				<div class="grid_6">
					<label for="password2">Repita a senha:</label>
					<input type="password" id="password2" name="password2" title="Repira a senha" class="_rounded rounded_"/>
				</div>
				
				<p class="grid_12">Ao clicar em "Crie a minha conta", abaixo, você diz estar concordando com os <a href="{$urlbase}menu/termos"> Termos de serviço.</a></p>
		</fieldset>
		<input type="submit" name="button" id="button" value="Crie a minha conta" title="crie a minha conta" class="btn _rounded rounded_"/>
	</form>
</section>
<!--end new account-->