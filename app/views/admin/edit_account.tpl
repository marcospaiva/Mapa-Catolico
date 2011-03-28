<!---->
<section>
	<header class="grid_12">
		<h1 class="subtitle">Editar cadastro</h1>
	</header>
	<span class="clear"></span>
	<form action="{$urlbase}admin/usuarioupdate" method="post" name="form1" id="edit_acc" >

			<input type="hidden" name="lat" id="lat" value="{$usuario.us_latitude}"/>
	        <input type="hidden" name="lon" id="lon" value="{$usuario.us_longitude}"/>                
		
		<fieldset class="clearfix">
			<div class="grid_6">
				<label for="nome">Seu Nome</label>
				<input type="text" name="nome"  id="nome" value="{$usuario.us_nome}" class="rounded"/>
			</div>
			<div class="grid_6">
				<label for="email">Email</label>
				<input type="text" name="email"  id="email" value="{$usuario.us_email}" class="rounded"/>
			</div>
		
			<div class="grid_6">
				<label for="senha">Senha</label>
				<input type="password" name="password1" id="password1" class="rounded"/>
			</div>
			
			<div class="grid_6">
				<label for="repita_a_senha">Repita a senha</label>
				<input type="password" name="password2"  id="password2" class="rounded"/>
			</div>
		</fieldset>
		<span class="clear"></span>
		<input type="submit" name="atualizar" value="Atualizar" id="atualizar" class="btn rounded">
	</form>
</section>



<!---->