<?php
/* Conectar a una base de datos de MySQL invocando al controlador */

include_once 'Conexion.php';

class Pregunta
{
    //Definición de Atributos

    public $Nombre;
    public $Estado;
    public $Tipo_Pregunta;
    public $Encuesta;
    //Constructor

    public function Listar_Preguntas()
    {
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        $Sql      = "SELECT * FROM pregunta WHERE encuesta2=1";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }
    public function Listar_PreguntasID($id)
    {
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();
        $encuesta = "1";

        $Sql      = "SELECT * FROM pregunta WHERE encuesta2=? and id_pgta=?";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $encuesta, PDO::PARAM_INT);
        $Consulta->bindParam(2, $id, PDO::PARAM_INT);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }
    public function EliminarID($id)
    {
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();
        $encuesta = "1";

        $Sql      = "UPDATE pregunta SET estado_pgta=2 WHERE encuesta2=? and id_pgta=?";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $encuesta, PDO::PARAM_INT);
        $Consulta->bindParam(2, $id, PDO::PARAM_INT);

        if ($Consulta->execute()) {
            echo "Eliminacion exitosa.";

        } else {
            echo "NO se ejecuto Eliminacion";
        }

    }

    public function Registrar_Preguntas($nom, $esta, $ti_Pre, $encues)
    {
        /*echo "nombre: " . $nom . ", Estado: " . $esta . ", tipo_pre: " . $ti_Pre . ", encuesta: " . $encues;*/
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        try {

            $consulta = $Conexion->prepare("INSERT INTO bomberos.pregunta (nomb_pgta, estado_pgta, tipo_pregunta, encuesta2)VALUES(?,?,?,?)");

            $consulta->bindParam(1, $nom, PDO::PARAM_STR);
            $consulta->bindParam(2, $esta, PDO::PARAM_STR);
            $consulta->bindParam(3, $ti_Pre, PDO::PARAM_INT);
            $consulta->bindParam(4, $encues, PDO::PARAM_INT);

            if ($consulta->execute()) {
                echo "Registro exitosamente.";
            } else {
                echo "No se inserto";
            }

        } catch (Exception $e) {
            echo 'Falló la conexión: ' . $e->getMessage();
        }

    }
}
