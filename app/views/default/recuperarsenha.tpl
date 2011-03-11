<!--contact-->
<section class="container_12">

    <h1 class="title grid_12">Esqueceu sua senha?</h1>
	

    <form action="{$urlbase}usuario/recuperarsenha" method="post" name="form1" class="clearfix">
		<p class="grid_12">
			 Informe o seu email para receber a sua nova senha!
		</p>
		<div class="grid_12">
			<label for="recuperar_email">E-mail:</label>
	        <input type="text" id="recuperar_email" name="recuperar_email" title="Digite o seu email corretamente." class="_rounded rounded_"/>
		</div>
		<span class="clear"></span>
		<input type="submit" value="Recuperar" title="Recuperar" class="_rounded rounded_ btn"/>
        
    </form>

</div>
<!--end contact-->