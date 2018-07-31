<?php

try {

    require '../Acceso_Datos/Evento.php';

    $even      = new Evento();
    $operacion = $_POST['Operacion'];

    if ($operacion == "Registrar_Evento") {

        $latitud  = $_POST['latitud'];
        $longitud = $_POST['longitud'];
        $encuesta = $_POST['encuesta'];
        $usuario  = $_POST['usuario'];

        $resultado = $even->Registrar_Evento($latitud, $longitud, $encuesta, $usuario);
        echo $resultado;
    }

    if ($operacion == "Listar_Eventos") {

        $resultado = $even->Listar_Eventos();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
