<!--contact-->
<div id="recover" class="grid_9_center">

    <h1 id="">Esqueceu sua senha? Informe o seu email que em breve receberá sua nova senha!</h1>

    <form action="{$urlbase}usuario/recuperarsenha" method="post" name="form1" id="recover_form">
		<label for="recuperar_email">E-mail:</label>
        <input type="text" id="recuperar_email" name="recuperar_email" title="Digite o seu email corretamente."/>
        <input type="submit" value="enviar" title="Enviar"/>
    </form>

</div>
<!--end contact-->