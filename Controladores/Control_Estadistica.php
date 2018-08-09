<?php

try {

    require '../Acceso_Datos/Estadistica.php';

    $estadi = new Estadistica();
    // $operacion = $_POST['Operacion'];
    $operacion = 'Listar_Estadisticas_Mes';

    if ($operacion == "Listar_Estadisticas_Mes") {
        $resultado = $estadi->Listar_Estadisticas_Mes();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
