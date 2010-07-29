
jQuery.noConflict();


//adicionando metodo para verificar se email existe
jQuery.validator.addMethod("mailvalido", function(){
	var nomemail = jQuery('#email1').val();
	var result;
       // alert(nomemail);
	jQuery.ajax({
		cache:false,
        	async:false,		
		url: 'http://www.mapacatolico.com/usuario/verificaemail/',
		type: 'post',
		dataType: 'Json',
		data: {
			email: nomemail
		},
		success: function (data) {
			result = (data == 'false') ? true : false;
		}

	});
        //alert(result);
    return result;


}, "Email ja existente ou inválido");

jQuery(document).ready(function(){

jQuery("#button").click(function(){


jQuery('#formcadastro').validate( {
		rules: {
			nome: {
				required: true,
				minlength: 2
			},			
			email1: {
				required: true,
				mailvalido: true
			},			
			password:{
				required: true,
				minlength: 6
			},
			password2: {
				required: true,
				minlength: 6,
				equalTo: "#password"
			},
                        cep:{
				required: true
			},
			sexo:{
				required: true
			}

		},

		messages:{
			nome: {
				required: "Preencha seu Nome",
				minlength: "M&iacute;nimo de 2 letras!"
			},
			email1: {
				required: "Preencha seu email",
                                mailvalido: "Email já cadastrado!"
			},

			password: {
				required: "Preencha sua Senha",
				minlength: "M&iacute;nino de 6 letras"
			},

			password2: {
				required: "Preencher confirma&ccedil;&atilde;o de Senha",
				minlength: "M&iacute;nimo de 6 letras",
				equalTo: "Confirma&ccedil;&atilde;o de senha nao confere"
			},
                        
                        cep: {
				required: "Preencha seu CEP"
			},
                        sexo: {
				required: "Escolha uma das op&ccedil;&otilde;es"
			}

		}


});
	
	});
});




