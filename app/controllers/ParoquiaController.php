<?php
class ParoquiaController extends Zend_Controller_Action {

    public $view;
    public $controler;
    public $gkey;

    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->controler = Zend_Registry::get("controler");
        $this->gkey = Zend_Registry::get("gkey");

    }

    public function cadastroAction() {


        $this->view->assign('template',"admin/step_1.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function cadastro1Action() {

        $cep   = $this->_request->getParam('cep');       

        $c   = new Ceps();

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

    public function cadastro2Action(){
        
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
        $gmaps    = new gMaps($this->gkey);
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

    public function cadastro3Action() {

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


    public function cadastro4Action() {


        $this->view->assign('bairro',$this->_request->getPost('bairro'));
        $this->view->assign('cidade',$this->_request->getPost('cidade'));
        $this->view->assign('cep',$this->_request->getPost('cep'));
        $this->view->assign('diocese',$this->_request->getPost('diocese'));
        $this->view->assign('lat',$this->_request->getPost('lat'));
        $this->view->assign('lon',$this->_request->getPost('lon'));
        $this->view->assign('nome',$this->_request->getPost('nome'));
        $this->view->assign('numero',$this->_request->getPost('numero'));
        $this->view->assign('paroco',$this->_request->getPost('paroco'));
        $this->view->assign('pais',$this->_request->getPost('pais'));
        $this->view->assign('rua',$this->_request->getPost('rua'));
        $this->view->assign('tipo',$this->_request->getPost('tipo'));
        $this->view->assign('uf',$this->_request->getPost('uf'));

        $this->view->assign('template',"admin/step_5.tpl");
        $this->view->display('admin/admin.tpl');

    }
     


    public function inserirAction() {

        $paroquias = new Paroquias;



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
            'pa_longitude'=>$this->_request->getPost('lon')
        );


        $id = $paroquias->insert($dado);

        $local      = $_FILES["imagem"]["tmp_name"];
        $destino    = "./public/img/paroquias/".$id.".jpg";
        $destinoFTP = "paroquias/".$id.".jpg";


        $img =  new Imagem();
        $img->upload($local,$destino);
        $img->redimencionar($destino, "100","100");
        
        $ftp = new Ftp();
        $ftp->upload($destinoFTP,$destino);

        $img->dell($destino);

        $this->view->display('admin/admin.tpl');

    }


}
?>
