<?php /* Smarty version 2.6.22, created on 2009-12-03 11:24:15
         compiled from /var/www/paroquias/app/views/cadastrousuario2.tpl */ ?>
<!DOCTYPE html "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">


<html>
	<head>
                <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
                <title>Google Maps JavaScript API Example</title>

                <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAtyifEzud_MG-24R0knqNRBQybuiquNdW7ZSAdU9XlxXJqRIuExSTYphIUt8KTs6_eNQIwcAZRyz0rA&sensor=true_or_false" type="text/javascript"></script>
                <script type="text/javascript" src="js/mapsload.js"></script>
       	</head>


	<body>

        <div id="googleMap"></div>

<div>
<form action="/paroquias/usuario/cadastro3" method="post" name="form1">
    <input type="hidden" name="cep" id="cep" value="<?php echo $this->_tpl_vars['cep']; ?>
">
    <input type="hidden" name="uf" id="uf" value="<?php echo $this->_tpl_vars['uf']; ?>
">
    <input type="hidden" name="cidade" id="cidade" value="<?php echo $this->_tpl_vars['cidade']; ?>
">
    <input type="hidden" name="bairro" id="bairro" value="<?php echo $this->_tpl_vars['bairro']; ?>
">
    <input type="hidden" name="tp_logr" id="tp_logr" value="<?php echo $this->_tpl_vars['tp_logr']; ?>
">
    <input type="hidden" name="logr" id="logr" value="<?php echo $this->_tpl_vars['logr']; ?>
">
    <input type="hidden" name="numero" id="numero" value="<?php echo $this->_tpl_vars['numero']; ?>
" >

    <input type="text" name="lat" id="lat" value="<?php echo $this->_tpl_vars['lat']; ?>
" >
    <input type="text" name="lon" id="lon" value="<?php echo $this->_tpl_vars['lon']; ?>
" >
    

    <input type="submit" value="Proximo">

</form>

</div>

</body>
</html>