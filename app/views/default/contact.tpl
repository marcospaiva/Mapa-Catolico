<!--contact-->
<section id="content" class="container_12">
	<form action="{$urlbase}menu/enviacontato" method="post" name="form1" id="form1">
			<fieldset>
				<legend class="title grid_12" title="Faça contato">Alguma dúvida ou sugestão? Fale com a gente!</legend>
				<p class="grid_12">
					Use o formulário abaixo ou envie uma "mention" no twitter para <a href="http://twitter.com/mapacatolico" title="">@mapacatolico.</a>
				</p>
				<div class="grid_6">
					<label for="nome">Nome completo:</label>
					<input type="text" id="nome" name="nome" title="Digite o seu nome completo." class="_rounded rounded_"/>
				</div>
				
				<div class="grid_6">
					<label for="email">E-mail:</label>
					<input type="text" id="email" name="email" title="Digite o seu email corretamente." class="_rounded rounded_"/>
				</div>
				
				<div class="grid_6">
					<label for="assunto">Assunto:</label>
					<select name="assunto" id="assunto" title="Selecione o assunto da mensagem." class="_rounded rounded_">
						<option value="elogio">Elogios</option>
						<option value="sugestao">Sugestões</option>
						<option value="duvida">Dúvidas</option>
						<option value="reclamacao">Reclamações</option>
					</select>
				</div>
				
				<div class="grid_6">
					<label for="texto">Mensagem</label>
					<textarea name="texto" id="texto" title="Digite a sua mensagem" class="_rounded rounded_"></textarea>
				</div>	
				
		</fieldset>
		<input type="submit" value="enviar" title="Enviar" class="_rounded rounded_ btn"/>
	</form>
</section>
<!--end contact-->