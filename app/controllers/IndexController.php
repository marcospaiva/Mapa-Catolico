<?php

class IndexController extends Zend_Controller_Action {
    public $view;
    public $gkey;
    public $urlbase;

    public function init() {
        $this->view = Zend_Registry::get("view");
        $this->gkey = Zend_Registry::get("gkey");

    }

    public function indexAction() 
	{
        $this->view->assign('apikey',$this->gkey);
        
        $paro   = new Paroquias();

        $fr  = new Frases();

        $frases = $fr->Listarcapa();

        $cont   = $paro->listarDestaque(3);

        $this->view->assign('dados',$cont);
        $this->view->assign('frase',$frases);

        $this->view->display('default/index.tpl');
	}
    
    public function logarAction() {

//        $this->view->display('logar.tpl');
        $this->view->assign('template',"admin/vazio.tpl");
        $this->view->display('default/common_main.tpl');
    }

    public function entrarAction() {

        $auth = Zend_Auth::getInstance();
        $auth->clearIdentity();

        // configura Zend_Auth adapter para uma tabela do banco de dados
        $db = Zend_Registry::get ('db');
        $auth = new Zend_Auth_Adapter_DbTable($db,'usuarios','us_email','us_senha','? AND us_ativo = 1');
        // Set the input credential values to authenticate against
        $auth->setIdentity($this->_request->getParam('email'));
        $auth->setCredential(md5($this->_request->getParam('senha')));

        // faz a autenticação
        $autenticado = $auth->authenticate();
        $objUsuario  = $auth->getResultRowObject( null, 'senha' );

        switch ( $autenticado->getCode() )
        {

            case Zend_Auth_Result::FAILURE_CREDENTIAL_INVALID:               
                $this->view->assign('mensagem',"Senha incorreta");
                $this->view->assign('template',"default/login.tpl");
                $this->view->display('default/common_main.tpl');
                break;

            case Zend_Auth_Result::FAILURE_IDENTITY_AMBIGUOUS:
                $this->view->assign('mensagem',"Senha incorreta");
                $this->view->assign('template',"default/login.tpl");
                $this->view->display('default/common_main.tpl');
                break;

            case Zend_Auth_Result::FAILURE_UNCATEGORIZED:
                $this->view->assign('mensagem',"Senha incorreta");
                $this->view->assign('template',"default/login.tpl");
                $this->view->display('default/common_main.tpl');
                break;

            case Zend_Auth_Result::FAILURE_IDENTITY_NOT_FOUND:
                
                $this->view->assign('mensagem',"E-mail digitado errado ou não existe em nossa base de dados, verifique o e-mail!");
                $this->view->assign('template',"default/login.tpl");
                $this->view->display('default/common_main.tpl');
                break;

            case Zend_Auth_Result::SUCCESS:
                $dados = $auth->getResultRowObject(array('us_id','us_nome','us_latitude', 'us_longitude'));// recuperar a linha da tabela mediante autenticação com sucesso
                $session = new Zend_Session_Namespace('paroquias');// inicio sessao
                $session->id = $dados->us_id;
                $session->nome = $dados->us_nome;
                $session->lat = $dados->us_latitude;
                $session->lon = $dados->us_longitude;

                if($dados->us_id == 1){ $this->_redirect("master");  }
                elseif($dados->us_id == 2){ $this->_redirect("relatorio");  }
                else
                    $this->_redirect("admin");
                break;
       }

/*
        if ($result->isValid()) {

            $dados = $auth->getResultRowObject(array('us_id','us_nome','us_latitude', 'us_longitude'));// recuperar a linha da tabela mediante autenticação com sucesso

            $session = new Zend_Session_Namespace('paroquias');// inicio sessao
            $session->id = $dados->us_id;
            $session->nome = $dados->us_nome;
            $session->lat = $dados->us_latitude;
            $session->lon = $dados->us_longitude;

            if($dados->us_id == 1){ $this->_redirect("master");  }
                $this->_redirect("admin");
        // sem erro
        }else {
        // erro

            $erro = '?erro=1';

        }

        // redireciona para pagina atual
        $url = explode('?',$_SERVER['HTTP_REFERER']);
        $this->_redirect($url[0].$erro);

        */
    }
      public function sairAction() {
    // apagar session
        Zend_Session::ExpireSessionCookie();
        Zend_Session::destroy();
        // redireciona para index
        $this->_redirect('/');
    }

	public function listaproximosAction(){

		$pagina=1;
        	if($this->_request->getPost('pagina')) {
            		$pagina=$this->_request->getPost('pagina');
        	}

		//$this->view->assign('proximos',$proximos);
		
		$p  = new Paroquias();

		$latitude = $this->_request->getPost('lat');
		$longitude = $this->_request->getPost('long');	

        	$result = $p->ListarProximas($latitude,$longitude)->toArray();
		$qtd = 5;	
		$total  =  count($result);

		foreach($result as $r){
			$dado = array(
           		'latitude'=>$r['pa_latitude'],
			'longitude'=>$r['pa_longitude']
           
        		);
		}
		
		$this->view->assign('latitude',$latitude);
		$this->view->assign('longitude',$longitude);

		$this->view->assign('proximos',Paginacao::paginar($result,$pagina,$qtd));
  		
		$this->view->assign('url',$this->urlbase);		

		$this->view->display('default/lista-proximos.tpl');

	} 

}
?>