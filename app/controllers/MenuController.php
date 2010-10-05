<?php
class MenuController extends Zend_Controller_Action {

    public $view;
    public $controler;


    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->controler = Zend_Registry::get("controler");

    }

    public function contatoAction() {


        $this->view->assign('template',"default/contact.tpl");
        $this->view->display('default/common_main.tpl');

    }

    public function enviacontatoAction(){

        
    }

     public function ajudaAction() {


        $this->view->assign('template',"default/help.tpl");
        $this->view->display('default/common_main.tpl');

    }


}
?>