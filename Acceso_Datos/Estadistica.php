<?php
/* Conectar a una base de datos de MySQL invocando al controlador */

require 'Conexion.php';

class Estadistica
{
    //Definición de Atributos

    public $Longitud;
    public $Latitud;
    public $usuario;
    public $encuesta;
    //Constructor

    public function Listar_Estadisticas_Mes()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM bomberos.estadistica_mensual ORDER BY MES_NUM ASC";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Listar_Estadisticas_Anual()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT AÑO as ano, TOTAL as total FROM bomberos.estadistica_anual";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Listar_Estadisticas_Diaria()
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM bomberos.estadistica_diaria";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

}
