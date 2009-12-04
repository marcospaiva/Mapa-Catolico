<?php

require_once './app/models/gMaps.php';

class Ceps extends Zend_Db_Table_Abstract
{

	//configurando nome da tabela       
	//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
	protected $_name = 'cep.cep_log_index';

	//identificando chave primaria da tabela
	//por padrao Zend_Db_Table busca chave primaria pelo nome id
	protected $_primary = 'id';


	public function ObterEstado($cep)
	{
                $parte   = explode("-", $cep);
                $prefixo = $parte[0];
                
                $result  = $this->fetchAll("cep5='$prefixo'")->current();
                return $result;
	}


        public function ObterEndereco($cep, $uf)
        {                
                $db = Zend_Registry::get('db');
		$s  = $db->select();
		$s->from('cep.'.$uf, array('cidade','logradouro','bairro','cep','tp_logradouro'));
                $s->where('cep = ?',$cep);
                $result = $db->fetchAll($s);
                return $result;

        }


        


}


?>
