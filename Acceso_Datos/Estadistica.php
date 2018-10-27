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

    public function Listar_Estadisticas_Mes($id)
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM proyect9_sig.estadistica_mensual WHERE id_evento=$id ORDER BY MES_NUM ASC";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Listar_Estadisticas_Anual($id)
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT AÑO as ano, TOTAL as total FROM proyect9_sig.estadistica_anual WHERE id_evento=$id";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

    public function Listar_Estadisticas_Diaria($id)
    {

        $bd       = new Conecar_bd();
        $Conexion = $bd->Realizar_Conexion();

        // $Conexion ->exec(SET CHARACTER SET utf8);
        $Sql      = "SELECT * FROM proyect9_sig.estadistica_diaria WHERE id_evento=$id";
        $Consulta = $Conexion->prepare($Sql);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }

    }

}
