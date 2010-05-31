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

            markerOptions =  {
                icon: letteredIcon
            };
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

function init2()
{
    if(GBrowserIsCompatible())
    {
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

    }

}