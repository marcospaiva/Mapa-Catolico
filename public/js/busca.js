    var gmarkers = [];

    var iconBlue = new GIcon();
    iconBlue.image = 'http://localhost/mapacatolico/public/img/chapel_marker_on.png';

    iconBlue.iconSize = new GSize(19, 40);
    iconBlue.iconAnchor = new GPoint(6, 20);
    iconBlue.infoWindowAnchor = new GPoint(5, 1);

    var iconRed = new GIcon();
    iconRed.image = 'http://localhost/mapacatolico/public/img/parish_marker_on.png';

    iconRed.iconSize = new GSize(19, 40);
    iconRed.iconAnchor = new GPoint(6, 20);
    iconRed.infoWindowAnchor = new GPoint(5, 1);

    var customIcons = [];
    customIcons["1"] = iconBlue;
    customIcons["2"] = iconRed;
    




function search(urlbasee, palavrae){


    var palavra = palavrae;
    var urlbase = urlbasee;
    var url = urlbase+"busca/buscarxml/palavra/"+palavra;
      
    var map2 = new GMap2(document.getElementById("map_canvas"), {
        draggableCursor:"crosshair"
    });


    map2.setCenter(new GLatLng(-13.667338,-47.988281), 6);
    map2.setMapType(G_NORMAL_MAP);
    map2.enableScrollWheelZoom();
    var customUI = map2.getDefaultUI();
    customUI.controls.scalecontrol = false;
    map2.setUI(customUI);
    



    GDownloadUrl(url,

        function(data) {
               
                var xml = GXml.parse(data);   

                var markers = xml.documentElement.getElementsByTagName("marker");          
               
                
                for (var i = 0; i < markers.length; i++) {
                  
                    
                    var tipo = markers[i].getAttribute("tipo");
                    

                    var nome = markers[i].getAttribute("nome");
                    
                    var point = new GLatLng(parseFloat(markers[i].getAttribute("lat")),
                        parseFloat(markers[i].getAttribute("lng")));                   

                    var marker = createMarker(point, tipo, nome);

                    map2.addOverlay(marker);
                   
                }
                map2.setCenter(point, 6);
          

           

        });

       

}


function createMarker(point, tipo, nome) {

   
    var marker = new GMarker(point, customIcons[tipo]);
    gmarkers.push(marker);
    var html = "teste";
    GEvent.addListener(marker, 'click', function(){
        
        marker.openInfoWindowHtml("<a target='_blank' href=''>"+nome+"</a>");


    });

    return marker;
}




