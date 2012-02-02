<?php
/**
 * Modelo del datos del Modulo.
 * - Acceso a datos de las bases de datos
 * - Retorna informacion que el Controlador muestra al usuario
 *
 * @author Jos� Ignacio Guti�rrez Guzm�n <jose.gutierrez@osezno-framework.org>
 * @link http://www.osezno-framework.org/
 * @copyright Copyright &copy; 2007-2011 Osezno PHP Framework
 * @license http://www.osezno-framework.org/license.txt
 */
 include '../../config/configApplication.php';
 
 class scaffolding_{name_table_scaff} {
 
 	public static function getFormStartUp_{name_table_scaff} (){
 	
 		$myForm = new OPF_myForm('FormStartUp_{name_table_scaff}');
 		
 		$myForm->addButton('btn_up',LABEL_BTN_ADD,'add.gif');
 		
 		$myForm->addEvent('btn_up', 'onclick', 'onClickAddRecord');
 		
 		return $myForm->getForm(1);
 	}
 	
 	public static function getFormAddMod{name_table_scaff}($id){
 	
 		$ess_master_tables_detail = new ess_master_tables_detail;
 	
 		$myForm = new OPF_myForm('FormAddMod{name_table_scaff}');
 		
 		${name_table_scaff} = new {name_table_scaff};
 		
 		if ($id)
 			${name_table_scaff}->find($id);
 		{form_reg_list_fields}
 		$myForm->addButton('btn_save',LABEL_BTN_SAVE,'save.gif');
 		
 		$myForm->addEvent('btn_save', 'onclick', 'onClickSave',$id);
 		
 		return $myForm->getForm(1);
 	}
 	
 	public function getList_{name_table_scaff} (){
 		
 		$sql = '{sql_list_scaff}';
 		
 		$myList = new OPF_myList('lst_{name_table_scaff}',$sql);
 		
 		$myList->width = '{width_list}';
 		{real_names_in_query}
 		$myList->setExportData({setexportdata});
 		
 		$myList->setPagination({setpagination});
 		
 		$myList->setUseOrderMethod({setuseordermethod});
 		
 		{eliminar}
 		{editar}
 		{eliminar_mul}
 		{width_fields}
 		return $myList->getList({getqueryform});
 	}
 
 }
 
 class {name_table_scaff} extends OPF_myActiveRecord {
{fields_table_scaff}
 }
 
 class ess_master_tables_detail extends OPF_myActiveRecord {
 	
 	public $id;
 	
 	public $master_tables_id;
 	
 	public $item_cod;
 	
 	public $item_desc;
 	
 	public $user_id;
 	
 	public $datetime;
 	
 }
 
?>