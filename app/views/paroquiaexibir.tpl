{* Smarty *}


<style type="text/css">
	@import url("http://localhost/projeto/public/css/style.css");
</style>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>

                <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
               {literal}
                <script type="text/javascript">
                       function init(paroquia, lat, lon)
                        {
                            if(GBrowserIsCompatible())
                            {
                                var map = new GMap2(document.getElementById("map_canvas"));
                                map.setCenter(new GLatLng(lat,lon), 15);
                                map.setUIToDefault();
                                

                                var baseIcon = new GIcon(G_DEFAULT_ICON);
                                baseIcon.shadow = "http://www.google.com/mapfiles/shadow50.png";
                                baseIcon.iconSize = new GSize(20, 34);
                                baseIcon.shadowSize = new GSize(37,34);
                                baseIcon.iconAnchor = new GPoint(9,34);
                                baseIcon.infoWindowAnchor = new GPoint(9,2);

                                function createMarker(point, index, dto)
                                {
                                    var letter = String.fromCharCode("A".charCodeAt(0)+ index);
                                    var letteredIcon = new GIcon(baseIcon);
                                    letteredIcon.image = "http://www.google.com/mapfiles/marker"+letter+".png";

                                    markerOptions =  {icon: letteredIcon};
                                    var marker = new GMarker(point, markerOptions);

                                    GEvent.addListener(marker, "click", function()
                                    {
                                        marker.openInfoWindowHtml(
                                            paroquia
                                        );
                                    });
                                    return marker;
                                }
                            }
                            var latLong = new GLatLng(lat, lon);
                            map.addOverlay(createMarker(latLong, 0, {}));

                        }
               </script>
               {/literal}

	</head>
	<body onload="init('{$pa.pa_nome}','{$pa.pa_latitude}','{$pa.pa_longitude}')">

    <img src="{image id =$pa.pa_id}"><br>
    id: {$pa.pa_id}<br>
    lat: {$pa.pa_latitude}<br>
    long: {$pa.pa_longitude}<br>
    tipo: {$tipo}<br>
    cep: {$pa.pa_cep}<br>

    Estado : {$pa.pa_estado} <br>
    Cidade : {$pa.pa_cidade}<br>
    Bairro : {$pa.pa_bairro}<br>
    Endereco: {$pa.pa_rua}
    Numero : {$pa.pa_numero}<br>

   Diocese: {$diocese}<br>

  
    Nome da Paroquia : {$pa.pa_nome}<br>
    Nome do Paroco :{$pa.pa_paroco}<br>

    telefone: {$pa.pa_tel_cod} {$pa.pa_tel}<br>
    email :{$pa.pa_email}<br>
    site : {$pa.pa_site}<br>    
    Descricao : {$pa.pa_descricao}<br>
    <br>
    
    {if $denuncia > 0 }
    <form action="{$urlbase}/admin/denunciar" method="post" name="psot1">

        <input type="hidden" name="id" id="id" value="{$pa.pa_id}/" />
        <input type="hidden" name="canal" id="canal" value="1" />

         Denuncio que <select name="tipo" id ="tipo">
	{html_options options=$denuncia}
        </select><br>

        <textarea name="obs" id="obs"></textarea><br>
        <input type="submit" value="Denunciar">
    </form>
    {else}
        Denunciar - Precisa estar logado para denunciar! Logar-se
    {/if}
  
    <br>
    <br>

  <div id="map_canvas" style="width:800px; height:500px;"></div>



	</body>
</html>

