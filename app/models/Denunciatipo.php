<?php

class Denunciatipo extends Zend_Db_Table_Abstract {
    //configurando nome da tabela
    //por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
    protected $_name = 'denuncia_tipo';

    //identificando chave primaria da tabela
    //por padrao Zend_Db_Table busca chave primaria pelo nome id
    protected $_primary = 'dt_id';



    public function Listar() {
        $result = $this->fetchAll();
        $dados  = array();

        foreach ($result as $de) {

            $dados[$de['dt_id']] = $de['dt_descricao'] ;
        }

        return $dados;

    }


}

?>