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
        public function ListarGeral($palavra)
	{
                $part =  explode(" ", $palavra);
                $w = '';
              
                $db = Zend_Registry::get("db");
		$s = $db->select();
        	$s->from(array('d'=>'diocese'),array('di_diocese','di_bispo','di_cidade','di_estado'));
		$s->from(array('p'=>'paroquias'),array('di_id','pa_id','pa_nome', 'pa_nome','pa_paroco','pa_cidade','pa_bairro','pa_rua','pa_numero','pa_estado','pa_validacao','pa_tipo'));

                foreach ($part as $pa){
                    $palavra = "%$pa%";
                    $s->where('p.pa_nome LIKE ?',$palavra);
                }

		$s->where('d.di_id = p.di_id');
                $s->where('p.pa_tipo > 0');
                //$s->where($w);
		$s->group('p.pa_id');
		$s->order('p.pa_nome ASC');

                //var_dump($s);
		return $db->fetchAll($s);

                

		//return $this->fetchAll("pa_tipo > '0'".$w);
	}
        public function ListarParoquias($palavra)
	{
                $part =  explode(" ", $palavra);
                $w = '';

                $db = Zend_Registry::get("db");
		$s = $db->select();
        	$s->from(array('d'=>'diocese'),array('di_diocese','di_bispo','di_cidade','di_estado'));
		$s->from(array('p'=>'paroquias'),array('di_id','pa_id','pa_nome', 'pa_nome','pa_paroco','pa_cidade','pa_bairro','pa_rua','pa_numero','pa_estado','pa_validacao','pa_tipo'));

                foreach ($part as $pa){
                    $palavra = "%$pa%";
                    $s->where('p.pa_nome LIKE ?',$palavra);
                }

		$s->where('d.di_id = p.di_id');
                $s->where('p.pa_tipo = 1');
                //$s->where($w);
		$s->group('p.pa_id');
		$s->order('p.pa_nome ASC');

                //var_dump($s);
		return $db->fetchAll($s);

         }

         public function ListarCapela($palavra)
	{
                $part =  explode(" ", $palavra);
                $w = '';



                $db = Zend_Registry::get("db");
		$s = $db->select();
        	$s->from(array('d'=>'diocese'),array('di_diocese','di_bispo','di_cidade','di_estado'));
		$s->from(array('p'=>'paroquias'),array('di_id','pa_id','pa_nome', 'pa_nome','pa_paroco','pa_cidade','pa_bairro','pa_rua','pa_numero','pa_estado','pa_validacao','pa_tipo'));

                foreach ($part as $pa){
                    $palavra = "%$pa%";
                    $s->where('p.pa_nome LIKE ?',$palavra);
                }

		$s->where('d.di_id = p.di_id');
                $s->where('p.pa_tipo = 2');
                //$s->where($w);
		$s->group('p.pa_id');
		$s->order('p.pa_nome ASC');

                //var_dump($s);
		return $db->fetchAll($s);

		//return $this->fetchAll("pa_tipo = '2'".$w);
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

                return $this->fetchAll($this->select()->order("RAND()")->limit(3));
        }

        public function ListarId($id){

                return $this->fetchAll("pa_id = '$id'")->current();
        }

        public function TotalParoquia($di,$df){

            $select  = $this->select();
            $select->from($this, array('count(*) as pat'));
            $select->where('pa_tipo = 1');
            if(strlen($di)>4){
                $select->where("pa_cadastro >= ?",$di);
                $select->where("pa_cadastro <= ?",$df);

            }
            return $this->fetchAll($select);

        }

        public function TotalParoquiaEstado($di,$df){
            $select  = $this->select();
            $select->from($this, array('count(*) as total', 'upper(pa_estado) as estado', 'pa_pais'));
            $select->where('pa_tipo = 1');
            if(strlen($di)>4){
                $select->where("pa_cadastro >= ?",$di);
                $select->where("pa_cadastro <= ?",$df);

            }
            $select->group("pa_estado");
            $select->order("pa_pais ASC");
            $select->order("pa_estado ASC");
            return $this->fetchAll($select);
        }

        public function TotalCapela($di,$df){

            $select  = $this->select();
            $select->from($this, array('count(*) as cat'));
            $select->where('pa_tipo = 2');
            if(strlen($di)>4){
                $select->where("pa_cadastro >= ?",$di);
                $select->where("pa_cadastro <= ?",$df);

            }
            return $this->fetchAll($select);


        }
        
         public function TotalCapelaEstado($di,$df){
            $select  = $this->select();
            $select->from($this, array('count(*) as total', 'upper(pa_estado) as estado', 'pa_pais'));
            $select->where('pa_tipo = 2');
            if(strlen($di)>4){
                $select->where("pa_cadastro >= ?",$di);
                $select->where("pa_cadastro <= ?",$df);

            }
            $select->group("pa_estado");
            $select->order("pa_pais ASC");
            $select->order("pa_estado ASC");
            return $this->fetchAll($select);
        }

	public function ListarProximas($lat,$long){
		$select  = $this->select();

		$select->from($this, array("pa_id","pa_nome","pa_cidade","di_id", "ACOS(SIN(RADIANS(pa_latitude)) * SIN(RADIANS($lat)) + COS(RADIANS($lat)) * COS(RADIANS($lat)) * COS(RADIANS(pa_longitude) - RADIANS($long))) * 6380 AS distancia"));
		
		$select->where("ACOS(SIN(RADIANS(pa_latitude)) * SIN(RADIANS($lat)) + COS(RADIANS(pa_latitude)) * COS(RADIANS($lat)) * COS( RADIANS(pa_longitude) - RADIANS($long))) * 6380 < 10");
		
		$select->order('distancia');

		$select->limit('5');

		return $this->fetchAll($select);
        }

}

?>