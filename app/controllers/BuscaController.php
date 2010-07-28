<?php
class BuscaController extends Zend_Controller_Action {

    public $view;
    public $urlbase;

    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->urlbase = Zend_Registry::get("urlbase");

    }
    public function indexAction() {
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');
    }

    public function buscarAction() {

       $this->_redirect($this->urlbase.'busca/'.$this->_request->getParam('tipo').'/palavra/'.$this->_request->getParam('palavra'));

    }


     public function geralAction() {

        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }


        $p      =  new Paroquias();
        $result =  $p->ListarGeral($this->_request->getParam('palavra'))->toArray();

        $total  =  count($result);
        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/geral/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('tipo',"geral");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');


    }

    public function paroquiaAction() {
		
        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }


        $p      =  new Paroquias();
        $result =  $p->ListarParoquias($this->_request->getParam('palavra'))->toArray();
        
        $total  =  count($result);
        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/paroquia/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('tipo',"paroquia");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');


    }
    public function capelaAction() {

        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }


        $p      =  new Paroquias();

        $result =  $p->ListarCapela($this->_request->getParam('palavra'))->toArray();
        $total  =  count($result);

        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/capela/palavra/'.$this->_request->getParam('palavra').'/pagina/');

        $this->view->assign('tipo',"capela");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');

    }
    public function cidadeAction() {

         $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        $p      =  new Paroquias();

        $result =  $p->ListarCidades($this->_request->getParam('palavra'))->toArray();
        $total  =  count($result);

        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/cidade/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('tipo',"cidade");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');

    }
    public function cidadesAction() {

         $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        $p      =  new Paroquias();

        $result =  $p->ListarCidade($this->_request->getParam('cidade'),$this->_request->getParam('uf'))->toArray();
        $total  =  count($result);

        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/cidades/cidade/'.$this->_request->getParam('cidade').'/uf/'.$this->_request->getParam('uf').'/pagina/');
        $this->view->assign('tipo',"paroquia");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');

    }


    public function usuarioAction() {
	
         $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        $u      =  new Usuarios();
   			
        $result =  $u->ListarUsuarios($this->_request->getParam('palavra'))->toArray();
        $total  =  count($result);

        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/usuario/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('tipo',"usuario");
        
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');

    }
    public function usuariosAction() {

        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        $p      =  new Paroquias();

        $result =  $p->ListarAdmin($this->_request->getParam('id'))->toArray();
        $total  =  count($result);

        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'busca/usuarios/id/'.$this->_request->getParam('id').'/pagina/');
        $this->view->assign('tipo',"paroquia");
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');

    }
}


?>
