$(function(){
	
    $(".slider").carousel( {
        pagination: true,
        direction: "vertical",
        autoSlide: true,
        autoSlideInterval: 5000
    } );
	   		
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
			
    $("input[type=text]").clearDefault();
			
    $("#legend a").hide();
    $("#legend ul li.btn").click(function(){
        $(this).parent().hide();
        $("#legend a").show();
        return false;
    });
    $("#legend a").click(function(){
        $(this).hide();
        $("#legend ul").show();
        return false;
    });
	$("a.fancy").fancybox({
		'overlayColor': '#fef2e5'
	});
});

/*function paginarProximos(p,lat,long){
	var lat = lat;
	var long = long;
	var p = p;
	$.post("/mapacatolico/index/listaProximos",{pagina:p,lat: lat, long: long}, function(data){
             $('#lista-proximos').html(data);
        });
}*/


function listaProximos(url,p,lat,long){

    var url = url;
    var lat = lat;
    var long = long;
    var p = p;
    $.post(url,{
        pagina:p,
        lat: lat,
        long: long
    }, function(data){
        $('#lista-proximos').html(data);
    });

}


function initialize(urle) {

    var url = urle+"index/listaProximos";
    var lat = geoip_latitude();
    var long = geoip_longitude();
    var urlxml = urle+"index/listaproximosxml/lat/"+lat+"/long/"+long;



     var customIcons = {
        1: {
            icon: urle+'public/img/chapel_marker_on.png',
            shadow: urle+'public/img/chapel_marker_on.png'
        },
        2: {
            icon: urle+'public/img/parish_marker_on.png',
            shadow: urle+'public/img/parish_marker_on.png'
        }
    };
    

    listaProximos(url,1,geoip_latitude(), geoip_longitude());

    var latlng = new google.maps.LatLng(geoip_latitude(), geoip_longitude());
    var options = {
        zoom: 12,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"), options);

    var infowindow = new google.maps.InfoWindow({
        content: geoip_city()+" - "+geoip_region_name()
    });


    //for (i=0;i<10;i++){
	
    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title:"Você está em "+geoip_city()+" - "+geoip_region_name()
    });

    //}

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map,marker);
    });

      var infoWindow = new google.maps.InfoWindow;

    downloadUrl(urlxml, function(data) {



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
    });




 
}

function pagInterna(urlbasee,lat,long){
    var urlbase = urlbasee+"paroquiaexibir/listaProximos";
    var lat = lat;
    var long = long;
    var url = urlbasee+"index/listaproximosxml/lat/"+lat+"/long/"+long;

    var customIcons = {
        1: {
            icon: urlbasee+'public/img/chapel_marker_on.png',
            shadow: urlbasee+'public/img/chapel_marker_on.png'
        },
        2: {
            icon: urlbasee+'public/img/parish_marker_on.png',
            shadow: urlbasee+'public/img/parish_marker_on.png'
        }
    };
	
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
        title: geoip_city()+" Aqui "+geoip_region_name()
    });


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
    });
	
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








