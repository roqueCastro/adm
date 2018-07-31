<?php

try {

    require '../Acceso_Datos/Consulta_tablas.php';

    $consulta_tabla = new ConsultaTablas();

    $operacion = $_POST['Operacion'];
    // $operacion = 'Listar_data';

    if ($operacion == "Listar_data") {

        $resultado = $consulta_tabla->Listar_Tablas();
        echo $resultado;
    }
    if ($operacion == "Listar_Cabeza") {
        $tabla     = $_POST['tabla'];
        $resultado = $consulta_tabla->Listar_Tablas_X($tabla);
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
