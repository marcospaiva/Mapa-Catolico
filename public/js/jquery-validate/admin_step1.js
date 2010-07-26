
jQuery.noConflict();


jQuery(document).ready(function(){

jQuery("#button").click(function(){


jQuery('#formadmin').validate( {
		rules: {
			
                        cep:{
				required: true,
                                minlength: 9
			}		

		},

		messages:{
			
                        cep: {
				required: "Preencha seu CEP"
			}
		}


});
	
	});
});




