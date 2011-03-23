<?php
class EventoController extends Zend_Controller_Action {

    public $view;

    public function init() {
        $this->view = Zend_Registry::get("view");

    }
    
    public function inserirAction() {

        $eventos = new Eventos;

        $dado = array(
            'pa_id'=>$this->_request->getParam('paroquia'),
            'us_id'=>$this->_request->getParam('usuario'),
            'ev_hora'=>$this->_request->getParam('hora'),
            'ev_semana'=>$this->_request->getParam('semana'),
            'ev_observacao'=>$this->_request->getParam('observacao'),
            'ev_tipo'=>$this->_request->getParam('tipo')
        );


        $id = $eventos->insert($dado);

        $this->view->assign('teste',$id);
        $this->view->display('index.tpl');

    }
}
?>