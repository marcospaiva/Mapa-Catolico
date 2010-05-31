<?php

class IndexController extends Zend_Controller_Action {
    public $view;
    public $gkey;

    public function init() {
        $this->view = Zend_Registry::get("view");
        $this->gkey = Zend_Registry::get("gkey");

    }

    public function indexAction() 
	{
        $this->view->assign('apikey',$this->gkey);
        
         $paro   = new Paroquias();

        $cont   = $paro->listarDestaque(0);
        $cont2   = $paro->listarDestaque(1);

        $this->view->assign('dados',$cont);
        $this->view->assign('dados2',$cont2);

        $this->view->display('default/index.tpl');
	}
    
    public function logarAction() {

        $this->view->display('logar.tpl');
    }

    public function entrarAction() {

    // configura Zend_Auth adapter para uma tabela do banco de dados
        $db = Zend_Registry::get ('db');
        $auth = new Zend_Auth_Adapter_DbTable($db,'usuarios','us_email','us_senha','? AND us_ativo = 1');
        // Set the input credential values to authenticate against
        $auth->setIdentity($this->_request->getParam('email'));
        $auth->setCredential(md5($this->_request->getParam('senha')));
        // faz a autenticação
        $result = $auth->authenticate();
        // verifica autenticacao

        if ($result->isValid()) {

            $dados = $auth->getResultRowObject(array('us_id','us_nome','us_latitude', 'us_longitude'));// recuperar a linha da tabela mediante autenticação com sucesso

            $session = new Zend_Session_Namespace('paroquias');// inicio sessao
            $session->id = $dados->us_id;
            $session->nome = $dados->us_nome;
            $session->lat = $dados->us_latitude;
            $session->lon = $dados->us_longitude;
            $this->_redirect("admin");
        // sem erro
        }else {
        // erro
            $erro = '?erro=1';
        }

        // redireciona para pagina atual
        $url = explode('?',$_SERVER['HTTP_REFERER']);
        $this->_redirect($url[0].$erro);
    }
      public function sairAction() {
    // apagar session
        Zend_Session::ExpireSessionCookie();
        Zend_Session::destroy();
        // redireciona para index
        $this->_redirect('/');
    }

}

?>
