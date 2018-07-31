<?php

try {

    require '../Acceso_Datos/Respuesta.php';

    $respuesta = new Respuesta();

    $operacion = $_POST['Operacion'];
    // $operacion = 'Listar_Respuestas_ID';

    if ($operacion == "Registrar_Respuesta") {

        $pregunta  = $_POST['pregunta'];
        $tipo_dato = $_POST['tipo_dato'];
        $nomRes    = $_POST['nomRes'];
        $estado_re = $_POST['estado_re'];
        // echo "nombre: " . $nomRes . ", estado_re: " . $estado_re . ", pregunta: " . $pregunta . ", tipo_dato: " . $tipo_dato;

        $resultado = $respuesta->Registrar_Respuesta($nomRes, $estado_re, $pregunta, $tipo_dato);
        echo $resultado;
    }

    if ($operacion == "Listar_Respuestas_ID") {

        $id = $_POST['id_pregunta'];

        $resultado = $respuesta->Listar_Respuestas_ID($id);
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
