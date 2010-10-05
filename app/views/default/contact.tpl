<!--contact-->
<div id="contact" class="grid_9_center">
	<form action="{$urlbase}menu/enviacontato" method="post" name="form1" id="form1">
			<fieldset>
				<legend class="title" title="Faça contato">Alguma dúvida ou sujestão? Fale com agente!</legend>
				<label for="name">Nome completo:</label>
				<input type="text" id="nome" name="nome" title="Digite o seu nome completo." />
				<span class="clear"></span>
				<label for="email">E-mail:</label>
				<input type="text" id="email" name="email" title="Digite o seu email corretamente."/>
				<span class="clear"></span>
				<label for="assunto">Assunto:</label>
				<select name="assunto" id="assunto" title="Selecione o assunto da mensagem.">
					<option value="elogio">Elogios</option>
					<option value="sugestao">Sugestões</option>
					<option value="duvida">Dúvidas</option>
					<option value="reclamacao">Reclamações</option>
				</select>
				<span class="clear"></span>	
				<label for="texto">Seu texto.</label>
				<textarea name="texto" id="texto" title="Digite o seu texto"></textarea>
		</fieldset>
		<input type="submit" value="enviar" title="Enviar"/>
	</form>
</div>
<!--end contact-->