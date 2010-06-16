<?php
class UsuarioController extends Zend_Controller_Action {

    public $view;
    public $gkey;
    public $controler;

    public function init() {
        $this->view = Zend_Registry::get("view");
        $this->gkey = Zend_Registry::get("gkey");
        $this->controler = Zend_Registry::get("controler");

    }

   

    public function cadastroAction() {


        $this->view->assign('sexo_id',array(1,2));
        $this->view->assign('sexo',array("Masculino","Feminino"));
        $this->view->assign('sexo_c',2);
        $this->view->assign('mensagem',"Todos os campos sao obrigatorios!");

        $this->view->assign('template',"default/new_account.tpl");
        $this->view->display('default/common_main.tpl');
    }

     public function inserirAction() {

        if($this->_request->getPost('password') <> $this->_request->getPost('password2')) {
            
            $this->view->assign('cep',$cep);
            $this->view->assign('email',$email);
            $this->view->assign('nome',$nome);  
            $this->view->assign('sexo_id',array(1,2));
            $this->view->assign('sexo',array("Masculino","Feminino"));
            $this->view->assign('sexo_c',$sexo);
            $this->view->assign('mensagem',"Digite a mesma senha no dois campos!");

            $this->view->assign('template',"default/new_account.tpl");
            $this->view->display('default/common_main.tpl');

            break;
        }
   

        $usuarios = new Usuarios;

        $c   = new Ceps();
        $res = $c->ObterEstado($this->_request->getPost('cep'));
        $uf  = $res['uf'];
        $end = $c->ObterEndereco($this->_request->getPost('cep'), $uf);


        $cidade  = "";
        $bairro  = "";
        $rua     = "";  

        foreach ($end as $z) {
            $cidade  = $z['cidade'];
            $bairro  = $z['bairro'];
            $rua     = $z['tp_logradouro']." ".$z['logradouro'];
        }



        $data    = date("Y-m-d");


        $dado = array(
            'us_nome'=>$this->_request->getPost('nome'),            
            'us_email'=>$this->_request->getPost('email'),
            'us_senha'=>md5($this->_request->getPost('password')),
            'us_sexo'=>$this->_request->getPost('sexo'),
            'us_estado'=>$uf,
            'us_cidade'=>$cidade,
            'us_bairro'=>$bairro,
            'us_rua'=>$rua,
            'us_cep'=>$this->_request->getPost('cep'),
            'us_log'=>$data
        );


        $id = $usuarios->insert($dado);

        //$inc = new Inc();
				$url = 'http://'.$_SERVER['SERVER_NAME'].'/confirmacao/'.base64_encode($id).'/';
				//envia email de confirmacao

				new Mail('cadastro',
						'c',
						array(array('nome'=>$this->_request->getPost('nome'),'url'=>$url,'login'=>$this->_request->getPost('email'),'senha'=>$this->_request->getPost('password'))),
						array(array('email'=>$this->_request->getPost('email'),'nome'=>$this->_request->getPost('nome'))),
						$idioma);

			$this->_redirect('/sucesso');

        $this->view->assign('teste',$id);
        $this->view->display('cadastrousuario3.tpl');

    }
    
