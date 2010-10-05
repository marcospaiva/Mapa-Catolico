<?php

class Frases extends Zend_Db_Table_Abstract
{
	//configurando nome da tabela
	//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
	protected $_name = 'frases';
	
	//identificando chave primaria da tabela
	//por padrao Zend_Db_Table busca chave primaria pelo nome id
	protected $_primary = 'fr_id';



	public function Listar()
	{
		return $this->fetchAll();

	}
        
        public function Listarcapa()
	{
                $order = "RAND()";
                $w     = "fr_ativo = 1";
		return $this->fetchAll($this->select()->where($w)->order($order))->current();

	}
        public function Listarid($id)
	{

               return $this->fetchAll("fr_id = '$id'")->current();;

	}
        
}
?>