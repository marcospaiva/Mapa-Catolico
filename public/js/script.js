$(function(){
	
	        $(".slider").carousel( { pagination: true, direction: "vertical",autoSlide: true,
			        autoSlideInterval: 5000 } );
	   		
			$(".sign_in").click(function(){
			$(this).toggleClass("active");
				$("#sign_box").toggle();
				return false;
			});
			
			
	
});
