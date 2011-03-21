<!--Login-->

	<form action="{$urlbase}index/entrar" method="post" name="psot1" class="clearfix">
		<fieldset>
			<legend>Login</legend>
              <p><label for="mensagem">{$mensagem}</label></p> 

			<label for="email">Email</label>
			<input type="text" name="email" value="" id="email" title="Insira o seu email."/>
			<label for="password">Senha</label><input type="password" name="senha" value="" id="senha" title="Insira a sua senha."/>
		</fieldset>
            <input type="submit" name="login" value="Entrar" id="some_name"/>
			
	</form>
<a href="{$urlbase}usuario/recuperar" class="recover">Esqueci minha senha</a>
<!--end Login-->