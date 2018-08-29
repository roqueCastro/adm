<?php
session_start();
if (!isset($_SESSION['id'])) {
    header('Location:../Vistas/login.php');
}
/* Conectar a una base de datos de MySQL invocando al controlador */

require 'Conexion.php';

class Encuestas
{
    //Definición de Atributos

    public $nombre_en;
    public $estado_en;

    //Constructor

    public function Listar_Encuestas()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM bomberos.encuesta WHERE usuario=?";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $_SESSION['id'], PDO::PARAM_INT);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Registrar_Encuesta($no_en, $esta_en)
    {

        $bd       = new Conecar_bd();
        $conexion = $bd->Realizar_Conexion();

        try {

            $sql      = "INSERT INTO encuesta (nomb_encta ,est_encta,usuario)VALUES(?,?,?)";
            $consulta = $conexion->prepare($sql);
            $consulta->bindParam(1, $no_en, PDO::PARAM_STR);
            $consulta->bindParam(2, $esta_en, PDO::PARAM_STR);
            $consulta->bindParam(3, $_SESSION['id'], PDO::PARAM_INT);

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
