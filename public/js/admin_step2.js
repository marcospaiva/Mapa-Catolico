
jQuery.noConflict();


jQuery(document).ready(function(){

jQuery("#button").click(function(){


jQuery('#formadmin2').validate( {
		rules: {
                        uf:{
				required: true
			},
                        pais:{
				required: true
			},
                        cidade:{
				required: true
			},
                        bairro:{
				required: true
			},
                        rua:{
				required: true
			},

                        numero:{
				required: true

			}

		},

		messages:{
                        uf: {
				required: "Preencha o Estado"
			},
                        pais: {
				required: "Preencha o Pais"
			},
                        cidade: {
				required: "Preencha a Cidade"
			},
                        bairro: {
				required: "Preencha o Bairro"
			},
                        rua: {
				required: "Preencha a Rua"
			},
                        numero: {
				required: "Preencha o Numero"
			}
		}


});

	});
});





			}
		}


});

	});
});




