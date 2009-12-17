<?php /* Smarty version 2.6.22, created on 2009-12-17 15:14:04
         compiled from paginacao.tpl */ ?>

<?php if ($this->_tpl_vars['page']->previous): ?>
	<a href='<?php echo $this->_tpl_vars['url']; ?>
<?php echo $this->_tpl_vars['page']->first; ?>
/' title='Primeiro'> << </a>
	<a href='<?php echo $this->_tpl_vars['url']; ?>
<?php echo $this->_tpl_vars['page']->previous; ?>
/' title='Anterior'> < </a>
<?php endif; ?>
<?php $_from = $this->_tpl_vars['page']->pagesInRange; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['pagina']):
?>
	<?php if ($this->_tpl_vars['page']->current == $this->_tpl_vars['pagina']): ?>
		<?php echo $this->_tpl_vars['pagina']; ?>

	<?php else: ?>
		<a href='<?php echo $this->_tpl_vars['url']; ?>
<?php echo $this->_tpl_vars['pagina']; ?>
/'><?php echo $this->_tpl_vars['pagina']; ?>
</a>
	<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
<?php if ($this->_tpl_vars['page']->next): ?>
	<a href='<?php echo $this->_tpl_vars['url']; ?>
<?php echo $this->_tpl_vars['page']->next; ?>
/' title='Proximo'> > </a>
	<a href='<?php echo $this->_tpl_vars['url']; ?>
<?php echo $this->_tpl_vars['page']->last; ?>
/' title='Ultimo'> >> </a>
<?php endif; ?>