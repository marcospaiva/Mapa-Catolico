<!--contact-->
<div id="contact" class="grid_9_center">
	<form action="usuario/cadastro1" method="post">
			<fieldset>
				<legend title="Faça contato">Alguma dúvida ou sujestão? Fale com agente!</legend>
				<label for="name">Nome completo:</label>
				<input type="text" id="nome" value="" title="nome" />
				
				<label for="email">E-mail:</label>
				<input type="text" id="email" value="{$email}" title="email"/>
				
				<label for="sexo">Assunto:</label>
				<select name="sexo" id="sexo" title="sexo">
					<option value="elogio">Elogios</option>
					<option value="sugestao">Sugestões</option>
					<option value="duvida">Dúvidas</option>
					<option value="reclamacao">Reclamações</option>
				</select>
				
				<label for="capitcha">Digite o resultado de: <strong>1+3</strong></label>
				<input type="text" id="capitcha" title="Digite o resultado de 1+3"/>
				
				<label for="texto">Seu texto.</label>
				<textarea name="texto" id="texto" title="Digite o seu texto"></textarea>
		</fieldset>
		<input type="submit" value="enviar" title="Enviar"/>
	</form>
</div>
<!--end contact-->