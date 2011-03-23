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

    public function upload($local, $destino) {

        move_uploaded_file($local, $destino);
    }

    public function redimencionar($destino, $largura, $altura) {

        $m2br = new M2br($destino);
        $valida = $m2br->valida();

        if ($valida == 'OK') {

            $m2br->redimensiona($largura, $altura, 'crop');
            $m2br->grava($destino);
        }
    }

    public function dell($destino) {

        unlink($destino);
    }

    
    function iphone($path, $imgName){

        $iPhoneImgWidth  = 319;
	$iPhoneImgHeight = 320;

	$sourceImage = imagecreatefromjpeg($path."/".$imgName);
	$sourceWidth  = imagesx($sourceImage);
	$sourceHeight = imagesy($sourceImage);

	$targetImage = imagecreatetruecolor($iPhoneImgWidth,$iPhoneImgHeight);

	imagecopyresized($targetImage,$sourceImage,0,0,0,0,$iPhoneImgWidth,$iPhoneImgHeight,imagesx($sourceImage),imagesy($sourceImage));

	if(strpos($imgName,'.jpg'))
		$newFile = $path."/".substr_replace($imgName,"i.jpg",strrpos($imgName,".jpg"));
	else
		$newFile = $path."/".substr_replace($imgName,"i.jpg",strrpos($imgName,".JPG"));

        imagejpeg($targetImage,$newFile);
	imagedestroy($targetImage);

    }

    function iPhoneImgProcess($path, $imgName) {
        
        $iPhoneImgWidth = 319;
        $iPhoneImgHeight = 320;

        $sourceImage = imagecreatefromjpeg($path . "/" . $imgName);
        $sourceWidth = imagesx($sourceImage);
        $sourceHeight = imagesy($sourceImage);

        $targetImage = imagecreatetruecolor($iPhoneImgWidth, $iPhoneImgHeight);

        imagecopyresized($targetImage, $sourceImage, 0, 0, 0, 0, $iPhoneImgWidth, $iPhoneImgHeight, imagesx($sourceImage), imagesy($sourceImage));

        if (strpos($imgName, '.jpg'))
            $newFile = $path . "/" . substr_replace($imgName, ".png", strrpos($imgName, ".jpg"));
        else
            $newFile = $path . "/" . substr_replace($imgName, ".png", strrpos($imgName, ".JPG"));

        imagepng($targetImage, $newFile);
        imagedestroy($targetImage);
        
    }

}
?>