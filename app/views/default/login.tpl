<!--Login-->
<section id="content" class="container_12">
	<form action="{$urlbase}index/entrar" method="post" name="psot1" class="clearfix">
		<fieldset>
			<legend class="title grid_12">Login</legend>
             <p>{$mensagem}</p> 
			<div class="grid_6">
				<label for="email">Email</label>
				<input type="text" name="email" value="" id="email" title="Insira o seu email." class="rounded"/>
			</div>
			<div class="grid_6">
				<label for="password">Senha</label>
				<input type="password" name="senha" value="" id="senha" title="Insira a sua senha." class="rounded"/>
			</div>
			
		</fieldset>
        <input type="submit" name="login" value="Entrar" class="btn rounded"/>
			<a href="{$urlbase}usuario/recuperar" class="forgot">Esqueci minha senha</a>
	</form>

<!--end Login-->
</section>
	