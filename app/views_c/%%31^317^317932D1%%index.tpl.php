<?php /* Smarty version 2.6.22, created on 2009-12-02 16:10:42
         compiled from /var/www/paroquias/app/views/index.tpl */ ?>

<style type="text/css">
	@import url("http://localhost/projeto/public/css/style.css");
</style>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
	</head>
	<body>
		<div id='container'>
			<div id='geral' align='center'>
				<div id='header'><br/><?php echo $this->_tpl_vars['teste']; ?>
<br/>
				<div id="menu">
					<br/>									
				</div>

				</div>
				<div id='middle'><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "cadastrousuario.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
				<div id='footer'></div>
			</div>
		</div>
	</body>
</html>