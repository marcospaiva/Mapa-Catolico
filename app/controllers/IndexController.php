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
		$this->view->display('defult/common_main.tpl');
	}
}

?>
