<?php
class Cnbanner extends Zend_Db_Table_Abstract
{

	//configurando nome da tabela       
	//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
	protected $_name = 'cnbanner.bn_principal';

	//identificando chave primaria da tabela
	//por padrao Zend_Db_Table busca chave primaria pelo nome id
	protected $_primary = 'pr_id';


        public function Banner(){

             
              $where = "pr_data_fim >= now() AND pr_data_ini <= now() AND pr_hora_ini <= now() AND pr_hora_fim >= now() AND pr_idioma = 1";
              $order = "rand()";
              $limit = "1";


             return $this->fetchRow($this->select()->from($this, array('pr_id','pr_comprimento','pr_altura'))->where($where)->limit($limit)->order($order));

        }


        


}


?>