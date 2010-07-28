<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty {iamge} function plugin
 *
 * Type:     function<br>
 * Name:     image<br>
 * Date:     May 21, 2010
 * Purpose:  automate mailto address link creation, and optionally
 *           encode them.<br>
 * Input:<br>
 *         - id = id da paroquia *
 *
 * Examples:
 * <pre>
 * {image id="1"}
 * </pre>
 *
 * @link http://smarty.php.net/manual/en/language.function.mailto.php {mailto}
 *          (Smarty online manual)
 * @version  1.2
 * @author   Monte Ohrt <monte at ohrt dot com>
 * @author   credits to Jason Sweat (added cc, bcc and subject functionality)
 * @param    array
 * @param    Smarty
 * @return   string
 */
function smarty_function_image($params, &$smarty)
{

    $id = $params['id'];
    
     $filename = "http://img.cancaonova.com/paroquias/paroquias/".$id.".jpg";

    if (!@fopen($filename,"r"))
    {$filename = "http://img.cancaonova.com/paroquias/paroquias/parish_thumb.jpg";}

    return $filename;
}
?> 