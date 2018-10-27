<?php
session_start();

class Usuario
{
    private $conn;

    public function Validar_Usuario($ema)
    {
        $Sql      = "SELECT * FROM proyect9_sig.usuario WHERE login=?";
        $Consulta = $this->conn->prepare($Sql);
        $Consulta->bindParam(1, $ema, PDO::PARAM_STR);

        if ($Consulta->execute()) {
            $results = $Consulta->fetchAll(PDO::FETCH_ASSOC);
            echo json_encode($results);

        } else {
            echo "NO se ejecuto";
        }
    }

    public function Cerrar_session()
    {
        session_destroy();
        echo 'true';

    }

    public function Iniciar_Sesion($cor, $con)
    {
        $Sql   = "SELECT * FROM proyect9_sig.usuario WHERE login=:cor";
        $resul = $this->conn->prepare($Sql);
        $resul->execute(array(':cor' => $cor));
        $c = $resul->rowCount();
        if ($c > 0) {
            $consul = $resul->fetch(PDO::FETCH_ASSOC);

            if ($consul['password'] == $con) {
                $_SESSION['id'] = $consul['id_usuario'];
                echo 'si';
            } else {
                echo 'Contraseña no existe.';
            }
        } else {
            echo 'Correo electronico no existe.';
        }
    }

    public function Registrar_Usuario($cor, $usu, $pas)
    {

        try {
            $rol      = "Administrador";
            $sql      = "INSERT INTO usuario (nombre,login,password,rol)VALUES(?,?,?,?)";
            $consulta = $this->conn->prepare($sql);

            $consulta->bindParam(1, $usu, PDO::PARAM_STR);
            $consulta->bindParam(2, $cor, PDO::PARAM_STR);
            $consulta->bindParam(3, $pas, PDO::PARAM_STR);
            $consulta->bindParam(4, $rol, PDO::PARAM_STR);

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
