
<div id="new_account" class="container_12 clearfix">
	<form action="{$urlbase}usuario/cadastro1" method="post">
			<fieldset>
				<legend>{if $mensagem eq ""}Digite os dados abaixo corretamente {else} {$mensagem} {/if}</legend>
				<label for="name">Nome completo:</label>
				<input type="text" id="nome" value="{$nome}">
                                <label for="name">Sexo:</label>
				<select name="sexo" id ="sexo" >
                                    {html_options values=$sexo_id selected=$sexo_c output=$sexo}
                                </select>
				<label for="email">E-mail:</label>
				<input type="text" id="email" value="{$email}">
				<label for="password">Senha:</label>
				<input type="text" id="senha">
				<label for="password2">Repita a senha:</label>
				<input type="text" id="senha1">
				<label for="cep">Seu CEP:</label><a href="#">Porque essa informação é iportante?</a>
				<input type="text" id="cep" value="{$cep}">
				<img src="" alt=""><label for="capitcha">o que você vê:</label><input type="text" id="capitcha">
		</fieldset>
		<a href="#">Veja os termos de uso</a>
		<input type="submit" value="Crie a minha conta">
	</form>
</div>