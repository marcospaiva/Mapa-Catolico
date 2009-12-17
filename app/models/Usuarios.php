<?php

class Usuarios extends Zend_Db_Table_Abstract
{
	//configurando nome da tabela
	//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
	protected $_name = 'usuarios';
	
	//identificando chave primaria da tabela
	//por padrao Zend_Db_Table busca chave primaria pelo nome id
	protected $_primary = 'us_id';



	public function Listar()
	{
		return $this->fetchAll();

	}
        public function ListarDados($usr)
	{
		return $this->fetchAll("us_id = '$usr'")->current();

	}
        public function ListarUsuarios($palavra)
	{
		return $this->fetchAll("us_nome LIKE '%$palavra%'");

	}

        public function BuscaEndereco()
        {
                return $this->fechAll();
        }
       
        public function Logar()
        {
            

        }

        
}

?>