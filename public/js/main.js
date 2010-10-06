/*#### ISSO MANIPULA O COMPORTAMENTO GERAL DO FRONT####*/

/*TOOLTIP*/
function open(){
	$(".tooltip").css("display", "block"); 
};
function close(){
	$(".tooltip").css("display", "none"); 
};

$(document).ready(function(){
   $("#login a").click(function(){
      open();
   });
$(".tooltip a").click(function(){
      close();
   });
});