<!--common menu-->
<span class="grid_5" style="height:20px;"></span>
<ul id="common_menu" class="grid_7 push_2">
    {if $usuariobase eq ""} <li><a href="{$urlbase}usuario/cadastro">Crie uma Conta</a></li>
    {else}<li><a href="{$urlbase}admin">Admin</a></li>{/if}
    <li><a href="{$urlbase}menu/contato">Contato</a></li>
    <li><a href="http://twitter.com/mapacatolico">Siga no Twitter</a></li>
</ul>
<!--end common menu-->