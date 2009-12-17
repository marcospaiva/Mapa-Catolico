{*Smarty*}

<div>

<form action="{$urlbase}/usuario/cadastro1" method="post" name="form1">

    Mensagem:{$mensagem}<br><br>
    Nome Completo: <input type="text" name="nome" id="nome" value="{$nome}" /><br>

    Sexo: <select name=sexo id =sexo>
	{html_options values=$sexo_id selected=$sexo_c output=$sexo}
    </select>
    <br>
    E-mail: <input type="text" name="email" id="email" value="{$email}" /><br>
    Senha: <input type="password" name="senha" id="senha" /><br>
    Redigite a Senha: <input type="password" name="senha1" id="senha1" /><br>
    CEP : <input type="text" name="cep" id="cep" value="{$cep}" /> <br>
    <input type="submit" value="Proximo">

</form>

  
  
</div>
