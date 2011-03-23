<?php

require_once 'Smarty/libs/Smarty.class.php';

Zend_Loader::loadClass("Zend_View_Abstract");

class ViewSmarty extends Zend_View_Abstract
{
    private $_smarty,$_path;

    public function __construct($data = array())
    {
        parent::__construct($data);

        $this->_smarty = new Smarty();

        $this->_smarty->debugging = false;
        $this->_smarty->force_compile = true;
        $this->_smarty->compile_check = true;
        $this->_smarty->caching = false;
        $this->_smarty->cache_lifetime = -1;
		
		$this->_path = getcwd();
		$this->_path = str_replace("\\", "/", $this->_path);
		$this->_path .= "/";
		$this->setTemplateDir();
		$this->setCompileDir();
	}

    /**
     * O método run é o único que precisa
     * ser implementado em qualquer
     * subclasse de Zend_View_Abstract.
     * É chamado automaticamente de
     * dentro do método render.
     * A implementação abaixo,
     * publicada por Ralf Eggert no
     * site da Zend, usa o método display
     * do Smarty para gerar e imprimir o
     * template.
     * @return void
     */
    protected function _run($template='index.tpl')
    {
        $this->_smarty->display($template);
    }
	
	/**
	 * Seta a diretorio template_dir
	 */
	public function setTemplateDir($dir='app/views/')
    {
        $this->_smarty->template_dir = $this->_path.$dir;
    }
	
	/**
	 * Seta a diretorio compile_dir
	 */
	public function setCompileDir($dir='app/views_c/')
    {
        $this->_smarty->compile_dir = $this->_path.$dir;
    }

    /**
     * O método assign do Smarty funciona
     * de maneira similar ao de Zend_View.
     * A grande diferença é que os valores
     * são associados para o objeto Smarty
     * e não para o array $this->_vars de
     * Zend_View_Abstract.
     * @return void
     */
    public function assign($spec,$value = NULL)
    {
        if (is_string($spec))
        {
            $this->_smarty->assign($spec, $value);
        }
        elseif (is_array($spec))
        {
            foreach ($spec as $key => $value)
            {
                $this->_smarty->assign($key, $value);
            }
        }
        else
        {
            throw new Zend_View_Exception('assign() expects a string or array, got '.gettype($var));
        }
    }

    /**
     * O método escape do Smarty
     * trabalha tanto para strings
     * quanto para arrays de valores
     * e também usa o método escape
     * de Zend_View_Abstract. A
     * vantagem disso é que você não
     * tem de tomar cuidado para cada
     * valor de um array ser tratado
     * apropriadamente.
     * @return string
     */
    public function escape($var)
    {
        if (is_string($var))
        {
            return parent::escape($var);
        }
        elseif (is_array($var))
        {
            foreach ($var as $key => $val)
            {
                $var[$key] = $this->escape($val);
            }

            return $var;
        }
        else
        {
            return $var;
        }
    }

    /**
     * @return void
     */
    public function display($name)
    {
        $this->_smarty->display($this->_smarty->template_dir.$name);
        exit;
    }

}
?>
