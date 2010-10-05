<?php
class MasterController extends Zend_Controller_Action {

    public $view;
    public $controler;
    public $urlbase;

    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->controler = Zend_Registry::get("controler");
        $this->urlbase = Zend_Registry::get("urlbase");

         if(!$this->controler->logado()){

             $this->_redirect("index/logar");
         }
         if($this->controler->id() <> 1){

             $this->_redirect("index/logar");
         }

    }
     public function indexAction() {

        $this->view->assign('template',"admin/vazio.tpl");
        $this->view->display('admin/admin_master.tpl');
    }

    public function frasesAction() {

        $fr = new Frases();

        $lista =  $fr->Listar();
        
        $this->view->assign('frases',$lista);
        $this->view->assign('template',"admin/phrase.tpl");
        $this->view->display('admin/admin_master.tpl');
    }
    public function fraseeditarAction() {

        $fr = new Frases();

        $lista =  $fr->Listarid($this->_request->getParam('id'));

        $this->view->assign('frase',$lista);
        $this->view->assign('template',"admin/phraseedit.tpl");
        $this->view->display('admin/admin_master.tpl');
    }
     public function fraseupdateAction() {

        $fr     = new Frases();

        $dado = array(
            'fr_frase'=>$this->_request->getPost('frase'),
            'fr_autor'=>$this->_request->getPost('autor')
        );


        $cond = "fr_id = ".$this->_request->getPost('cod');
        $fr->update($dado,$cond);


        $url =  $this->urlbase.'master/frases';
        $this->_redirect($url);
    }


     public function frasesalvarAction() {

       $fr = new Frases();
       

       $dado = array(
            'fr_frase'=>$this->_request->getPost('frase'),
            'fr_autor'=>$this->_request->getPost('autor'),
            'fr_ativo'=>0

        );

        $fr->insert($dado);
        
        $url =  $this->urlbase.'master/frases';
        $this->_redirect($url);
    }

      public function frasestatusAction(){

        $fr =  new Frases();

        $dado = array('fr_ativo'=>$this->_request->getParam('status'));

        $cond = "fr_id =".$this->_request->getParam('id');
        $fr->update($dado, $cond);
        $url =  $this->urlbase.'master/frases';
        $this->_redirect($url); 

    }
     public function frasedeletAction() {


        $fr =  new Frases();

        $id = $this->_request->getParam('id');              

        $fr->delete('fr_id = '.$id);

        $url =  $urlbase."master/frases";
        $this->_redirect($url);
    }


    public function paroquiasAction() {
        
        $this->view->assign('retorno',"master/paroquia");
        $this->view->assign('template',"admin/master_search.tpl");
        $this->view->display('admin/admin_master.tpl');
    }

    public function paroquiaAction(){
        
        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        $p      =  new Paroquias();
        $result =  $p->ListarPalavras($this->_request->getParam('palavra'),'pa_nome ASC')->toArray();

        $total  =  count($result);
        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url',$this->urlbase.'master/paroquia/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        
        $this->view->assign('paroquias',$lista);
        $this->view->assign('template',"admin/master_parish.tpl");
        $this->view->display('admin/admin_master.tpl');

    }
    public function paroquiaeditarAction() {
        
        $par     = new Paroquias();
        $usuario = new Usuarios();


        $id  = $this->_request->getParam("id");
        $us  = $this->controler->id();

        $dado= $par->ListarId($id);
        $us  = $dado['us_id'];      
        
        $lista = $par->ListarEditar($us,$id);

        $di =  new Diocese();

        $dados =  $di->ArrayIdDiocese();

        $this->view->assign('diocese',$dados);

        $this->view->assign('tipo_id',array(2,1));
        $this->view->assign('tipo',array("Capela","Paroquia"));

        $this->view->assign('pa',$lista);
		
	$this->view->assign('template',"admin/edit_parish.tpl");
        $this->view->display('admin/admin_master.tpl');
    }


    public function usuariosAction() {

        $this->view->assign('retorno',"master/usuario");
        $this->view->assign('template',"admin/master_search.tpl");
        $this->view->display('admin/admin_master.tpl');
    }

    public function usuarioAction(){

        $pagina=1;
        if($this->_request->getParam('pagina')) {
            $pagina=$this->_request->getParam('pagina');
        }

        

        $u       =  new Usuarios();
        $result  =  $u->ListarPalavras($this->_request->getParam('palavra'),'us_nome ASC')->toArray();
        $total   =  count($result);
        $caminho = '/palavra/'.$this->_request->getParam('palavra').'/pagina/'.$this->_request->getParam('pagina');
        
        $this->view->assign('caminho',$caminho);
        $this->view->assign('palavra',$this->_request->getParam('palavra'));
        $this->view->assign('total',$total);
        $this->view->assign('dados',Paginacao::paginar($result,$pagina));
        $this->view->assign('url', $this->urlbase.'master/usuario/palavra/'.$this->_request->getParam('palavra').'/pagina/');
        $this->view->assign('template',"admin/master_user.tpl");
        $this->view->display('admin/admin_master.tpl');

    }
    public function usuarioeditarAction() {

        $this->view->assign('sexo_id',array(1,2));
        $this->view->assign('sexo',array("Masculino","Feminino"));
        //$this->view->assign('sexo_c',2);
        $this->view->assign('mensagem',"Todos os campos sao obrigatorios!");

        $usuario = new Usuarios();

        $us = $usuario->ListarDados($this->_request->getParam('id'));
        $this->view->assign('usuario', $us);
        $this->view->assign('template',"admin/master_edit_account.tpl");
        $this->view->display('admin/admin_master.tpl');
    }

    public function usuariostatusAction(){

        $usr =  new Usuarios();

          $dado = array('us_ativo'=>$this->_request->getParam('status'));

        $cond = "us_id =".$this->_request->getParam('id');
        $usr->update($dado, $cond);
        $url =  $this->urlbase.'master/usuario/palavra/'.$this->_request->getParam('palavra').'/pagina/'.$this->_request->getParam('pagina').'/';
        $this->_redirect($url);
      
    }

    public function usuarioupdateAction() {


        $usr = new Usuarios;

        $url =  $this->urlbase."master/usuario/palavra/".$this->_request->getPost('nome');
        $id  =  $this->_request->getPost('id');

        $usuario = $usr->ListarDados($id);

        $data    = date("Y-m-d");

        if(($this->_request->getPost('password1') == $this->_request->getPost('password2')) && strlen($this->_request->getPost('password1')) > 0){
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




}
?>