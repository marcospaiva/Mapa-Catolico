<!--contact-->
<div id="contact" class="grid_9_center">

        {if $tipo eq "cadastro"}
            Cadastro efetivado com sucesso! Dentro de alguns instantes recebera a confirmação do cadastro em seu e-mail!
        {elseif $tipo eq "teste"}

        {/if}

        <a href="{$urlbase}{$redirect}" title="Ir para">OK</a>
</div>
<!--end contact-->