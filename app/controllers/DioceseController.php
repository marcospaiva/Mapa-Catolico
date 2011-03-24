<?php
class DioceseController extends Zend_Controller_Action {

    public $view;

    public function init() {
        $this->view = Zend_Registry::get("view");

    }

    public function inserirAction() {

        $diocese = new Diocese;

        $dado = array(
            'us_id'=>$this->_request->getParam('usuario'),
            'di_diocese'=>$this->_request->getParam('diocese'),
            'di_bispo'=>$this->_request->getParam('bispo')
        );


        $id = $diocese->insert($dado);

        $this->view->assign('teste',$id);
        $this->view->display('index.tpl');

    }
}


?>