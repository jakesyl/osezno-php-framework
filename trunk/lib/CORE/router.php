<?php

	class CORE_router {
		
		public static function router ($app, $module, $event, $params){
			
			$path = APP_PATH.$app.DIRECTORY_SEPARATOR.$module.DIRECTORY_SEPARATOR.'index.php';
			
			if (file_exists($path)){
				
				include $path;

				if (class_exists('eventos')){
				
					$eventos = new eventos;
					
					if (method_exists($eventos, $event)){
					
						$reflectionMethod = new ReflectionMethod('eventos', $event);
						
						$reflectionMethod->invokeArgs($eventos, $params);
					
					}else{
						
						$msgError = '<div class="error"><b>'.ERROR_LABEL.':</b>&nbsp;'.ROUTER_METHOD_NOT_FOUND.'&nbsp;&quot;'.$event.'&quot;</div>';
							
						die ($msgError);
					}
					
				}else{
					
					$msgError = '<div class="error"><b>'.ERROR_LABEL.':</b>&nbsp;'.ROUTER_CLASS_NOT_FOUND.'&nbsp;&quot;'.'eventos'.'&quot;</div>';
					
					die ($msgError);
						
				}
				
			}else{
				
				# Error de path no encontrada
				header('HTTP/1.0 404 Not Found');
			}
			
		}
		
	}

?>