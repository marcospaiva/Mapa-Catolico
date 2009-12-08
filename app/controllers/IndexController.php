<?php

class IndexController extends Zend_Controller_Action
{
	public $view;
	
	public function init()
	{
		$this->view = Zend_Registry::get("view");
		
	}  
	
	public function indexAction()
	{

                $x = "testando o esquema paty";
		
                $this->view->assign('teste', $x);		
		$this->view->display('search.tpl');
	}
}

?>
