<?php
class AdminController extends Zend_Controller_Action {

    public $view;
    public $controler;
    
    public function init() {

        $this->view = Zend_Registry::get("view");
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

        $this->view->assign('paroquias',$lista);
        $this->view->assign('template',"admin/edit.tpl");
        $this->view->display('admin/admin.tpl');

    }

    public function usuarioAction() {

     

        $usr = new Usuarios();
        $lista  = $usr->ListarDados($this->controler->id());

        $di    =  new Diocese();
        $dados =  $di->ArrayIdDiocese();

        $this->view->assign('diocese',$dados);
        $this->view->assign('sexo_id',array(1,2));
        $this->view->assign('sexo',array("Masculino","Feminino"));
        $this->view->assign('usuario',$lista);
        $this->view->display('admin/edit_account.tpl');
	
		
    }

    public function paroquiaeditarAction() {

        $par = new Paroquias();        
        $id  = $this->_request->getParam("id");

        $lista = $par->ListarEditar($this->controler->id(),$id);

        $di =  new Diocese();

        $dados =  $di->ArrayIdDiocese();

        $this->view->assign('diocese',$dados);

        $this->view->assign('tipo_id',array(2,1));
        $this->view->assign('tipo',array("Capela","Paroquia"));

        $this->view->assign('pa',$lista);
        $this->view->display('adminparoquiaseditar.tpl');

    }

    public function usuarioupdateAction() {

    
        $usr = new Usuarios;

        $data    = date("Y-m-d");

        $dado = array(
            'us_nome'=>$this->_request->getPost('nome'),
            'di_id'=>$this->_request->getPost('diocese'),
            'us_email'=>$this->_request->getPost('email'),
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

        $usr->update($dado, $this->controler->id());
        $this->_redirect("admin");

    }

    public function paroquiaupdateAction() {

        $par = new Paroquias();        

        $dado = array(

            'di_id'=>$this->_request->getPost('diocese'),
            'pa_nome'=>$this->_request->getPost('nome'),
            'pa_descricao'=>$this->_request->getPost('descricao'),
            'pa_paroco'=>$this->_request->getPost('paroco'),
            'pa_tel'=>$this->_request->getPost('tel'),
            'pa_tel_cod'=>$this->_request->getPost('tel_cod'),
            'pa_site'=>$this->_request->getPost('site'),
            'pa_email'=>$this->_request->getPost('email'),
            'pa_tipo'=>$this->_request->getPost('tipo'),
            'pa_estado'=>$this->_request->getPost('uf'),
            'pa_cidade'=>$this->_request->getPost('cidade'),
            'pa_pais'=>"Brasil",
            'pa_bairro'=>$this->_request->getPost('bairro'),
            'pa_rua'=>$this->_request->getPost('rua'),
            'pa_numero'=>$this->_request->getPost('numero'),
            'pa_cep'=>$this->_request->getPost('cep'),
            'pa_latitude'=>$this->_request->getPost('lat'),
            'pa_longitude'=>$this->_request->getPost('lon')
        );

        $id = "pa_id = ".$this->_request->getPost('id');
        $par->update($dado,$id);

        $this->_redirect("admin");
    }

}


?>