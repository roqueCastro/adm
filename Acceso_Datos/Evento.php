<?php
/* Conectar a una base de datos de MySQL invocando al controlador */
session_start();
if (!isset($_SESSION['id'])) {
    header('Location:../Vistas/login.php');
}
require 'Conexion.php';

class Evento
{
    //Definición de Atributos

    public $Longitud;
    public $Latitud;
    public $usuario;
    public $encuesta;
    //Constructor

    public function Listar_Eventos()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM evento";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }
    public function Listar_Coordenadas()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM proyect9_sig.coordenadas where estado=1 and ADMIN=? ORDER BY id_evento DESC";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $_SESSION['id'], PDO::PARAM_INT);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }
    public function Listar_Coordenadas_Soluccion()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM proyect9_sig.coordenadas where estado=0 and ADMIN=?";
        $Consulta = $Conexion->prepare($Sql);
        $Consulta->bindParam(1, $_SESSION['id'], PDO::PARAM_INT);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Registrar_Evento($la, $lo, $en, $us)
    {

        $bd       = new Conecar_bd();
        $conexion = $bd->Realizar_Conexion();

        try {

            $sql      = "INSERT INTO evento (latitud,longitud,encuesta,usuario)VALUES(:lat,:long,:enc,:usu);";
            $consulta = $conexion->prepare($sql);

            $consulta->bindParam(':lat', $la);
            $consulta->bindParam(':long', $lo);
            $consulta->bindParam(':enc', $en);
            $consulta->bindParam(':usu', $us);

            if ($consulta->execute()) {
                echo "Se inserto";
            } else {
                echo "No se inserto";
            }

        } catch (Exception $e) {
            echo 'Falló la conexión: ' . $e->getMessage();
        }

    }

    public function Update_EventoID($id)
    {

        $bd       = new Conecar_bd();
        $conexion = $bd->Realizar_Conexion();

        try {

            $sql      = "UPDATE evento SET estado = 0 WHERE id_evento=$id";
            $consulta = $conexion->prepare($sql);

            if ($consulta->execute()) {
                echo "Se inserto";
            } else {
                echo "No se inserto";
            }

        } catch (Exception $e) {
            echo 'Falló la conexión: ' . $e->getMessage();
        }

    }
}
