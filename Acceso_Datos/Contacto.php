<?php

class Contacto
{
    private $conn;

    public function Registrar_Contactos($tel, $ema, $enc)
    {

        try {

            $sql      = "INSERT INTO contacto (nomb_contacto, encuesta1, telefono, email)VALUES(?,?,?,?)";
            $consulta = $this->conn->prepare($sql);

            $consulta->bindParam(1, $no_c, PDO::PARAM_STR);
            $consulta->bindParam(2, $enc, PDO::PARAM_INT);
            $consulta->bindParam(3, $tel, PDO::PARAM_STR);
            $consulta->bindParam(4, $ema, PDO::PARAM_STR);

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
