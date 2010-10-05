<?php
class RelatorioController extends Zend_Controller_Action {

    public $view;
    public $controler;


    public function init() {

        $this->view = Zend_Registry::get("view");
        $this->controler = Zend_Registry::get("controler");


         if($this->controler->id() <> 2 && $this->controler->id() <> 1){

             $this->_redirect("index/logar");
         }
    }


    public function indexAction() {


        $di = $this->_request->getPost('Data_i_Day');
        $mi = $this->_request->getPost('Data_i_Month');
        $yi = $this->_request->getPost('Data_i_Year');

        $df = $this->_request->getPost('Data_f_Day');
        $mf = $this->_request->getPost('Data_f_Month');
        $yf = $this->_request->getPost('Data_f_Year');

        $datai = $yi."/".$mi."/".$di;
        $dataf = $yf."/".$mf."/".$df;

        $data_i = $di."/".$mi."/".$yi;
        $data_f = $df."/".$mf."/".$yf;

        $us   =  new Usuarios();
        $us_t = $us->Total($datai,$dataf)->current();
        $us_e = $us->TotalEstado($datai,$dataf);

        $pa = new Paroquias();
        $ca_t  = $pa->TotalCapela($datai,$dataf)->current();
        $pa_t  = $pa->TotalParoquia($datai,$dataf)->current();
        $ca_e  = $pa->TotalCapelaEstado($datai,$dataf);
        $pa_e  = $pa->TotalParoquiaEstado($datai,$dataf);


        $this->view->assign('datai', $datai);
        $this->view->assign('dataf', $dataf);
        $this->view->assign('totalusuario', $us_t['ust']);
        $this->view->assign('totalcapela', $ca_t['cat']);
        $this->view->assign('totalparoquia', $pa_t['pat']);
        $this->view->assign('usuario', $us_e);
        $this->view->assign('capela', $ca_e);
        $this->view->assign('paroquia', $pa_e);
        $this->view->assign('template',"admin/relatorio.tpl");
        $this->view->display('admin/admin_relatorio.tpl');
        

    }



    


}

