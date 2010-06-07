
var map = new GMap2(document.getElementById("map_canvas"), {
    draggableCursor:"crosshair",
    googleBarOptions:{
        showOnLoad:true
    }
});

var start = new GLatLng(-13.667338,-47.988281);

map.setUIToDefault();
map.setCenter(start, 8);
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
            alert("Ops! Por favor, selecione um local valido!\n ");
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


