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
