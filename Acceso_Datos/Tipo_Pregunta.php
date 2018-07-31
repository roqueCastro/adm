<?php

class Tipo_Pregunta
{
    private $conn;

    public function Listar_Tipo_Preguntas()
    {
        $Sql      = "SELECT * FROM bomberos.tipo_pregunta";
        $Consulta = $this->conn->prepare($Sql);

        if ($Consulta->execute()) {
            $result = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($result);
        } else {
            echo 'No se ejecuto';
        }
    }

    public function Registrar_Tipo_Pregunta($no_ti_pre)
    {

        try {

            $sql      = "INSERT INTO tipo_pregunta (nomb_tipo_pgta)VALUES(?)";
            $consulta = $this->conn->prepare($sql);

            $consulta->bindParam(1, $no_ti_pre, PDO::PARAM_STR);

            if ($consulta->execute()) {
                echo "Registro exitosamente.";
            } else {
                echo "No se inserto";
            }

        } catch (Exception $e) {
            echo 'Falló la conexión: ' . $e->getMessage();
        }
    }

    public function __construct()
    {
        require_once 'Conexion.php';
        $conn       = new Conecar_bd;
        $this->conn = $conn->Realizar_Conexion();
    }

}
