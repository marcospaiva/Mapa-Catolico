    var gmarkers = [];

    var iconBlue = new GIcon();
    iconBlue.image = 'http://localhost/mapacatolico/public/img/ico_blue.jpg';

    iconBlue.iconSize = new GSize(23, 25);
    iconBlue.iconAnchor = new GPoint(6, 20);
    iconBlue.infoWindowAnchor = new GPoint(5, 1);

    var iconRed = new GIcon();
    iconRed.image = 'http://localhost/mapacatolico/public/img/ico_red.jpg';

    iconRed.iconSize = new GSize(23, 25);
    iconRed.iconAnchor = new GPoint(6, 20);
    iconRed.infoWindowAnchor = new GPoint(5, 1);

    var customIcons = [];
    customIcons["1"] = iconBlue;
    customIcons["2"] = iconRed;
    




function search(palavra){


    
      
    var map2 = new GMap2(document.getElementById("map_canvas"), {
        draggableCursor:"crosshair"
    });


    map2.setCenter(new GLatLng(-13.667338,-47.988281), 6);
    map2.setMapType(G_PHYSICAL_MAP);
    map2.enableScrollWheelZoom();
    var customUI = map2.getDefaultUI();
    customUI.controls.scalecontrol = false;
    map2.setUI(customUI);
    



    GDownloadUrl("http://localhost/mapacatolico/busca/buscarxml/palavra/nossa",

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
          

            i = 0;
            window.setInterval(function() {



                GEvent.trigger(gmarkers[i], 'click');

                var point = new GLatLng(parseFloat(markers[i].getAttribute("lat")),
                    parseFloat(markers[i].getAttribute("lng")));



              map2.setZoom(07);
              map2.setMapType(G_NORMAL_MAP);
                i++;

                if (i >= gmarkers.length) {
                    i = 0
                }

            }, 10000);



        });

}


function createMarker(point, tipo, nome) {

   
    var marker = new GMarker(point, customIcons[tipo]);
    gmarkers.push(marker);
    var html = nome;
    GEvent.addListener(marker, 'click', function(){
        
        marker.openInfoWindowHtml(html);


    });

    return marker;
}




