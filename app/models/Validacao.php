<?php

class Validacao extends Zend_Db_Table_Abstract {
    //configurando nome da tabela
    //por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
    protected $_name = 'validacao';

    //identificando chave primaria da tabela
    //por padrao Zend_Db_Table busca chave primaria pelo nome id
    protected $_primary = 'va_id';

    public function ListarDados($usr,$par) {
        return $this->fetchAll("us_id = '$usr' AND pa_id = '$par'")->current();

    }
    public function calculoDistancia($lat1, $lon1, $lat2, $lon2) {


        $l1 = explode(".",$lat1);
        $l2 = explode(".",$lon1);
        $l3 = explode(".",$lat2);
        $l4 = explode(".",$lon2);

        $lat1 = floatval($l1[0].".".substr($l1[1],0,2));
        $lon1 = floatval($l2[0].".".substr($l2[1],0,2));
        $lat2 = floatval($l3[0].".".substr($l3[1],0,2));
        $lon2 = floatval($l4[0].".".substr($l4[1],0,2));


        $a = $lat1-$lat2;
        $b = $lon1-$lon2;

        if( $a < 0 ) $a*=-1;
        if( $b < 0 ) $b*=-1;

        $d = sqrt($a*$a*$b*$b);

        return $d;

    }

    public function calculoPontuacao($distancia) {

        if($distancia < 1.5) {
            $pontos = 5;

        }
        elseif($distancia > 1.5 && $distancia < 8) {
            $pontos = 3;
        }
        elseif($distancia > 8) {
            $pontos = 1;
        }

        return $pontos;


    }




}

?>