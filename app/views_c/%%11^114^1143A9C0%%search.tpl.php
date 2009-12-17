<?php /* Smarty version 2.6.22, created on 2009-12-17 15:14:04
         compiled from defult/search.tpl */ ?>
			<div class="container_12 clearfix">
				<ul id="search_result" class="grid_12">


                                        <?php $_from = $this->_tpl_vars['dados']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['item']):
        $this->_foreach['loop']['iteration']++;
?>
					<li>
                                               <?php if ($this->_tpl_vars['tipo'] == 'paroquia' || $this->_tpl_vars['tipo'] == 'capela'): ?>
                                                    <a href="<?php echo $this->_tpl_vars['urlbase']; ?>
p/<?php echo $this->_tpl_vars['item']['di_id']; ?>
/<?php echo $this->_tpl_vars['item']['pa_nome']; ?>
/" class="search_list">
                                                            <img src="http://img.cancaonova.com/paroquias/paroquias/<?php echo $this->_tpl_vars['item']['pa_id']; ?>
.jpg" width="110" height="110">
                                                    </a>
                                                    <p class="name"><a href="<?php echo $this->_tpl_vars['urlbase']; ?>
p/<?php echo $this->_tpl_vars['item']['di_id']; ?>
/<?php echo $this->_tpl_vars['item']['pa_nome']; ?>
/"><?php if ($this->_tpl_vars['item']['pa_tipo'] == '1'): ?>Paroquia <?php else: ?> Capela <?php endif; ?> <?php echo $this->_tpl_vars['item']['pa_nome']; ?>
</a></p>
                                                    <p>Cidade: <?php echo $this->_tpl_vars['item']['pa_cidade']; ?>
 - <?php echo $this->_tpl_vars['item']['pa_estado']; ?>
</p>
                                                    <p>Bairro: <?php echo $this->_tpl_vars['item']['pa_bairro']; ?>
</p>
                                                    <p>Endereco: <?php echo $this->_tpl_vars['item']['pa_rua']; ?>
, <?php echo $this->_tpl_vars['item']['pa_numero']; ?>
</p>
                                                <?php endif; ?>

                                                <?php if ($this->_tpl_vars['tipo'] == 'usuario'): ?>
                                                    <p class="name">Nome: <a href='<?php echo $this->_tpl_vars['urlbase']; ?>
busca/usuarios/id/<?php echo $this->_tpl_vars['item']['us_id']; ?>
/'><?php echo $this->_tpl_vars['item']['us_nome']; ?>
</a></p>
                                                    <p>Email: <?php echo $this->_tpl_vars['item']['us_email']; ?>
</p>
                                                    <p>Cidade: <?php echo $this->_tpl_vars['item']['us_cidade']; ?>
 - <?php echo $this->_tpl_vars['item']['us_estado']; ?>
</p>
                                                <?php endif; ?>

                                                <?php if ($this->_tpl_vars['tipo'] == 'cidade'): ?>
                                                    <p class="name">
                                                        <a href='<?php echo $this->_tpl_vars['urlbase']; ?>
busca/cidades/cidade/<?php echo $this->_tpl_vars['item']['pa_cidade']; ?>
/uf/<?php echo $this->_tpl_vars['item']['pa_estado']; ?>
'>
                                                             <?php echo $this->_tpl_vars['item']['pa_cidade']; ?>
 - <?php echo $this->_tpl_vars['item']['pa_estado']; ?>
 
                                                         </a>
                                                    </p>
                                                <?php endif; ?>

					</li>
                                        <?php endforeach; endif; unset($_from); ?>
				</ul>
                                
                                <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "paginacao.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

				<p id="more_results">Mais resultados:</p>
				<ul id="paginate_result">
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
					<li><a href="">5</a></li>
				</ul>
			</div>
		</div>
	