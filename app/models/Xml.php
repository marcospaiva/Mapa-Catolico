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
class Xml {

    public function montar($dados) {


        $html = "<markers>";

        foreach ($dados as $array) {

            $html .= "<marker ";
            $html .= 'nome="'. $this->parseToXML(utf8_decode($array["pa_nome"])). '" ';
            $html .= 'tipo="'. $this->parseToXML($array["pa_tipo"]). '" ';
            $html .= 'lat="'. $this->parseToXML($array["pa_latitude"]). '" ';
            $html .= 'lng="'. $this->parseToXML($array["pa_longitude"]). '" ';
            $html .= " />";
        }
        $html .= "</markers>";

      
        return $html;
    }

    public function parseToXML($htmlStr) {
        
        $xmlStr = str_replace('<', '&lt;', $htmlStr);
        $xmlStr = str_replace('>', '&gt;', $xmlStr);
        $xmlStr = str_replace('"', '&quot;', $xmlStr);
        $xmlStr = str_replace("'", '&apos;', $xmlStr);
        $xmlStr = str_replace("&", '&amp;', $xmlStr);
       
        return $xmlStr;
    }

}

?>