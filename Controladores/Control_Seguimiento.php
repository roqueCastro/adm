<?php

try {

    require '../Acceso_Datos/Seguimiento.php';

    $seguimiento = new Seguimiento();

    $operacion = $_POST['Operacion'];

    if ($operacion == "Registrar_Seguimiento") {

        $id_evento   = $_POST['id_evento'];
        $descripcion = $_POST['descripcion'];

        $resultado = $seguimiento->Registrar_Seguimiento($id_evento, $descripcion);
        echo $resultado;
    }

    if ($operacion == "Listar_tabla_segui") {
        $id_evento = $_POST['id_evento'];

        $resultado = $seguimiento->Listar_Seguimiento($id_evento);
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
