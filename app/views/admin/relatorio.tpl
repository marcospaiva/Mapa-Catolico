<!--report-->
<div id="report" class="grid_12">
	<h1 class="title">Relatório de cadastros</h1>
	<h2>Filtre a sua pesquisa</h2>
	<form action="{$urlbase}relatorio/index" method="post" name="periodo do relatorio" class="clearfix">
		<fieldset id="" class="">
			<legend></legend>
			<label for="">Data Inicio:</label>
			{html_select_date prefix = "Data_i_" month_format="%m" field_order="DMY" field_separator="/" time=$datai start_year='-5' end_year='+2'}
		</fieldset>
		<fieldset id="" class="">
			<legend></legend>
			<label for="">Data Final</label>
			{html_select_date prefix = "Data_f_" month_format="%m" field_order="DMY" field_separator="/" time=$dataf start_year='-5' end_year='+2'}			
		</fieldset>
		<input type="submit" name="Pesquisar" value="Pesquisar" id="Pesquisar">
		
	</form>
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
				<th>Pais</th>
                                <th>UF</th>
				<th>Usuários</th>
			</tr>
		</thead>
		<tbody>
			{foreach name=loop item=item from=$usuario}
			<tr>
                                <td>{$item.us_pais|upper}</th>
				<td>{$item.estado|upper}</th>
				<td>{$item.total|upper}</th>
			</tr>
			{/foreach}
		</tbody>
	</table>
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
                                <th>Pais</th>
				<th>UF</th>
				<th>Capelas</th>
			</tr>
		</thead>
		<tbody>
			{foreach name=loop item=item from=$capela}
			<tr>
                                <td>{$item.pa_pais|upper}</th>
				<td>{$item.estado|upper}</th>
				<td>{$item.total|upper}</th>
			</tr>
			{/foreach}
		</tbody>
	</table>
	
	<table border="0" cellspacing="0" cellpadding="0">
		<thead>
			<tr>
                                <th>Pais</th>
				<th>UF</th>
				<th>Paróquias</th>
			</tr>
		</thead>
		<tbody>
			{foreach name=loop item=item from=$paroquia}
			<tr>
                                <td>{$item.pa_pais|upper}</th>
				<td>{$item.estado|upper}</th>
				<td>{$item.total|upper}</th>
			</tr>
			{/foreach}
		</tbody>
	</table>
	<table border="0" cellspacing="0" cellpadding="0" class="grid_4">
		<tr>
			<th>Total de Usuários:</th>
			<td>{$totalusuario}</td>
		</tr>
		<tr>
			<th>Total de Capelas</th>
			<td>{$totalcapela}</td>
		</tr>
		<tr>
			<th>Total de Paróquias</th>
			<td>{$totalparoquia}</td>
		</tr>
	</table>
</div>
<!---->