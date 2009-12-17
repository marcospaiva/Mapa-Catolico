<?php

require_once './app/models/gMaps.php';

class EnderecoController extends Zend_Controller_Action
{

    public $view;
    public $gkey;
    public function init()
    {

        $this->view = Zend_Registry::get("view");
        $this->gkey = Zend_Registry::get("gkey");

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
        $this->view->assign('tipo', $tipo);

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
        $gmaps    = new gMaps($this->gkey);
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
        $gmaps    = new gMaps($this->gkey);
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

        if($tipo == 1){
        $this->view->display('cadastroparoquias3.tpl');
        }else{
        $this->view->display('cadastrousuarios3.tpl');    
        }

    }



}
?>
