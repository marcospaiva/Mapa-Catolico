$(function(){
	
	        $(".slider").carousel( {pagination: true, direction: "vertical",autoSlide: true,
			        autoSlideInterval: 5000 } );
	   		
			$(".sign_in").click(function(e){
				e.preventDefault(); //Remove default behavior
				$(this).toggleClass("active");
					$("#sign_box").toggle();
					return false;
				});
			$("#route").click(function(){
				$(this).toggleClass("active");
					$("#trace").toggle();
					return false;
				});
			
				$("input").clearDefault();
});

/*function paginarProximos(p,lat,long){
	var lat = lat;
	var long = long;
	var p = p;
	$.post("/mapacatolico/index/listaProximos",{pagina:p,lat: lat, long: long}, function(data){
             $('#lista-proximos').html(data);
        });
}*/


function listaProximos(urlbase,p,lat,long){
	var urlbase = urlbase;
	var lat = lat;
	var long = long;
	var p = p;
	$.post(urlbase+"index/listaProximos",{pagina:p,lat: lat, long: long}, function(data){
             $('#lista-proximos').html(data);
        });
}


function initialize(urlbase) {
      var urlbase = urlbase;
      listaProximos(urlbase,1,geoip_latitude(), geoip_longitude());

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
        title:"Você está em "+geoip_city()+" - "+geoip_region_name()
      }); 

      google.maps.event.addListener(marker, 'click', function() {
	infowindow.open(map,marker);
      });
 
}

function pagInterna(urlbase,lat,long){
	var urlbase = urlbase;
	var lat = lat;
	var long = long;
	
	listaProximos(urlbase,1,lat,long);
	
	var myLatlng = new google.maps.LatLng(lat,long);
	var myOptions = {
	zoom: 15,
	center: myLatlng,
	mapTypeId: google.maps.MapTypeId.ROADMAP
	}
	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	var infowindow = new google.maps.InfoWindow({
    		content: geoip_city()+" - "+geoip_region_name()
	});

      	var marker = new google.maps.Marker({
        	position: myLatlng,
        	map: map,
        	title: geoip_city()+" - "+geoip_region_name()
      	}); 
	
}