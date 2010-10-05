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

        $nome    = $this->_request->getPost('nome');
        $email   = $this->_request->getPost('email');
        $assunto = $this->_request->getPost('assunto');
        $texto   = $this->_request->getPost('texto');

        //exit ();

        new Mail('m',
			     array(
                                    array('texto'=>$this->_request->getPost('texto'),
                                           'assunto'=>$this->_request->getPost('assunto')
                                          )
                                    )
                             ,
                                    array(
                                          array('email'=>$this->_request->getPost('email'),
                                                'nome'=>$this->_request->getPost('nome')
                                                )
                                         )
                          );

            

       

        $this->view->assign('tipo',"envio");
        $this->view->assign('redirect',"index.php");


        $this->view->assign('template',"default/menssagem.tpl");
        $this->view->display('default/common_main.tpl');

        
    }

     public function ajudaAction() {


        $this->view->assign('template',"default/help.tpl");
        $this->view->display('default/common_main.tpl');

    }


}

