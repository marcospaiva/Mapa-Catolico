<?php
class ParoquiaexibirController extends Zend_Controller_Action {

    public $view;
    public $controler;
    public $gkey;



    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->controler = Zend_Registry::get("controler");
        $this->gkey = Zend_Registry::get("gkey");

    }

    public function exibirAction() {

        $d = new Diocese();
        $p = new Paroquias();
        $t = new Denunciatipo();
        $u = new Usuarios();

        $diocese  = $this->_request->getUserParam("diocese");
        $paroquia = $this->_request->getUserParam("paroquia");


        if ($this->_request->getUserParam("diocese") > 0) {
            $id_di = $diocese;
            $diocese = $d->GetName($id_di);
            $bispo = $d->GetBispo($id_di);
        }else {
            $id_di = $d->GetId($diocese);
            $bispo = $d->GetBispo($id_di);
        }

        $result = $p->ListarExibir($paroquia,$id_di);

        if($result["pa_tipo"] == 1) {
            $tipo = "Paroquia";
        }else {
            $tipo = "Capela";
        }

        $usuario = $u->ListarDados($result["us_id"]);


        if($this->controler->id() > 0) {

            $denuncia = $t->Listar();
            $this->view->assign('denuncia', $denuncia);

        }



        //echo "id = $id_di || nome = ".$result["pa_nome"];
        $this->view->assign('apikey',$this->gkey);
        $this->view->assign('tipo', $tipo);
        $this->view->assign('usuario', $usuario["us_nome"]);
        $this->view->assign('email', $usuario["us_email"]);
        $this->view->assign('bispo', $bispo);
        $this->view->assign('diocese', $diocese);
        $this->view->assign('pa', $result);

        $this->view->assign('template',"default/parish.tpl");
        $this->view->display('default/common_main.tpl');

    }

    public function validarAction(){

          $lat1 = $this->controler->getLatitude();
          $lon1 = $this->controler->getLongitude();

          $lat2 = $this->_request->getUserParam("latitude");
          $lon2 = $this->_request->getUserParam("longitude");

         $v = new Validacao();

         $distancia = $v->calculoDistancia($lat1, $lon1, $lat2, $lon2);
         $pontuacao = $v->calculoPontuacao($distancia);


         $this->view->assign('a1', $lat1);
         $this->view->assign('a2', $lon1);
         $this->view->assign('a3', $lat2);
         $this->view->assign('a4', $lon2);
         $this->view->assign('a5', $distancia);
         $this->view->assign('a6', $pontuacao);
         $this->view->display('teste.tpl');


    }


}
?>
