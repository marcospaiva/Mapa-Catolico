<?php
/**
 * Smarty plugin
 * @package Smarty
 * @subpackage plugins
 */


/**
 * Smarty {substituir} function plugin
 *
 * Type:     function<br>
 * Name:     image<br>
 * Date:     May 21, 2010
 * Purpose:  automate mailto address link creation, and optionally
 *           encode them.<br>
 * Input:<br>
 *         - nome = nome da paroquia *
 *
 * Examples:
 * <pre>
 * {nome nome="teste"}
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
function smarty_function_substituir($params, &$smarty)
{

    $nome = strtolower($params['nome']);
    

    $nome = str_replace(" ", "-", $nome);

    return $nome;
}
?> 