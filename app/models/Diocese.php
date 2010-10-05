<?php

class Diocese extends Zend_Db_Table_Abstract {
//configurando nome da tabela
//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
    protected $_name = 'diocese';

    //identificando chave primaria da tabela
    //por padrao Zend_Db_Table busca chave primaria pelo nome id
    protected $_primary = 'di_id';


    public function Listar($estado) {
        return $this->fetchAll("di_estado = '$estado'");

    }
    public function ListarTodos() {
        return $this->fetchAll();

    }

    public function ArrayIdDiocese()
    {
        $result = $this->fetchAll();
        $dados  = array();

        foreach ($result as $di){

            $dados[$di['di_id']] = $di['di_diocese'] ;
        }

        return $dados;
    }
    
    public function ArrayIdDioceseUf($estado)
    {
        $result = $this->fetchAll("di_estado = '$estado'");
        $dados  = array();

        foreach ($result as $di){

            $dados[$di['di_id']] = $di['di_diocese'] ;
        }

        return $dados;
    }

     public function GetID($diocese)
    {
        $result = $this->fetchAll("di_diocese LIKE '%$diocese%'")->current();

        return $result['di_id'];
    }

    public function GetName($diocese)
    {
        $result = $this->fetchAll("di_id = '$diocese'")->current();

        return $result['di_diocese'];
    }
    public function GetBispo($diocese)
    {
        $result = $this->fetchAll("di_id = '$diocese'")->current();

        return $result['di_bispo'];

    }

}

?>