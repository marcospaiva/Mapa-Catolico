<?php
/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Ftp
 *
 * @author rafael
 */
class Ftp {



    public function upload($destino, $origem) {

        $conn_id = ftp_connect("img.cancaonova.com","21");
        $login   = ftp_login($conn_id,"paroquias","7Ryqho8W");

        $upload  = ftp_put($conn_id, ftp_pwd($conn_id).$destino, $origem, FTP_BINARY);
        
        ftp_close($conn_id);

        if (!$upload) {
            return false;
        }
            return true;

        
    }
}
?>
