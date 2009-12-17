<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Imagem
 *
 * @author rafael
 */
class Imagem {



    public function upload($local, $destino){
        
        move_uploaded_file($local, $destino);

    }

    public function redimencionar($destino, $largura, $altura){

        $m2br     = new M2br($destino);
        $valida  =  $m2br->valida();

        if($valida == 'OK') {

            $m2br->redimensiona($largura, $altura,'crop');
            $m2br->grava($destino);

        }
    }

    public function dell($destino){

        unlink($destino);
    }
    

   
}
?>
