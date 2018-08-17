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

    if ($operacion == "Update_EventoID") {

        $id = $_POST['id_evento'];

        $resultado = $even->Update_EventoID($id);
        echo $resultado;
    }

    if ($operacion == "Listar_Eventos") {

        $resultado = $even->Listar_Eventos();
        echo $resultado;
    }
    if ($operacion == "listar_coordenadas") {

        $resultado = $even->Listar_Coordenadas();
        echo $resultado;
    }

    if ($operacion == "listar_coordenadas_Solucionadas") {

        $resultado = $even->Listar_Coordenadas_Soluccion();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
