<!---->
<div id="edit" class="grid_12">
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr colspan="3">
				<th >Relatorio de cadastros</th>
			</tr>
		</thead>
		<tbody>

                <form action="{$urlbase}relatorio/index" method="post" name="form1">
                <tr>
                    <td>Data Inicio:</td><td>{html_select_date prefix = "Data_i_" month_format="%m" field_order="DMY" field_separator="/" time=$datai start_year='-5' end_year='+2'}</td>
                    <td>Data Final: </td><td>{html_select_date prefix = "Data_f_" month_format="%m" field_order="DMY" field_separator="/" time=$dataf start_year='-5' end_year='+2'}</td>
                    <td><input type="submit" value="OK"></td>
                </tr>


                </form>
                <tr>
                    <td>Usuarios Cadastrados: </td>
                    <td>{$totalusuario}</td>
		</tr>
                <tr>
                    <td>Capelas Cadastradas: </td>
                    <td>{$totalcapela}</td>
		</tr>
                <tr>
                    <td>Paroquias Cadastradas: </td>
                    <td>{$totalparoquia}</td>
                    
		</tr>

                <tr><td><br></td></tr>
                <tr><td>Usuario: </td></tr>
                {foreach name=loop item=item from=$usuario}

                <tr>
                    <td>{$item.estado}</td><td>{$item.total}</td>


                </tr>

                {/foreach}

                <tr><td><br></td></tr>
                <tr><td>Capela: </td></tr>
                {foreach name=loop item=item from=$capela}

                <tr>
                    <td>{$item.estado}</td><td>{$item.total}</td>


                </tr>

                {/foreach}

                <tr><td><br></td></tr>
                <tr><td>Paroquia: </td></tr>
                {foreach name=loop item=item from=$paroquia}

                <tr>
                    <td>{$item.estado}</td><td>{$item.total}</td>


                </tr>

                {/foreach}

		</tbody>		
	</table>
</div>
<!---->