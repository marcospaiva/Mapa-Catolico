<form action="{$urlbase}paroquia/cadastro3" method="post" name="form" id="form">

<input type="hidden" name="bairro" id="bairro" value="{$bairro}">
<input type="hidden" name="cep" id="cep" value="{$cep}">
<input type="hidden" name="cidade" id="cidade" value="{$cidade}">
<input type="hidden" name="pais" id="pais" value="{$pais}">
<input type="hidden" name="lat2" id="lat2" value="{$lat}" >
<input type="hidden" name="lon2" id="lon2" value="{$lon}" >
<input type="hidden" name="numero" id="numero" value="{$numero}">
<input type="hidden" name="tipo" id="tipo" value="{$tipo}">
<input type="hidden" name="rua" id="rua" value="{$rua}">
<input type="hidden" name="uf" id="uf" value="{$uf}">


<input name="lat" type="hidden" id="lat" size="25" maxlength="0" readonly="readonly"/>
<input name="lng" type="hidden" id="lng" size="25" maxlength="0" readonly="readonly"/>


<div id="map_canvas" class="grid_8" style="height:500px;"></div>

<input type="button" value="Adicionar Marcador" onClick="dropPinClicked();"/>

<a href="admin_content_n_1.php">voltar uma etapa</a><input type="submit" value="Proximo passo">

{literal}
<script type="text/javascript">

var map = new GMap2(document.getElementById("map_canvas"), {
draggableCursor:"crosshair",
googleBarOptions:{
showOnLoad:true
}
});

var start = new GLatLng(document.getElementById("lat2").value,document.getElementById("lon2").value);

map.setUIToDefault();
map.setCenter(start, 13);
var customUI = map.getDefaultUI();
customUI.controls.scalecontrol = false;
map.setUI(customUI);
map.enableContinuousZoom();
map.addControl(new GMapTypeControl());

var options = {
suppressInitialResultSelection : true,
suppressZoomToBounds : true,
showOnLoad : true
};


map.enableGoogleBar();
map.enableScrollWheelZoom();
map.addControl(new GOverviewMapControl());

var memoarea  = document.getElementById("lat");
var memoarea2 = document.getElementById("lng");
var markers   = [];
var geo       = new GClientGeocoder();

function geocode(query){

geo.getLocations(query, function(addresses){
if(addresses.Status.code != 200){
memoarea.value = "";
memoarea2.value = "";
alert("Ops! Por favor, selecione um local v�lido!\n ");
marker.index = markers.length;
markers.push(marker);
}
});
}


var marker;

function createMarker(){

marker = new GMarker(map.getCenter(),{
draggable:true
});
map.addOverlay(marker);
GEvent.addListener(marker, 'dragend', function(markerPoint){
if(map.getBounds().containsLatLng(markerPoint)){

geocode(this.getLatLng(),this);
}
});

GEvent.addListener(marker, 'dragend', function(markerPoint){
if(!map.getBounds().containsLatLng(markerPoint)){

geocode(this.getLatLng(),this);
}
});


GEvent.addListener(marker, "drag", function(){
document.getElementById("lat").value=marker.getLatLng().lat().toFixed(6);
});

GEvent.addListener(marker, "drag", function(){
document.getElementById("lng").value=marker.getLatLng().lng().toFixed(6);
});

GEvent.addListener(marker, "click", function(){
document.getElementById("lat").value=marker.getLatLng().lat().toFixed(6);
});

GEvent.addListener(marker, "click", function(){
document.getElementById("lng").value=marker.getLatLng().lng().toFixed(6);
});

return marker

}

function dropPinClicked()
{

var latlng = map.getCenter();

if (!marker)
{
marker = createMarker(latlng);

} else {
marker.setLatLng(latlng);
}
}
</script>

{/literal}