<?php /* Smarty version 2.6.22, created on 2009-12-17 15:22:38
         compiled from defult/new_account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'defult/new_account.tpl', 10, false),)), $this); ?>

<div id="new_account" class="container_12 clearfix">
	<form action="<?php echo $this->_tpl_vars['urlbase']; ?>
usuario/cadastro1" method="post">
			<fieldset>
				<legend><?php if ($this->_tpl_vars['mensagem'] == ""): ?>Digite os dados abaixo corretamente <?php else: ?> <?php echo $this->_tpl_vars['mensagem']; ?>
 <?php endif; ?></legend>
				<label for="name">Nome completo:</label>
				<input type="text" id="nome" value="<?php echo $this->_tpl_vars['nome']; ?>
">
                                <label for="name">Sexo:</label>
				<select name="sexo" id ="sexo" >
                                    <?php echo smarty_function_html_options(array('values' => $this->_tpl_vars['sexo_id'],'selected' => $this->_tpl_vars['sexo_c'],'output' => $this->_tpl_vars['sexo']), $this);?>

                                </select>
				<label for="email">E-mail:</label>
				<input type="text" id="email" value="<?php echo $this->_tpl_vars['email']; ?>
">
				<label for="password">Senha:</label>
				<input type="text" id="senha">
				<label for="password2">Repita a senha:</label>
				<input type="text" id="senha1">
				<label for="cep">Seu CEP:</label><a href="#">Porque essa informação é iportante?</a>
				<input type="text" id="cep" value="<?php echo $this->_tpl_vars['cep']; ?>
">
				<img src="" alt=""><label for="capitcha">o que você vê:</label><input type="text" id="capitcha">
		</fieldset>
		<a href="#">Veja os termos de uso</a>
		<input type="submit" value="Crie a minha conta">
	</form>
</div>