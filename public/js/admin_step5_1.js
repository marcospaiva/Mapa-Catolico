
jQuery.noConflict();


jQuery(document).ready(function(){

jQuery("#button").click(function(){


jQuery('#formadmin').validate( {
		rules: {
                        nome:{
				required: true
			},
                        paroco:{
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
                        paroco: {
				required: "Preencha o Paroco"
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




