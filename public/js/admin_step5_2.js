
jQuery.noConflict();


jQuery(document).ready(function(){

jQuery("#button").click(function(){


jQuery('#formadmin').validate( {
		rules: {
                        nome:{
				required: true
			},                        
                        tel:{
				required: true
			},
                        descricao:{
				required: true
			}
		},

		messages:{
                        nome: {
				required: "Preencha o Nome"
			},                        
                        tel: {
				required: "Preencha o Telefone"
			},
                        descricao: {
				required: "Preencha a Desricao"
			}
		}


});

	});
});




