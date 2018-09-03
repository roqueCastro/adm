<?php

try {

    require '../Acceso_Datos/Encuestas.php';

    $encuesta = new Encuestas();

    $operacion = $_POST['Operacion'];
    /* $operacion = 'Listar_Tipos_Encuestas';
     */
    if ($operacion == "Registrar_Encuesta") {

        $nomEncuesta = $_POST['nomEncuesta'];
        $estado      = $_POST['estado'];

        $resultado = $encuesta->Registrar_Encuesta($nomEncuesta, $estado);
        echo $resultado;
    }

    if ($operacion == "Listar_Tipos_Encuestas") {

        $resultado = $encuesta->Listar_Encuestas();
        echo $resultado;
    }

    if ($operacion == "Listar_Tipos_EncuestasID") {

        $resultado = $encuesta->Listar_EncuestasID($_POST['id']);
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
