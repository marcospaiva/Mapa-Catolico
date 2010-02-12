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

        /*
        if($result["pa_validacao"] < 5){

            $pontuacao = "30";

        }elseif($result["pa_validacao"] < 10){

            $pontuacao = "70";

        }elseif($result["pa_validacao"] < 15){

            $pontuacao = "100";
        }

*/
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

    public function validarAction() {

        $par = new Paroquias();
/*
        $lat1 = $this->controler->getLatitude();
        $lon1 = $this->controler->getLongitude();

        $lat2 = $this->_request->getUserParam("latitude");
        $lon2 = $this->_request->getUserParam("longitude");
 *
 */
        $id   = $this->_request->getUserParam('id');
        $pont = $this->_request->getUserParam('pontuacao')+1;
  /*
        $val  = new Validacao();

        $distancia = $val->calculoDistancia($lat1, $lon1, $lat2, $lon2);
        $pontuacao = $val->calculoPontuacao($distancia)+$pont;
*/
        $dado = array('pa_validacao'=>$pont);
        $id   = "pa_id = ".$id;

        $par->update($dado,$id);

       
        $this->_redirect($_SERVER['HTTP_REFERER']);

    }


}
?>
