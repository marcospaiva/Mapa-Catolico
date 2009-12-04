<?php
class ParoquiaController extends Zend_Controller_Action {

    public $view;

    public function init() {
        $this->view = Zend_Registry::get("view");

    }

    public function inserirAction() {

        $paroquias = new Paroquias;

        $dado = array(
            'di_id'=>$this->_request->getParam('diocese'),
            'us_id'=>$this->_request->getParam('usuario'),
            'pa_descricao'=>$this->_request->getParam('descricao'),
            'pa_paroco'=>$this->_request->getParam('paroco'),
            'pa_tel'=>$this->_request->getParam('tel'),
            'pa_site'=>$this->_request->getParam('site'),
            'pa_email'=>$this->_request->getParam('email'),
            'pa_tipo'=>$this->_request->getParam('tipo'),
            'pa_pais'=>$this->_request->getParam('pais'),
            'pa_estado'=>$this->_request->getParam('estado'),
            'pa_cidade'=>$this->_request->getParam('cidade'),
            'pa_bairro'=>$this->_request->getParam('bairro'),
            'pa_rua'=>$this->_request->getParam('rua'),
            'pa_numero'=>$this->_request->getParam('numero'),
            'pa_cep'=>$this->_request->getParam('cep'),
            'pa_latitude'=>$this->_request->getParam('latitude'),
            'pa_longitude'=>$this->_request->getParam('longitude')
        );


        $id = $paroquias->insert($dado);

        $this->view->assign('teste',$id);
        $this->view->display('index.tpl');

    }


}
?>
