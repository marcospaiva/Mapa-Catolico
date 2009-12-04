<?php


require_once "./app/models/Ceps.php";

class UsuarioController extends Zend_Controller_Action {

    public $view;

    public function init() {
        $this->view = Zend_Registry::get("view");

    }

    public function cadastroAction() {
        $this->view->display('cadastrousuario.tpl');
    }

    public function cadastro1Action() {

        $cep = $this->_request->getParam('cep');
        $c   = new Ceps();
        $res = $c->ObterEstado($cep);
        $uf  = $res['uf'];
        $end = $c->ObterEndereco($cep, $uf);


        $cidade  = "";
        $bairro  = "";
        $tp_logr = "";
        $logr    = "";

        foreach ($end as $z) {
            $cidade  = $z['cidade'];
            $bairro  = $z['bairro'];
            $tp_logr = $z['tp_logradouro'];
            $logr    = $z['logradouro'];
        }

        $this->view->assign('end',$end);
        $this->view->assign('uf',$uf);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('bairro',$bairro);
        $this->view->assign('tp_logr',$tp_logr);
        $this->view->assign('logr',$logr);
        $this->view->assign('cep',$cep);

        $this->view->display('cadastrousuario1.tpl');

    }



    public function cadastro2Action() {

        $cep     = $this->_request->getParam('cep');
        $uf      = $this->_request->getParam('uf');
        $cidade  = $this->_request->getParam('cidade');
        $bairro  = $this->_request->getParam('bairro');
        $tp_logr = $this->_request->getParam('tp_logr');
        $logr    = $this->_request->getParam('logr');
        $numero  = $this->_request->getParam('numero');

        $endereco = "$tp_logr $logr, $numero, $cidade, $uf";
        $gmaps    = new gMaps('ABQIAAAAtyifEzud_MG-24R0knqNRBT2yXp_ZAY8_ufC3CFXhHIE1NvwkxQ1p6q_H4y1AP7lpdRuEXBZPNtIAA');
        $cord     = $gmaps->geolocal($endereco);

        $lat = $cord['lat'];
        $lon = $cord['lon'];

        $this->view->assign('lat',$lat);
        $this->view->assign('lon',$lon);
        $this->view->assign('uf',$uf);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('bairro',$bairro);
        $this->view->assign('tp_logr',$tp_logr);
        $this->view->assign('logr',$logr);
        $this->view->assign('cep',$cep);

        $this->view->display('cadastrousuario2.tpl');
    }


    public function cadastro3Action() {

        $cep     = $this->_request->getParam('cep');
        $uf      = $this->_request->getParam('uf');
        $cidade  = $this->_request->getParam('cidade');
        $bairro  = $this->_request->getParam('bairro');
        $tp_logr = $this->_request->getParam('tp_logr');
        $logr    = $this->_request->getParam('logr');
        $numero  = $this->_request->getParam('numero');

        $endereco = "$tp_logr $logr, $numero, $cidade, $uf";
        $gmaps    = new gMaps('ABQIAAAAtyifEzud_MG-24R0knqNRBT2yXp_ZAY8_ufC3CFXhHIE1NvwkxQ1p6q_H4y1AP7lpdRuEXBZPNtIAA');
        $cord     = $gmaps->geolocal($endereco);

        $lat = $cord['lat'];
        $lon = $cord['lon'];

        $this->view->assign('lat',$lat);
        $this->view->assign('lon',$lon);
        $this->view->assign('uf',$uf);
        $this->view->assign('cidade',$cidade);
        $this->view->assign('bairro',$bairro);
        $this->view->assign('tp_logr',$tp_logr);
        $this->view->assign('logr',$logr);
        $this->view->assign('cep',$cep);

        $this->view->display('cadastrousuario3.tpl');
    }



    public function inserirAction() {

        $usuarios = new Usuarios;

        $dado = array(
            'us_nome'=>$this->_request->getParam('nome'),
            'di_id'=>$this->_request->getParam('diocese'),
            'us_email'=>$this->_request->getParam('email'),
            'us_senha'=>$this->_request->getParam('senha'),
            'us_sexo'=>$this->_request->getParam('sexo'),
            'us_telefone'=>$this->_request->getParam('telefone'),
            'us_celular'=>$this->_request->getParam('celuar'),
            'us_pais'=>$this->_request->getParam('pais'),
            'us_estado'=>$this->_request->getParam('estado'),
            'us_cidade'=>$this->_request->getParam('cidade'),
            'us_bairro'=>$this->_request->getParam('bairro'),
            'us_rua'=>$this->_request->getParam('rua'),
            'us_numero'=>$this->_request->getParam('numero'),
            'us_cep'=>$this->_request->getParam('cep'),
            'us_latitude'=>$this->_request->getParam('latitude'),
            'us_longitude'=>$this->_request->getParam('longitude'),
            'us_log'=>$this->_request->getParam('log')
        );


        $id = $usuarios->insert($dado);

        $this->view->assign('teste',$id);
        $this->view->display('cadastrousuario.tpl');

    }


}
?>
