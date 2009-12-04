<?php /* Smarty version 2.6.22, created on 2009-12-03 11:24:10
         compiled from /var/www/paroquias/app/views/cadastrousuario1.tpl */ ?>

<div>
<form action="/paroquias/usuario/cadastro2" method="post" name="form1">

    <input type="hidden" name="cep" id="cep" value="<?php echo $this->_tpl_vars['cep']; ?>
">
    <input type="hidden" name="end" id="end" value="<?php echo $this->_tpl_vars['end']; ?>
">
    Estado : <input type="text" name="uf" id="uf" value="<?php echo $this->_tpl_vars['uf']; ?>
"><br>
    Cidade : <input type="text" name="cidade" id="cidade" value="<?php echo $this->_tpl_vars['cidade']; ?>
"><br>
    Bairro : <input type="text" name="bairro" id="bairro" value="<?php echo $this->_tpl_vars['bairro']; ?>
"><br>
    Endereco: <input type="text" name="tp_logr" id="tp_logr" value="<?php echo $this->_tpl_vars['tp_logr']; ?>
">
    <input type="text" name="logr" id="logr" value="<?php echo $this->_tpl_vars['logr']; ?>
"><br>
    Numero : <input type="text" name="numero" id="numero" >

    <input type="submit" value="Proximo">

</form>

</div>