<!--contact-->
<div id="contact" class="grid_9_center">

        {if $tipo eq "cadastro"}
            Cadastro efetivado com sucesso! Dentro de alguns instantes recebera a confirmação do cadastro em seu e-mail!
        {elseif $tipo eq "envio"}
            Mensagem enviada com sucesso!
        {elseif $tipo eq "recuperar"}
            Dentro de alguns instantes recebera a nova senha no seu e-mail!
        {elseif $tipo eq "envio_erro"}
            Não foi possivel enviar sua mensagem!
        {/if}

   

        <a href="{$urlbase}{$redirect}" title="Ir para" class="clearfix">OK</a>

</div>
<!--end contact-->