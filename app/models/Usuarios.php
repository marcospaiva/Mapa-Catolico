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

                $db = Zend_Registry::get("db");
		$s = $db->select();

                $palavra = "%$palavra%";

        	$s->from(array('u'=>'usuarios'),array('us_id','us_nome','us_email','us_cidade','us_estado'));
		$s->from(array('p'=>'paroquias'),array('COUNT(pa_id) AS paroquias'));
		$s->where('p.us_id = u.us_id');
		$s->where('u.us_ativo = 1');
                $s->where('u.us_nome LIKE ?',$palavra);
		$s->group('u.us_id');
		$s->order('u.us_nome ASC');

                //var_dump($s);
		return $db->fetchAll($s);

		//return $this->fetchAll("us_nome LIKE '%$palavra%'");

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
       

        public function Total($di,$df){

            
            $select  = $this->select();
            $select->from($this, array('count(*) as ust'));

            if(strlen($di)>4){

            $select->where("us_cadastro >= ?",$di);
            $select->where("us_cadastro <= ?",$df);

            }
            
            return $this->fetchAll($select);

            
        }
        public function TotalEstado($di,$df){
            $select  = $this->select();
            $select->from($this, array('count(*) as total', 'upper(us_estado) as estado', 'us_pais'));

            if(strlen($di)>4){
                $select->where("us_cadastro >= ?",$di);
                $select->where("us_cadastro <= ?",$df);

            }
            $select->group("us_estado");
            $select->order("us_pais ASC");
            $select->order("us_estado ASC");
            return $this->fetchAll($select);
        }

        
}

?>