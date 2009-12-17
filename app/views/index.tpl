{* Smarty *}


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Projeto - Teste</title>
                
                <script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$apikey}&amp;sensor=false" type="text/javascript"></script>
                

                {literal}
                <script type="text/javascript">
                       function init()
                        {
                            if(GBrowserIsCompatible())
                            {
                                var map = new GMap2(document.getElementById("map_canvas"));
                                map.setCenter(new GLatLng(0,0), 2);
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
                                            "<h1>Hello World"
                                        );
                                    });
                                    return marker;
                                }
                            }
                            var latLong = new GLatLng(-22.7551484, -45.1191428);
                            map.addOverlay(createMarker(latLong, 0, {}));

                        }
               </script>
               {/literal}
	</head>
	<body onload="init()">
		  <div id="map_canvas" style="width:800px; height:500px;"></div>
					
				
			
	</body>
</html>
