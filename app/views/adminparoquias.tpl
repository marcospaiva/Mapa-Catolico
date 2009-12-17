{* Smarty *}


                               {foreach from=$paroquias item=par}
                                {$par.pa_nome} :  <a href="../admin/paroquiaeditar/id/{$par.pa_id}" >Editar</a>
                                                  <a href="../admin/paroquiadeletar/id/{$par.pa_id}" >Deletar</a><br>
                                {/foreach}
	