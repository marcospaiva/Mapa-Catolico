<?php

class Paroquias extends Zend_Db_Table_Abstract
{
	//configurando nome da tabela
	//por padrao Zend_Db_Table busca pelo nome da classe separando maiusculas por _
	protected $_name = 'paroquias';
	
	//identificando chave primaria da tabela
	//por padrao Zend_Db_Table busca chave primaria pelo nome id
	protected $_primary = 'pa_id';

	public function Listar()
	{
		return $this->fetchAll();

	}

        public function ListarAdmin($id)
	{
		return $this->fetchAll("us_id = '$id'"); 
	}

        public function ListarEditar($usr,$id)
	{
		return $this->fetchAll("us_id = '$usr' AND pa_id = '$id'")->current();
	}
        
        public function ListarExibir($paroquia,$id_di){
                //echo "1 - $paroquia";

                $paroquia = str_replace( "+", " ",$paroquia);
                //echo "paroquia =  $paroquia";
                return $this->fetchAll("di_id = '$id_di' AND pa_nome LIKE '%$paroquia%'")->current();

        }
        public function ListarPalavras($palavra,$order)
        {
             $part =  explode(" ", $palavra);
             $w = '';
             $x = 0;
             foreach ($part as $pa){
                  if($x == 1){ $w .= " AND ";}
                  $w .= "pa_nome LIKE '%$pa%'";
                  $x = 1;
             }
             return $this->fetchAll($this->select()->where($w)->order($order));

        }
        public function ListarParoquias($palavra)
	{
                $part =  explode(" ", $palavra);
                $w = '';
                foreach ($part as $pa){

                   $w .= " AND pa_nome LIKE '%$pa%'";
                }
		return $this->fetchAll("pa_tipo = '1'".$w);
	}

         public function ListarCapela($palavra)
	{
                $part =  explode(" ", $palavra);
                $w = '';
                foreach ($part as $pa){

                   $w .= " AND pa_nome LIKE '%$pa%'";
                }
		return $this->fetchAll("pa_tipo = '2'".$w);
	}

        public function ListarCapelas()
	{
		return $this->fetchAll("pa_tipo = '2'");
	}
        public function ListarCidades($palavra)
        {
            $select  = $this->select();
            $select->from($this, array('count(*) as total','pa_cidade','pa_estado'));
            $select->where("pa_cidade LIKE '%$palavra%'");
            $select->group("pa_cidade");
            //$select = $this->select()->from(array('COUNT(*) AS total'))->where("pa_cidade LIKE '%$palavra%'")->group("pa_cidade");

           //$select = $this->select()->where("pa_cidade LIKE '%$palavra%'")->group("pa_cidade");
           // var_dump($this->fetchAll($select));
            return $this->fetchAll($select);

        }
        public function ListarCidade($cidade,$estado)
        {

            return $this->fetchAll("pa_cidade LIKE '$cidade' AND pa_estado LIKE '$estado'");
        }

        public function ListarDestaque($pag){

                return $this->fetchAll($this->select()->order("pa_id DESC")->limit(3));
        }

        public function ListarId($id){

                return $this->fetchAll("pa_id = '$id'")->current();
        }

}

?>