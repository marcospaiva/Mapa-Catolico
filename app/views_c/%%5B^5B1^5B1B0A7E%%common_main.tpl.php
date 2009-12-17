<?php /* Smarty version 2.6.22, created on 2009-12-17 15:22:38
         compiled from /var/www/paroquias/app/views/defult/common_main.tpl */ ?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
		<link href="<?php echo $this->_tpl_vars['urlbase']; ?>
public/css/style.css" type="text/css" rel="stylesheet" />
		<link href="<?php echo $this->_tpl_vars['urlbase']; ?>
public/css/common.css" type="text/css" rel="stylesheet" />
		<!--This page is a template for all of pages in this app-->
	</head>

        <?php if ($this->_tpl_vars['template'] == "defult/parish.tpl"): ?>
        <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=<?php echo $this->_tpl_vars['apikey']; ?>
&amp;sensor=false" type="text/javascript"></script>
        <script src="<?php echo $this->_tpl_vars['urlbase']; ?>
public/js/maps.js" type="text/javascript"></script>
            <body onload="init('<?php echo $this->_tpl_vars['pa']['pa_nome']; ?>
','<?php echo $this->_tpl_vars['pa']['pa_latitude']; ?>
','<?php echo $this->_tpl_vars['pa']['pa_longitude']; ?>
')">
        <?php else: ?>
            <body>
        <?php endif; ?>
	
		<div class="total">
			<div class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "defult/common_menu.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "defult/common_rightbox.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
		<div class="total">
			<div id="main_home" class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "defult/common_top.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
		<div class="total">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['template'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
		<div class="footer_100">
			<div id="footer" class="container_12 clearfix"><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "defult/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?></div>
		</div>
	</body>
</html>