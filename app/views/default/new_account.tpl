<!--new account-->
<div id="new_account" class="grid_9_center">
	<form action="{$urlbase}usuario/cadastro1" method="post">
			<fieldset>
				<legend title="Digite os seus dados corretamente">Digite os dados abaixo corretamente</legend>
				<label for="name">Nome completo:</label>
				<input type="text" id="name" value="{$nome}" title="Digite o seu nome completo" />
                
				<label for="sexo">Sexo:</label>
				<select name="sexo" id="sexo" title="Selecione o seu sexo">
					{html_options values=$sexo_id selected=$sexo_c output=$sexo}
				</select>
				
				<label for="email">E-mail:</label>
				<input type="text" id="email" value="{$email}" title="Digite o seu email corretamente"/>
				
				<label for="password">Senha: (preferencialmente com 6 digitos)</label>
				<input type="password" id="senha" title="Digite uma senha de 6 digitos"/>
				
				<label for="password2">Repita a senha:</label>
				<input type="password" id="senha1" title="Repira a senha"/>
				
				<label for="cep">Seu CEP:</label>
				<input type="text" id="cep" title="informe o seu CEP"/>
				
				<label for="capitcha">Digite o resultado de: <strong>1+3</strong></label>
				<input type="text" id="capitcha" title="Digite o resultado de 1+3"/>
				
				<label for="tos">Termos de uso</label>
				<textarea name="tos" rows="8" cols="40"/>
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh enim, aliquam sed suscipit et, sodales quis velit. Vestibulum erat erat, auctor sit amet convallis eget, pharetra id nibh. Integer vitae est metus, non laoreet purus. Praesent laoreet fermentum metus eu cursus. Integer bibendum ultricies sem sagittis pellentesque. Nam volutpat ante vel mi auctor sollicitudin. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse sapien sapien, ultricies ac pulvinar at, pharetra ac lacus. Vivamus et enim ultricies turpis placerat dictum sit amet vitae arcu. Maecenas suscipit auctor orci ac rutrum. In et massa lorem, id porta nibh. Integer ullamcorper sollicitudin consequat. 
				</textarea>
				<label for="check">Concorda com os termos de uso?</label>
		</fieldset>
		<input type="submit" value="Crie a minha conta" title="crie uma nova conta"/>
	</form>
</div>
<!--end new account-->