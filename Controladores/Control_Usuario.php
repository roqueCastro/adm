<?php

try {

    require '../Acceso_Datos/Usuario.php';

    $User = new Usuario();

    $operacion = $_POST['Operacion'];

    if ($operacion == "Registrar_Usu") {

        $cor  = $_POST['ema'];
        $usu  = $_POST['usu'];
        $pass = $_POST['pass'];

        $resultado = $User->Registrar_Usuario($cor, $usu, $pass);
        echo $resultado;
    }

    if ($operacion == "Validar_Usuario") {
        $cor       = $_POST['ema'];
        $resultado = $User->Validar_Usuario($cor);
        echo $resultado;
    }

    if ($operacion == "Iniciar_Sesion") {
        $cor       = $_POST['cor'];
        $con       = $_POST['con'];
        $resultado = $User->Iniciar_Sesion($cor, $con);
        echo $resultado;
    }
    if ($operacion == "Cerrar_session") {
        $resultado = $User->Cerrar_session();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
