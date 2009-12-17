<?php /* Smarty version 2.6.22, created on 2009-12-17 15:14:39
         compiled from defult/parish.tpl */ ?>
			
                        <div id="parish" class="container_12 clearfix">
				<h1 class="grid_12"> <?php if ($this->_tpl_vars['pa']['pa_tipo'] == '1'): ?>Paroquia :<?php else: ?> Capela<?php endif; ?> <?php echo $this->_tpl_vars['pa']['pa_nome']; ?>
</h1>
				<h2 class="grid_12"><?php echo $this->_tpl_vars['pa']['pa_cidade']; ?>
-<?php echo $this->_tpl_vars['pa']['pa_estado']; ?>
</h2>
				<div id="info" class="grid_4">
                                        <p><img src="http://img.cancaonova.com/paroquias/paroquias/<?php echo $this->_tpl_vars['pa']['pa_id']; ?>
.jpg"><br>
					<p><strong>Diocese:</strong><?php echo $this->_tpl_vars['diocese']; ?>
</p>
					<p><strong>Bispo:</strong><?php echo $this->_tpl_vars['bispo']; ?>
</p>
					<p><strong>Pároco:</strong><?php echo $this->_tpl_vars['pa']['pa_paroco']; ?>
</p>
					
					<p><strong>Endereço:</strong><?php echo $this->_tpl_vars['pa']['pa_rua']; ?>
</p>
					<p><strong>Numero</strong><?php echo $this->_tpl_vars['pa']['pa_numero']; ?>
</p>
					<p><strong>Bairro:</strong><?php echo $this->_tpl_vars['pa']['pa_bairro']; ?>
</p>
					<p><strong>País:</strong><?php echo $this->_tpl_vars['pa']['pa_pais']; ?>
</p>
					<?php if ($this->_tpl_vars['pa']['pa_site'] == ""): ?> <?php else: ?><p><strong>Site:</strong><a href="<?php echo $this->_tpl_vars['pa']['pa_site']; ?>
"><?php echo $this->_tpl_vars['pa']['pa_site']; ?>
</a></p><?php endif; ?>
					
					<p><strong>Descrição:</strong><?php echo $this->_tpl_vars['pa']['pa_descricao']; ?>
</p>
					
					<p><strong>Quem cadastrou:</strong><a href="" class="clearfix"><?php echo $this->_tpl_vars['usuario']; ?>
</a>
                                        <a href="" class="clearfix"><?php echo $this->_tpl_vars['email']; ?>
</a></p>
					
				</div>
				<div id="map_canvas" class="grid_8" style="height:500px;">
					
					<p id="legend"class="prefix_6"><a href="">Paroquias</a><a href="">Capela</a></p>
				</div>
			</div>
		</div>