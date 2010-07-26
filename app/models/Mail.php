<?php

class Mail
{	
	public function Mail($subject,$mensagem,$to)
	{
		$tr = new Zend_Mail_Transport_Sendmail('-freturn_to_me@example.com'); 
 		Zend_Mail::setDefaultTransport($tr); 

		// email site
		$email_remetente = 'noreply@cancaonova.com';
		$nome_remetente = 'MapaCatolico';
		
		// loada Zend_Mail
		$mail = new Zend_Mail();
		
		// remetente
		$mail->setFrom($email_remetente,$nome_remetente);
		
		// destinatario(s)
		if ($to)
		{
			foreach ($to as $email)
			{
				$mail->addTo($email['email'],utf8_decode($email['nome']));
			}
		}
		else
		{
			$mail->addTo($email_remetente,'');
		}
		
		if($subject == 'c'){			
			$s = 'Confirmacao de cadastro!';
		}
		else if($subject == 'e'){
                        $s = 'Esqueci minha senha!';
		}
			
		// assunto
		$mail->setSubject($s);
				
		foreach($mensagem as $msg){
			if ($subject == 'e'){
				$f = "Sua nova senha &eacute;: <b>".$msg."<b>";
			
			}else if($subject == 'c'){
				$f = "Prezado(a) " .utf8_decode($email['nome'])." , <br/><br/> Seu Cadastro no Mapa Catolico foi realizado com sucesso! <br/><br/> Seus dados de acesso sao: <br/><b>Login: </b>".$msg['login']."<br/><b>Senha: </b>".$msg['senha']."<br/><br/>Para ativar sua conta acesse <a href=".$msg['url'].">Ative Aqui</a><br/><br/> Atenciosamente, <br/> Equipe MapaCatolico!<br/>";
			}

			$mail->setBodyHtml("$f");
		}		
		// monta mensagem
		//$view = Zend_Registry::get('view');
		//$view->assign('mensagem',$mensagem);
		//$mail->setBodyHtml($view->fetch('mail/'.$page.'.tpl'));
		
		// envia email
		return $mail->send();
	}
}

?>