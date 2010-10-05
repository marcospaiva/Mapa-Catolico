<?php
class AdminController extends Zend_Controller_Action {

    public $view;
    public $gkey;
    public $urlbase;
    public $controler;
    

    
    public function init() {

        $this->view      = Zend_Registry::get("view");
        $this->gkey      = Zend_Registry::get("gkey");
        $this->urlbase   = Zend_Registry::get("urlbase");
        $this->controler = Zend_Registry::get("controler");

        if(!$this->controler->logado()){

             $this->_redirect("index/logar");
        }
        

    }
    public function indexAction() {

        $this->view->assign('template',"admin/vazio.tpl");
        $this->view->display('admin/admin.tpl');
    }

    public function denunciarAction(){



        $de    = new Denuncia();
        $data  = date("Y-m-d");


        $dado = array(
            'dt_id'=>$this->_request->getPost('tipo'),
            'us_id'=>$this->controler->id(),
            'dc_id'=>$this->_request->getPost('id'),
            'de_canal'=>$this->_request->getPost('canal'),
            'de_data'=>$data,
            'de_status'=>0,
            'de_observacao'=>$this->_request->getPost('obs'),
        );

        $de->insert($dado);

        $this->_redirect($_SERVER['HTTP_REFERER']);


    }
   
  
    public function paroquiaAction() {

        $par = new Paroquias();    
      
        $lista = $par->ListarAdmin($this->controler->id());

        $count = count($lista);
        $this->view->assign('count',$count);
        $this->view->assign('paroquias',$lista);
        $this->view->assign('template',"admin/edit.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function usuarioAction() {


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

    public function paroquiaeditarAction() {

        $par     = new Paroquias();
        
        $id  = $this->_request->getParam("id");
        $us  = $this->controler->id();

        $lista = $par->ListarEditar($us,$id);

        $di =  new Diocese();

        $dados =  $di->ArrayIdDiocese();

        $this->view->assign('diocese',$dados);
        $this->view->assign('tipo_id',array(2,1));
        $this->view->assign('tipo',array("Capela","Paroquia"));
        $this->view->assign('pa',$lista);
        $this->view->assign('apikey',$this->gkey);

		
	$this->view->assign('template',"admin/edit_parish.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function usuarioupdateAction() {

    
        $usr = new Usuarios;
        $id = $this->controler->id();

        $url =  $this->urlbase.'admin/usuario';        
       
        $usuario = $usr->ListarDados($id);

        $data    = date("Y-m-d");

        if($this->_request->getPost('password1') == $this->_request->getPost('password2') && strlen($this->_request->getPost('password1')) > 0){
            $password = md5($this->_request->getPost('password1'));
        }else{
            $password = $usuario['us_senha'];
        }

        
        $dado = array(
            'us_nome'=>$this->_request->getPost('nome'),
            'us_senha'=>$password,
            'di_id'=>$this->_request->getPost('diocese'),
            'us_email'=>$this->_request->getPost('email'),
            'us_sexo'=>$this->_request->getPost('sexo'),
            'us_estado'=>$this->_request->getPost('uf'),
            'us_cidade'=>$this->_request->getPost('cidade'),
            'us_bairro'=>$this->_request->getPost('bairro'),
            'us_pais'=>$this->_request->getPost('pais'),
            'us_rua'=>$this->_request->getPost('rua'),
            'us_numero'=>$this->_request->getPost('numero'),
            'us_cep'=>$this->_request->getPost('cep'),
            'us_latitude'=>$this->_request->getPost('lat'),
            'us_longitude'=>$this->_request->getPost('lon'),
            'us_log'=>$data
        );
       
        $cond = "us_id =".$id;
        $usr->update($dado, $cond);
        
       
        $this->_redirect($url);

    }

    public function paroquiaupdateAction() {

        $par     = new Paroquias();
        $usuario = new Usuarios();

        $dado = array(

            'di_id'=>$this->_request->getPost('diocese'),
            'pa_nome'=>$this->_request->getPost('nome'),
            'pa_descricao'=>$this->_request->getPost('descricao'),
            'pa_paroco'=>$this->_request->getPost('paroco'),
            'pa_tel'=>$this->_request->getPost('tel'),   
            'pa_site'=>$this->_request->getPost('site'),
            'pa_email'=>$this->_request->getPost('email'),
            'pa_tipo'=>$this->_request->getPost('tipo'),
            'pa_estado'=>$this->_request->getPost('uf'),
            'pa_cidade'=>$this->_request->getPost('cidade'),
            'pa_pais'=>$this->_request->getPost('pais'),
            'pa_bairro'=>$this->_request->getPost('bairro'),
            'pa_rua'=>$this->_request->getPost('rua'),
            'pa_numero'=>$this->_request->getPost('numero'),
            'pa_cep'=>$this->_request->getPost('cep'),
            'pa_latitude'=>$this->_request->getPost('lat'),
            'pa_longitude'=>$this->_request->getPost('lon')
        );

        $id = $this->_request->getPost('id');
        $cond = "pa_id = ".$id;
        $par->update($dado,$cond);


        $local      = $_FILES["imagem"]["tmp_name"];
        $destino    = "./public/img/paroquias/".$id.".jpg";
        $destinoFTP = "paroquias/".$id.".jpg";


        $img =  new Imagem();
        
        $img->upload($local,$destino);
        $img->redimencionar($destino, "100","100");

        $ftp = new Ftp();
        $ftp->upload($destinoFTP,$destino);

        $img->dell($destino);

      
        $url =  $this->urlbase."admin/paroquia";

        if($usuario->Master($this->controler->id())){

             $url =  $this->urlbase."master/paroquias";

        }
        $this->_redirect($url);
    }


      public function paroquiacadastroAction() {


        $this->view->assign('template',"admin/step_1.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function paroquiacadastro1Action() {

        $cep   = $this->_request->getParam('cep');

        $c   = new Cep();

        $res = $c->ObterEstado($cep);


        $cidade  = "";
        $bairro  = "";
        $rua     = "";
        $uf      = "";

        if(isset($res)){

            $uf  = $res['uf'];
            $end = $c->ObterEndereco($cep, $uf);

            foreach ($end as $z) {
                $cidade  = $z['cidade'];
                $bairro  = $z['bairro'];
                $rua     = $z['tp_logradouro']." ".$z['logradouro'];
            }
        }


        $this->view->assign('bairro',$bairro);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('cep',$cep);
        $this->view->assign('rua',$rua);
        $this->view->assign('uf',$uf);

        $this->view->assign('template',"admin/step_2.tpl");
        $this->view->display('admin/admin.tpl');
    }

    public function paroquiacadastro2Action(){

        $pais    = $this->_request->getPost('pais');
        $bairro  = $this->_request->getPost('bairro');
        $cidade  = $this->_request->getPost('cidade');
        $cep     = $this->_request->getPost('cep');
        $logr    = $this->_request->getPost('logr');
        $numero  = $this->_request->getPost('numero');
        $tipo    = $this->_request->getPost('tipo');
        $rua     = $this->_request->getPost('rua');
        $uf      = $this->_request->getPost('uf');

        $endereco = "$rua, $numero, $cidade, $uf";
        $gmaps    = new gMaps();
        $cord     = $gmaps->geolocal($endereco);

        $lat = $cord['lat'];
        $lon = $cord['lon'];


        if($lat == 0){

            $cord = $gmaps->geolocal("$cidade - $uf, $pais");
            $lat = $cord['lat'];
            $lon = $cord['lon'];

        }

        $this->view->assign('bairro',$bairro);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('pais',$pais);
        $this->view->assign('cep',$cep);
        $this->view->assign('lat',$lat);
        $this->view->assign('lon',$lon);
        $this->view->assign('numero',$numero);
        $this->view->assign('rua',$rua);
        $this->view->assign('uf',$uf);

        $this->view->assign('apikey',$this->gkey);
        $this->view->assign('template',"admin/step_3.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function paroquiacadastro3Action() {

        $pais    = $this->_request->getPost('pais');
        $bairro  = $this->_request->getPost('bairro');
        $cidade  = $this->_request->getPost('cidade');
        $cep     = $this->_request->getPost('cep');
        $logr    = $this->_request->getPost('logr');
        $numero  = $this->_request->getPost('numero');
        $tipo    = $this->_request->getPost('tipo');
        $rua     = $this->_request->getPost('rua');
        $uf      = $this->_request->getPost('uf');
        $lat2     = $this->_request->getPost('lat2');
        $lon2     = $this->_request->getPost('lon2');
        $lat     = $this->_request->getPost('lat');
        $lon     = $this->_request->getPost('lng');


        if($lat == 0){

            $lat = $lat2;
            $lon = $lon2;

        }


         $di    =  new Diocese();
         $dados =  $di->ArrayIdDioceseUf($uf);


        $this->view->assign('bairro',$bairro);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('pais',$pais);
        $this->view->assign('cep',$cep);
        $this->view->assign('diocese',$dados);
        $this->view->assign('lat',$lat);
        $this->view->assign('lon',$lon);
        $this->view->assign('numero',$numero);
        $this->view->assign('rua',$rua);
        $this->view->assign('uf',$uf);
        $this->view->assign('tipo_id',array(2,1));
        $this->view->assign('tipo',array("Capela","Paroquia"));
        $this->view->assign('tipo_c',1);

        $this->view->assign('template',"admin/step_4.tpl");
        $this->view->display('admin/admin.tpl');

    }


    public function paroquiacadastro4Action() {


        $this->view->assign('bairro',$this->_request->getPost('bairro'));
        $this->view->assign('cidade',$this->_request->getPost('cidade'));
        $this->view->assign('cep',$this->_request->getPost('cep'));
        $this->view->assign('diocese',$this->_request->getPost('diocese'));
        $this->view->assign('lat',$this->_request->getPost('lat'));
        $this->view->assign('lon',$this->_request->getPost('lon'));
       // $this->view->assign('nome',$this->_request->getPost('nome'));
        $this->view->assign('numero',$this->_request->getPost('numero'));
        //$this->view->assign('paroco',$this->_request->getPost('paroco'));
        $this->view->assign('pais',$this->_request->getPost('pais'));
        $this->view->assign('rua',$this->_request->getPost('rua'));
        $this->view->assign('tipo',$this->_request->getPost('tipo'));
        $this->view->assign('uf',$this->_request->getPost('uf'));

        if($this->_request->getPost('tipo') == 1){
            $this->view->assign('template',"admin/step_5_1.tpl");
        }else{
            $this->view->assign('template',"admin/step_5_2.tpl");
        }
        $this->view->display('admin/admin.tpl');

    }



    public function paroquiainserirAction() {

        $paroquias = new Paroquias;

        $data    = date("Y-m-d");

        $dado = array(

            'di_id'=>$this->_request->getPost('diocese'),
            'us_id'=>$this->controler->id(),
            'pa_nome'=>$this->_request->getPost('nome'),
            'pa_descricao'=>$this->_request->getPost('descricao'),
            'pa_paroco'=>$this->_request->getPost('paroco'),
            'pa_tel'=>$this->_request->getPost('tel'),
            'pa_site'=>$this->_request->getPost('site'),
            'pa_email'=>$this->_request->getPost('email'),
            'pa_tipo'=>$this->_request->getPost('tipo'),
            'pa_estado'=>$this->_request->getPost('uf'),
            'pa_cidade'=>$this->_request->getPost('cidade'),
            'pa_pais'=>$this->_request->getPost('pais'),
            'pa_bairro'=>$this->_request->getPost('bairro'),
            'pa_rua'=>$this->_request->getPost('rua'),
            'pa_numero'=>$this->_request->getPost('numero'),
            'pa_cep'=>$this->_request->getPost('cep'),
            'pa_latitude'=>$this->_request->getPost('lat'),
            'pa_longitude'=>$this->_request->getPost('lon'),
            'pa_cadastro'=>$data
        );


        $id = $paroquias->insert($dado);

        $local       = $_FILES["imagem"]["tmp_name"];
        $imagem      = $id.".jpg";
        $destino     = "./public/img/paroquias/".$imagem;
        $destinoFTP  = "paroquias/".$imagem;

        $imagem2     = $id."i.jpg";
        $destino2    = "./public/img/paroquias/".$imagem2;
        $destinoFTP2 = "paroquias/".$imagem2;
        $path        = "./public/img/paroquias/";

        $img =  new Imagem();
        $img->upload($local,$destino);
        $img->iphone($path, $imagem);
        $img->redimencionar($destino, "100","100");

        $ftp = new Ftp();
        $ftp->upload($destinoFTP,$destino);
        $ftp->upload($destinoFTP2,$destino2);

        //$img->dell($destino);
        //$img->dell($destino2);

        $url =  $this->urlbase."admin/paroquia";
        $this->_redirect($url);

    }

     public function paroquiadeletarAction() {

        $paroquias = new Paroquias;
        $usuario =  new Usuarios();

        $id = $this->_request->getParam('id');
        $us = $this->controler->id();
        $url =  $this->urlbase."admin/paroquia";

        if($usuario->Master($us)){

            $dados = $paroquias->ListarId($id);
            $us = $dados['us_id'];
            $url =  $urlbase."master/paroquias";
        }

        $paroquias->delete('pa_id = '.$id.' and us_id = '.$us);

        //$url =  $urlbase."admin/paroquia";
        $this->_redirect($url);


    }

}


?>