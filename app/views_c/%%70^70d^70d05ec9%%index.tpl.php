<?php /* Smarty version 2.6.22, created on 2009-11-13 15:31:39
         compiled from /var/www/projeto/app/views/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'utf8_encode', '/var/www/projeto/app/views/index.tpl', 22, false),)), $this); ?>

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
				<div id='header'><br/>Data Atual: <?php echo $this->_tpl_vars['data']; ?>
<br/>M&ecirc;s atual: <?php echo $this->_tpl_vars['m']; ?>
<br/>
				<div id="menu">
					<br/>
					<ul>
						
						<?php $_from = $this->_tpl_vars['meses']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['mes']):
?>	
							<li><a href="<?php echo $this->_tpl_vars['urlbase']; ?>
index/index/mes/<?php echo $this->_tpl_vars['mes']['sigla']; ?>
" <?php if ($this->_tpl_vars['m'] == $this->_tpl_vars['mes']['mes']): ?> class="selected"<?php endif; ?> <?php if ($this->_tpl_vars['ms'] == $this->_tpl_vars['mes']['mes']): ?> class="selected" <?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['mes']['mes'])) ? $this->_run_mod_handler('utf8_encode', true, $_tmp) : utf8_encode($_tmp)); ?>
</a></li>
						<?php endforeach; endif; unset($_from); ?>
						
					</ul>
				
				</div>

				</div>
				<div id='middle'><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "middle.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
				<div id='footer'></div>
			</div>
		</div>
	</body>
</html>