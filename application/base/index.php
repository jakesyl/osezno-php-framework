<?php
/**
 * Vista inicial.
 *
 * @author Jos� Ignacio Guti�rrez Guzm�n <jose.gutierrez@osezno-framework.org>
 * @link http://www.osezno-framework.org/
 * @copyright Copyright &copy; 2007-2011 Osezno PHP Framework
 * @license http://www.osezno-framework.org/license.txt
 */
 include 'handlerEvent.php';

 
 /**
  * Asignar contenidos a areas de la plantilla
  */ 
 $objOsezno->assign('name','');
 
 $objOsezno->assign('desc','');
 
 $objOsezno->assign('main_area','');
 
 $objOsezno->assign('alt_area','');
 
  
 /**
  * Mostrar la plantilla
  */
 $objOsezno->call_template('osezno/osezno.tpl');
 
?>