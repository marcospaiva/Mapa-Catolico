<?php /* Smarty version 2.6.22, created on 2009-12-17 14:22:53
         compiled from /var/www/paroquias/app/views/lista_usuarios.tpl */ ?>


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

    <?php $_from = $this->_tpl_vars['dados']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['loop']['iteration']++;
?>

    <a href='<?php echo $this->_tpl_vars['urlbase']; ?>
/busca/usuarios/id/<?php echo $this->_tpl_vars['item']['us_id']; ?>
/'>
    Nome : <?php echo $this->_tpl_vars['item']['us_nome']; ?>
 </a><br>
    E-mail: <?php echo $this->_tpl_vars['item']['us_email']; ?>
 </a><br>
    cidade : <?php echo $this->_tpl_vars['item']['us_cidade']; ?>
 - <?php echo $this->_tpl_vars['item']['us_estado']; ?>
 <br>
 

   <?php endforeach; endif; unset($_from); ?>

<br>

    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "paginacao.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	</body>
</html>
