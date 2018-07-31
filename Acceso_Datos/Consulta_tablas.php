<?php

class ConsultaTablas
{
    private $conn;
    private $nombre_tabla;

    public function Listar_Tablas()
    {
        $Sql      = "SELECT id_pgta,  nomb_pgta, if(estado_pgta=1,'Activo','Inactivo') AS estado_pgta  FROM bomberos.pregunta";
        $Consulta = $this->conn->prepare($Sql);

        if ($Consulta->execute()) {
            $result['data'] = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($result);
        } else {
            echo 'No se ejecuto';
        }
    }
    public function Listar_Tablas_X($tabla)
    {
        $this->nombre_tabla = $tabla;

        if ($this->nombre_tabla == "pregunta") {
            $Sql      = "SELECT id_pgta,  nomb_pgta, if(estado_pgta=1,'Activo','Inactivo') AS estado_pgta  FROM bomberos.pregunta";
            $Consulta = $this->conn->prepare($Sql);

            if ($Consulta->execute()) {
                $result['data'] = $Consulta->fetchAll(PDO::FETCH_ASSOC);
                echo json_encode($result);
            } else {
                echo 'No se ejecuto';
            }
        }

        if ($this->nombre_tabla == "respuesta") {
            echo $this->nombre_tabla;
        }

        if ($this->nombre_tabla == "resultado") {
            echo 'nn Tabla r';
        }

        if ($this->nombre_tabla == "encuesta") {
            echo $this->nombre_tabla;
        }

        if ($this->nombre_tabla == "contacto") {
            echo $this->nombre_tabla;
        }

    }

    public function __construct()
    {
        require_once 'Conexion.php';
        $conn       = new Conecar_bd;
        $this->conn = $conn->Realizar_Conexion();
    }

}
