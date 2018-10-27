<?php

class Seguimiento
{
    private $conn;

    public function Listar_Seguimiento($id)
    {
        $Sql      = "SELECT * FROM proyect9_sig.seguimiento_table WHERE ID=$id";
        $Consulta = $this->conn->prepare($Sql);

        if ($Consulta->execute()) {
            $result = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($result);
        } else {
            echo 'No se ejecuto';
        }
    }

    public function Registrar_Seguimiento($id, $descrip)
    {

        try {

            $sql      = "INSERT INTO seguimiento (descripcion,evento)VALUES(?,?)";
            $consulta = $this->conn->prepare($sql);

            $consulta->bindParam(1, $descrip, PDO::PARAM_STR);
            $consulta->bindParam(2, $id, PDO::PARAM_INT);

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
