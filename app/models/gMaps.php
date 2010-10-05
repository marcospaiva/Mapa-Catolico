<?php
class gMaps {
// Host do GoogleMaps
    private $mapsHost = 'maps.google.com';
    // Sua Google Maps API Key

    //localhost
    public $mapsKey = "ABQIAAAAtyifEzud_MG-24R0knqNRBQVtU-WX29OsKs3KrfgQmedgUIyWRSkbCVG2CypusOhktQ3m11ZdMbtZw";

    //dev.cancaonova.com
    //public $mapsKey = 'ABQIAAAAtyifEzud_MG-24R0knqNRBTxsqdkMiF_0e71Rp8XAfJbcCwvMBSIVFejOQ8RatmDKbB6kPYNF7u1EA';


    function __construct($key = null) {

        if (!is_null($key)) {
            $this->mapsKey = $key;
        }
        
    }

    function carregaUrl($url) {
        if (function_exists('curl_init')) {
            $cURL = curl_init($url);
            curl_setopt($cURL, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($cURL, CURLOPT_FOLLOWLOCATION, true);
            $resultado = curl_exec($cURL);
            curl_close($cURL);
        } else {
            $resultado = file_get_contents($url);
        }

        if (!$resultado) {
            return false;
            trigger_error('Não foi possível carregar o endereço: <strong>' . $url . '</strong>');
        } else {
            return $resultado;
        }
    }

    function geoLocal($endereco) {

        $url = 'http://'. $this->mapsHost .'/maps/geo?output=csv&key='. $this->mapsKey .'&q='. urlencode($endereco);
        $dados = $this->carregaUrl($url);
        list($status, $zoom, $latitude, $longitude) = explode(',', $dados);
        if ($status != 200) {
            return false;
            trigger_error('Não foi possível carregar o endereço <strong>"'.$endereco.'"</strong>, código de resposta: ' . $status);
        }
        return array('lat' => $latitude, 'lon' => $longitude, 'zoom' => $zoom, 'endereco' => $endereco);

    }


    function buscacordenadas($endereco) {
        
        $gmaps = new gMaps('ABQIAAAAtyifEzud_MG-24R0knqNRBQVtU-WX29OsKs3KrfgQmedgUIyWRSkbCVG2CypusOhktQ3m11ZdMbtZw');

        $dados = $gmaps->geolocal($endereco);

        return $dados;
    }
}
?>