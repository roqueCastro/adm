<?php

try {

    require '../Acceso_Datos/Seguimiento.php';

    $seguimiento = new Seguimiento();

    $operacion = $_POST['Operacion'];

    if ($operacion == "") {

        $descrip = $_POST['descrip'];

        $resultado = $seguimiento->Registrar_Seguimiento($descrip);
        echo $resultado;
    }

    if ($operacion == "") {

        $resultado = $tipo_pregunta->Listar_Tipo_Preguntas();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
