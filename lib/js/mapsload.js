if (GBrowserIsCompatible()) {
  
	var map = new GMap2(document.getElementById("googleMap"));
	var lat = document.getElementById(lat).valueOf(); // Latitude do marcador
	var lon = document.getElementById(lon).valueOf(); // Longitude do marcador
	var zoom = "8"; // Zoom

	map.addControl(new GMapTypeControl());
	map.addControl(new GLargeMapControl());
	map.setCenter(new GLatLng(lat, lon), zoom);

	var marker = new GMarker(new GLatLng(lat,lon));

	GEvent.addListener(marker, "click", function() {
		marker.openInfoWindowHtml("<h2>Minha marca</h2><p>Meu texto!</p>");
	});

	map.addOverlay(marker);
	map.setCenter(point, zoom);
} 