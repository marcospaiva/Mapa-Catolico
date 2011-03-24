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

        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

       
        $p      =  new Paroquias();
        
        $result =  $p->Busca($this->_request->getParam('palavra'));
	$qtd = 10;
        
        $total  =  count($result);
        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina,$qtd));
        $this->view->assign('url',$this->urlbase.'busca/buscar/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('template',"default/search.tpl");
        $this->view->display('default/common_main.tpl');
    }
}


?>