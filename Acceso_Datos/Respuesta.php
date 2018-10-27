<?php
/* Conectar a una base de datos de MySQL invocando al controlador */

include_once 'Conexion.php';

class Respuesta
{
    //Definición de Atributos

    public $Nombre;
    public $Estado;
    public $Pregunta;
    public $tipoDato;
    //Constructor

    public function Listar_Respuestas_ID($ID)
    {
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        $Sql      = "SELECT * FROM respuesta WHERE pregunta=?";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $ID, PDO::PARAM_INT);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Registrar_Respuesta($nom, $esta, $pre, $tipoDato)
    {
        // echo "nombre: " . $nom . ", Estado: " . $esta . ", tipoDato: " . $tipoDato . ", pregunta: " . $pre;
        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        try {

            $consulta = $Conexion->prepare("INSERT INTO proyect9_sig.respuesta (nomb_rpta, estado_rpta, pregunta, tipo_dato)VALUES(?,?,?,?)");

            $consulta->bindParam(1, $nom, PDO::PARAM_STR);
            $consulta->bindParam(2, $esta, PDO::PARAM_INT);
            $consulta->bindParam(3, $pre, PDO::PARAM_INT);
            $consulta->bindParam(4, $tipoDato, PDO::PARAM_STR);

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
