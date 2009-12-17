<?php

class Paginacao extends Zend_Controller_Action
{
	
	static function paginar($todos,$page)
	{
		
		// configura paginacao
		$paginator = new Zend_Paginator(new Zend_Paginator_Adapter_Array($todos));
		$paginator = Zend_Paginator::factory($todos);
		// seta pagina atual
		$paginator->setCurrentPageNumber($page);
		// quantidade de numeros a aparecer na paginacao
		$paginator->setPageRange(10);
		// itens por pagina
		$paginator->setItemCountPerPage(10);
		// registra variavel no view
		$view = Zend_Registry::get('view');
		$view->assign('page',$paginator->getPages());
		Zend_Registry::set('view',$view);

		return $paginator->getCurrentItems();
	}
}

?>