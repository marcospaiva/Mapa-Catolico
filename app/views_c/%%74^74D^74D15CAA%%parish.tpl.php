<?php /* Smarty version 2.6.22, created on 2009-12-15 15:55:40
         compiled from /Applications/MAMP/htdocs/paroquias/app/views/parish.tpl */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="<?php echo $this->_tpl_vars['urlbase']; ?>
css/style.css" type="text/css" rel="stylesheet" />
		<link href="<?php echo $this->_tpl_vars['urlbase']; ?>
css/common.css" type="text/css" rel="stylesheet" />
		
	</head>
	<body>
		<div class="total">
			<div class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common_menu.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common_rightbox.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
		<div class="total">
			<div class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common_top.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
		<div class="total">
			<div id="parish" class="container_12 clearfix">
				<h1 class="grid_12">Paróquia São Benedito de Figueira Afonso</h1>
				<h2 class="grid_12">Cruzeiro-SP</h2>
				<div id="info" class="grid_4">
					<p><strong>Diocese:</strong>Lorena</p>
					<p><strong>Bispo:</strong>Lindomar da Silva Souza</p>
					<p><strong>Pároco:</strong>Cléverson Alvez do Nascimento</p>
					
					<p><strong>Endereço:</strong>Rua Benedito rui barbosa</p>
					<p><strong>Numero</strong>1234</p>
					<p><strong>Bairro:</strong>Aguás de lindóia</p>
					<p><strong>País:</strong>Brasil</p>
					<p><strong>Site:</strong><a href="">www.paroquia.com.br</a></p>
					
					<p><strong>Descrição:</strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pellentesque quam et nibh rutrum a scelerisque nulla bibendum. Sed id sapien leo. Vestibulum interdum, ante et semper ultrices, tortor risus tempus odio, dapibus blandit mi elit eu odio. Nullam sodales, metus ultrices vehicula scelerisque, augue urna viverra risus, sit amet tincidunt enim leo sagittis nunc. Donec sem risus, pharetra sodales condimentum vel, sagittis vel diam.</p>
					
					<p><strong>Quem cadastrou:</strong><a href="" class="clearfix">blablabla</a><a href="" class="clearfix">email</a></p>
					
				</div>
				<div id="render_map" class="grid_8">
					<img src="<?php echo $this->_tpl_vars['urlbase']; ?>
/img/imagem1.png" />
					<p id="legend"class="prefix_6"><a href="">Paroquias</a><a href="">Capela</a></p>
				</div>
			</div>
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
	</body>
</html>