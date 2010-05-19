<!--new account-->
<div id="new_account" class="grid_9_center">
	<form action="{$urlbase}usuario/inserir" method="post">
			<fieldset>
				<legend title="Digite os seus dados corretamente" class="title">Preencha os campos abaixo corretamente</legend>
				
				<label for="nome">Nome completo:</label>
				<input type="text" id="nome" name="nome" value="{$nome}" title="Digite o seu nome completo" />

                <span class="clear"></span>

				<label for="email">E-mail:</label>
				<input type="text" id="email" name="email" value="{$email}" title="Digite o seu email corretamente"/>
				
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
				<input type="text" id="cep" name="cep" title="informe o seu CEP"/>
				
				<span class="clear"></span>
				
				<label for="capitcha">Quanto é <strong>1+3</strong>?</label>
				<input type="text" id="capitcha" title="Digite o resultado de 1+3"/>
				
				<span class="clear"></span>
				
				<h3>Termos de uso</h3>
				<p class="tos">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh enim, aliquam sed suscipit et, sodales quis velit. Vestibulum erat erat, auctor sit amet convallis eget, pharetra id nibh. Integer vitae est metus, non laoreet purus. Praesent laoreet fermentum metus eu cursus. Integer bibendum ultricies sem sagittis pellentesque. Nam volutpat ante vel mi auctor sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sapien sapien, ultricies ac pulvinar at, pharetra ac lacus. Vivamus et enim ultricies turpis placerat dictum sit amet vitae arcu. Maecenas suscipit auctor orci ac rutrum. In et massa lorem, id porta nibh. Integer ullamcorper sollicitudin consequat.
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh enim, aliquam sed suscipit et, sodales quis velit. Vestibulum erat erat, auctor sit amet convallis eget, pharetra id nibh. Integer vitae est metus, non laoreet purus. Praesent laoreet fermentum metus eu cursus. Integer bibendum ultricies sem sagittis pellentesque. Nam volutpat ante vel mi auctor sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sapien sapien, ultricies ac pulvinar at, pharetra ac lacus. Vivamus et enim ultricies turpis placerat dictum sit amet vitae arcu. Maecenas suscipit auctor orci ac rutrum. In et massa lorem, id porta nibh. Integer ullamcorper sollicitudin consequat.
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh enim, aliquam sed suscipit et, sodales quis velit. Vestibulum erat erat, auctor sit amet convallis eget, pharetra id nibh. Integer vitae est metus, non laoreet purus. Praesent laoreet fermentum metus eu cursus. Integer bibendum ultricies sem sagittis pellentesque. Nam volutpat ante vel mi auctor sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sapien sapien, ultricies ac pulvinar at, pharetra ac lacus. Vivamus et enim ultricies turpis placerat dictum sit amet vitae arcu. Maecenas suscipit auctor orci ac rutrum. In et massa lorem, id porta nibh. Integer ullamcorper sollicitudin consequat.</p> 
				<p class="tos-agree">Ao clicar em "Crie a minha conta", abaixo, você concorda com os <a href="#"> Termos de serviço </a>acima e a <a href="#">Política de Privacidade</a>.</p>
		</fieldset>
		<input type="submit" value="Crie a minha conta" title="crie a minha conta"/>
	</form>
</div>
<!--end new account-->