     public function editarAction() {



        $this->view->assign('sexo_id',array(1,2));
        $this->view->assign('sexo',array("Masculino","Feminino"));
        //$this->view->assign('sexo_c',2);
        $this->view->assign('mensagem',"Todos os campos sao obrigatorios!");

        $usuario = new Usuarios();

        $us = $usuario->ListarDados($this->controler->id());
        $this->view->assign('usuario', $us);
        $this->view->assign('template',"admin/edit_account.tpl");
        $this->view->display('admin/admin.tpl');
    }




/*
    public function cadastro1Action() {

        $cep   = $this->_request->getPost('cep');
        $email = $this->_request->getPost('email');
        $nome  = $this->_request->getPost('nome');
        $senha = $this->_request->getPost('senha');
        $sexo  = $this->_request->getPost('sexo');
        

        if($senha <> $this->_request->getPost('senha1')) {
          
            $this->view->assign('cep',$cep);
            $this->view->assign('email',$email);
            $this->view->assign('nome',$nome);  
            $this->view->assign('sexo_id',array(1,2));
            $this->view->assign('sexo',array("Masculino","Feminino"));
            $this->view->assign('sexo_c',$sexo);
            $this->view->assign('mensagem',"Digite a mesma senha no dois campos!");

            $this->view->assign('template',"default/new_account.tpl");
            $this->view->display('default/common_main.tpl');

            break;

        }

        


        $c   = new Ceps();
        $res = $c->ObterEstado($cep);
        $uf  = $res['uf'];
        $end = $c->ObterEndereco($cep, $uf);



        $di    =  new Diocese();
        $dados =  $di->ArrayIdDioceseUf($uf);

        $this->view->assign('diocese',$dados);


        $cidade  = "";
        $bairro  = "";
        $rua     = "";        

        foreach ($end as $z) {
            $cidade  = $z['cidade'];
            $bairro  = $z['bairro'];
            $rua     = $z['tp_logradouro']." ".$z['logradouro'];
        }

        $this->view->assign('bairro',$bairro);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('cep',$cep);
        $this->view->assign('email',$email);        
        $this->view->assign('nome',$nome);
        $this->view->assign('senha',$senha);
        $this->view->assign('sexo',$sexo);
        $this->view->assign('rua',$rua);          
        $this->view->assign('uf',$uf);

        $this->view->display('cadastrousuario1.tpl');

    }

    public function cadastro2Action() {

        $bairro  = $this->_request->getPost('bairro');
        $cidade  = $this->_request->getPost('cidade');
        $cep     = $this->_request->getPost('cep');
        $diocese = $this->_request->getPost('diocese');
        $email   = $this->_request->getPost('email');        
        $nome    = $this->_request->getPost('nome');
        $numero  = $this->_request->getPost('numero');
        $rua     = $this->_request->getPost('rua');
        $senha   = $this->_request->getPost('senha');
        $sexo    = $this->_request->getPost('sexo');        
        $uf      = $this->_request->getPost('uf');

        $endereco = "$rua, $numero, $cidade, $uf";
        $gmaps    = new gMaps($this->key);
        $cord     = $gmaps->geolocal($endereco);

        $lat = $cord['lat'];
        $lon = $cord['lon'];

        $this->view->assign('bairro',$bairro);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('cep',$cep);
        $this->view->assign('diocese',$diocese);
        $this->view->assign('email',$email);
        $this->view->assign('lat',$lat);        
        $this->view->assign('lon',$lon);
        $this->view->assign('nome',$nome);
        $this->view->assign('numero',$numero);
        $this->view->assign('rua',$rua);
        $this->view->assign('senha',$senha);
        $this->view->assign('sexo',$sexo);                
        $this->view->assign('uf',$uf);

        $this->view->display('cadastrousuario2.tpl');
    }

    public function inserirAction() {

        $usuarios = new Usuarios;

       
        $data    = date("Y-m-d");
  

        $dado = array(
            'us_nome'=>$this->_request->getPost('nome'),
            'di_id'=>$this->_request->getPost('diocese'),
            'us_email'=>$this->_request->getPost('email'),
            'us_senha'=>md5($this->_request->getPost('senha')),
            'us_sexo'=>$this->_request->getPost('sexo'),
            'us_estado'=>$this->_request->getPost('uf'),
            'us_cidade'=>$this->_request->getPost('cidade'),
            'us_bairro'=>$this->_request->getPost('bairro'),
            'us_rua'=>$this->_request->getPost('rua'),
            'us_numero'=>$this->_request->getPost('numero'),
            'us_cep'=>$this->_request->getPost('cep'),
            'us_latitude'=>$this->_request->getPost('lat'),
            'us_longitude'=>$this->_request->getPost('lon'),
            'us_log'=>$data
        );


        $id = $usuarios->insert($dado);

        $this->view->assign('teste',$id);
        $this->view->display('cadastrousuario3.tpl');

    }
*/
}
?>
