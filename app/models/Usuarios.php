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

        public function ListarPalavras($palavra,$order)
        {
             $part =  explode(" ", $palavra);
             $w = '';
             $x = 0;
             foreach ($part as $pa){
                  if($x == 1){ $w .= " AND ";}
                  $w .= "us_nome LIKE '%$pa%'";
                  $x = 1;
             }
             return $this->fetchAll($this->select()->where($w)->order($order));

        }
        public function ListarDados($usr)
	{
		return $this->fetchAll("us_id = '$usr'")->current();

	}
        public function ConsultaEmail($email)
	{
		return $this->fetchAll("us_email = '$email'")->current();

	}
        public function ListarUsuarios($palavra)
	{
		return $this->fetchAll("us_nome LIKE '%$palavra%'");

	}             

        public function VerificaSenha($usuario,$senha)
        {
            return $this->fetchAll("us_id = '$usuario' AND us_us_senha = md5($senha)");
        }

        public function BuscaEndereco()
        {
                return $this->fechAll();
        }
        public function Master($id){

                if($id == 1) return true;
                else return false;
        }
       
        public function Logar()
        {
            

        }

        
}

?>