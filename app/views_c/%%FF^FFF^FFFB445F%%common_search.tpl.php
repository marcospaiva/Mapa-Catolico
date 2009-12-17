<?php /* Smarty version 2.6.22, created on 2009-12-17 15:22:38
         compiled from defult/common_search.tpl */ ?>
<form method= "POST" action = "<?php echo $this->_tpl_vars['urlbase']; ?>
busca/buscar" id="common_search" class="grid_12 clearfix">
	<fieldset>
		<label for="type">Busca Por:</label>
			<select id="tipo" name="tipo">
				<option value='capela'>Capela</option>
                                <option value='paroquia'>Paroquia</option>
                                <option value='usuario'>Usuario</option>
                                <option value='cidade'>Cidade</option>
			</select>
			<input type="text" name="palavra" id="palavra">
			<input type="submit" value="Buscar">
	</fieldset>
</form>