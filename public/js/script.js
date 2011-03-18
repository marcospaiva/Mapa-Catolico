$(function(){
	
	        $(".slider").carousel( {pagination: true, direction: "vertical",autoSlide: true,
			        autoSlideInterval: 5000 } );
	   		
			$(".sign_in").click(function(){
				$(this).toggleClass("active");
					$("#sign_box").toggle();
					return false;
				});
			$("#route").click(function(){
				$(this).toggleClass("active");
					$("#trace").toggle();
					return false;
				});
	
});

function paginarProximos(p,lat,long){
	var lat = lat;
	var long = long;
	var p = p;
	$.post("/mapacatolico/index/listaProximos",{pagina:p,lat: lat, long: long}, function(data){
             $('#lista-proximos').html(data);
        });
}


function listaProximos(lat,long){
	var lat = lat;
	var long = long;
	$.post("/mapacatolico/index/listaProximos",{lat: lat, long: long}, function(data){
             $('#lista-proximos').html(data);
        });
}


function initialize() {

     listaProximos(geoip_latitude(), geoip_longitude());

      var latlng = new google.maps.LatLng(geoip_latitude(), geoip_longitude());
      var options = {
        zoom: 9,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
      };
      var map = new google.maps.Map(document.getElementById("map_canvas"), options);

      var infowindow = new google.maps.InfoWindow({
    	content: geoip_city()+" - "+geoip_region_name()
	});


      var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title:"Seu IP sugere que você esteja em "+geoip_city()+" - "+geoip_region_name()
      }); 

      google.maps.event.addListener(marker, 'click', function() {
	infowindow.open(map,marker);
      });
 
}
