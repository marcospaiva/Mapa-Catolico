$(document).ready(function() {
	//seleciona os elementos a com atributo name="modal"
	$('a[name=modal]').click(function(e) {
		//cancela o comportamento padrão do link
		e.preventDefault();
		//armazena o atributo href do link
		var id = $(this).attr('href');
		//armazena a largura e a altura da tela
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
		//Define largura e altura do div#mask iguais ás dimensçoes da tela
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		//efeito de transição
		$('#mask').fadeTo("fast",0.9);
		//armazena a largura e a altura da janela
		var winH = $(window).height();
		var winW = $(window).width();
		//centraliza na tela a janela popup
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
		//efeito de transição
		$(id).fadeIn("slow");
	});

//se o botãoo fechar for clicado
	$('.window .close').click(function (e) {
		//cancela o comportamento padrão do link
		e.preventDefault();
		$('#mask, .window').hide();
	});
	//se div#mask for clicado
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});
	
	$("input[type='text']").resetDefaultValue();
	$("#main_search").validate();
	
});
