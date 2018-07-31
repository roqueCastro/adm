<?php
/* Conectar a una base de datos de MySQL invocando al controlador */

  require('Conexion.php');



  class Evento{
  //Definición de Atributos

    public $Longitud;
    public $Latitud;
    public $usuario;
    public $encuesta;
    //Constructor

    public function Listar_Eventos(){
      
      $bd = new Conecar_bd();
     	$Conexion = $bd->Realizar_Conexion();
        
       // $Conexion ->exec(SET CHARACTER SET utf8);
      $Sql= "SELECT * FROM evento";
    	$Consulta = $Conexion->prepare($Sql);

       if( $Consulta -> execute()){  		
          $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
        	echo json_encode($results);

       } else {
    		 echo "NO se ejecuto";
       }

    }



    public function Registrar_Evento($la,$lo,$en,$us){
  
 			$bd = new Conecar_bd();
 			$conexion = $bd ->Realizar_Conexion();

 			try {

				$sql ="INSERT INTO evento (latitud,longitud,encuesta,usuario)VALUES(:lat,:long,:enc,:usu);";
				$consulta = $conexion->prepare($sql);

 				$consulta->bindParam(':lat',$la);
 				$consulta->bindParam(':long',$lo);
 				$consulta->bindParam(':enc',$en);
 				$consulta->bindParam(':usu',$us);	

        if($consulta -> execute()){
        	echo "Se inserto";
        }
        else{
          echo "No se inserto";
        }					
							
  		} catch (Exception $e) {
    		echo 'Falló la conexión: ' . $e->getMessage();
  		}  		  
      
    }
  }
?>