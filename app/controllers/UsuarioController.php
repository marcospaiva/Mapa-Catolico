<?php
class UsuarioController extends Zend_Controller_Action {

    public $view;
    public $gkey;
    public $controler;
    public $urlbase;

    public function init() {
        $this->view = Zend_Registry::get("view");
        $this->gkey = Zend_Registry::get("gkey");
        $this->controler = Zend_Registry::get("controler");
        $this->urlbase = Zend_Registry::get("urlbase");

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
            
            $this->view->assign('cep',$this->_request->getPost('cep1'));
            $this->view->assign('email1',$this->_request->getPost('email1'));
            $this->view->assign('nome',$this->_request->getPost('nome'));
            $this->view->assign('sexo_id',array(1,2));
            $this->view->assign('sexo',array("Masculino","Feminino"));
            $this->view->assign('sexo_c', $this->_request->getPost('sexo'));
            $this->view->assign('mensagem',"Digite a mesma senha no dois campos!");

            $this->view->assign('template',"default/new_account.tpl");
            $this->view->display('default/common_main.tpl');

            break;
        }
   

        $usuarios = new Usuarios;

        $c   = new Cep();
        $res = $c->ObterEstado($this->_request->getPost('cep'));
        $uf  = $res['uf'];

        if(!$uf){
            
            $uf      = "";
            $cidade  = "";
            $bairro  = "";
            $rua     = "";
            
        }else{
            
            $end = $c->ObterEndereco($this->_request->getPost('cep'), $uf);


            $cidade  = "";
            $bairro  = "";
            $rua     = "";  

            foreach ($end as $z) {
                $cidade  = $z['cidade'];
                $bairro  = $z['bairro'];
                $rua     = $z['tp_logradouro']." ".$z['logradouro'];
            }


        }
        



        $data    = date("Y-m-d");


        $dado = array(
            'us_nome'=>$this->_request->getPost('nome'),            
            'us_email'=>$this->_request->getPost('email1'),
            'us_senha'=>md5($this->_request->getPost('password')),
            'us_sexo'=>$this->_request->getPost('sexo'),
            'us_estado'=>$uf,
            'us_cidade'=>$cidade,
            'us_bairro'=>$bairro,
            'us_rua'=>$rua,
            'us_cep'=>$this->_request->getPost('cep'),
            'us_log'=>$data,
            'us_cadastro'=>$data
        );


        $id = $usuarios->insert($dado);

        //$inc = new Inc();
		$url = $this->urlbase.'usuario/confirmacao/cod/'.base64_encode($id).'/';
				//envia email de confirmacao

		new Mail('c',
			     array(
                                    array('nome'=>$this->_request->getPost('nome'),
                                           'url'=>$url,
                                           'login'=>$this->_request->getPost('email1'),
                                           'senha'=>$this->_request->getPost('password')
                                          )
                                    )
                             ,
                                    array(
                                          array('email'=>$this->_request->getPost('email1'),
                                                'nome'=>$this->_request->getPost('nome')
                                                )
                                         )
                          );

			//$this->_redirect('index.php');
        $this->view->assign('tipo',"cadastro");
        $this->view->assign('redirect',"index.php");
        $this->view->assign('template',"default/menssagem.tpl");
        $this->view->display('default/common_main.tpl');

    }

    public function verificaemailAction()
	{

		$retorno = false;

                

		try
		{

			Zend_loader::loadClass("Zend_Json");
			$this->_helper->viewRenderer->setNoRender();

			$request = $this->getRequest();
			//pegando variavel via get
			$email = $request->getParam('email');			

			$usuario = new Usuarios();
			//verificando a existencia do login

			$existe = $usuario->ConsultaEmail($email);
			


                        if(count($existe) != NULL)
                        {
                                $retorno = true;

                        }else{
                                $retorno = false;
                        }


		}
		catch (Exception $e)
		{
			// faz nada
		}

		$objJson = Zend_Json::encode($retorno);
		// coloca na camada de visao
		$this->_response->appendBody($objJson);

		return ;


	}

 
    public function confirmacaoAction(){

        $id = base64_decode($this->_request->getParam('cod'));
	$ativar = array('us_ativo'=>1);
	$usuario = new Usuarios();
	$usuario->update($ativar,'us_id = '.$id);
        
	$this->_redirect('index.php');

    }

    public function recuperarAction() {


        $this->view->assign('template',"default/recuperarsenha.tpl");
        $this->view->display('default/common_main.tpl');
    }

    public function recuperarsenhaAction(){

        $CaracteresAceitos = 'abcdefghijklmnopqrstuvxywzABCDEFGHIJKLMNOPQRSTUVXYWZ0123456789';
        $max = strlen($CaracteresAceitos)-1;
	$novasenha = '';
	for($i=0; $i < 8; $i++) {
		$novasenha .= $CaracteresAceitos{mt_rand(0, $max)};
	}

				$dados = array('us_senha'=>md5($novasenha));

				$usuario = new Usuarios();
				$usuario->update($dados,'us_email = "'.$this->_request->getPost('email').'"');

				new Mail(
					'e',
					array('senha'=>$novasenha),
					array(array('email'=>$this->_request->getPost('email'),'nome'=>'')));


	$this->view->assign('tipo',"recuperar");
        $this->view->assign('redirect',"index.php");
        $this->view->assign('template',"default/menssagem.tpl");
        $this->view->display('default/common_main.tpl');

    }





}
?>
