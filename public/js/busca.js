
function search(urlbasee, palavrae, paginae){
   
    
   
    var palavra = palavrae;
    var pagina = paginae;
    var urlbase = urlbasee;
    var url = urlbase+"busca/buscarxml/palavra/"+palavra+"/pagina/"+pagina;
    var lat = "-13.667338";
    var long = "-47.988281";

    var customIcons = {
        1: {
            icon: urlbase+'public/img/chapel_marker_on.png',
            shadow: urlbase+'public/img/chapel_marker_on.png'
        },
        2: {
            icon: urlbase+'public/img/parish_marker_on.png',
            shadow: urlbase+'public/img/parish_marker_on.png'
        }
    };

    var myLatlng = new google.maps.LatLng(lat,long);
    var myOptions = {
        zoom: 6,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

    var infoWindow = new google.maps.InfoWindow;
   
    downloadUrl(url, function(data) {

        var xml = parseXml(data);
        var markerNodes = xml.documentElement.getElementsByTagName("marker");
        var bounds = new google.maps.LatLngBounds();

        for (var i = 0; i < markerNodes.length; i++) {
            var name = markerNodes[i].getAttribute("nome");
            var tipo = markerNodes[i].getAttribute("tipo");            
            var point = new google.maps.LatLng(
                parseFloat(markerNodes[i].getAttribute("lat")),
                parseFloat(markerNodes[i].getAttribute("lng")));
            var icon = customIcons[tipo] || {};
            var html = "<a target='_blank' href=''>" + name+"</a>";

            var marker = new google.maps.Marker({
                map: map,
                position: point,
                icon: icon.icon,
                shadow: icon.shadow
            });

            bindInfoWindow(marker, map, infoWindow, html);
        }
         map.setCenter(point);
    });


}


// This function picks up the click and opens the corresponding info window
function myclick(i) {
  google.maps.event.trigger(gmarkers[i], "click");
}


function bindInfoWindow(marker, map, infoWindow, html) {
      google.maps.event.addListener(marker, 'click', function() {
        infoWindow.setContent(html);
        infoWindow.open(map, marker);
      });
    }

    function downloadUrl(url, callback) {
      var request = window.ActiveXObject ?
          new ActiveXObject('Microsoft.XMLHTTP') :
          new XMLHttpRequest;

      request.onreadystatechange = function() {
        if (request.readyState == 4) {
          request.onreadystatechange = doNothing;
          callback(request.responseText, request.status);
        }
      };

      request.open('GET', url, true);
      request.send(null);
    }

    function parseXml(str) {
      if (window.ActiveXObject) {
        var doc = new ActiveXObject('Microsoft.XMLDOM');
        doc.loadXML(str);
        return doc;
      } else if (window.DOMParser) {
        return (new DOMParser).parseFromString(str, 'text/xml');
      }
    }

    function doNothing() {}





