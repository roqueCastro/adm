<?php

try {

    require '../Acceso_Datos/Pregunta.php';

    $pregunta = new Pregunta();

    $operacion = $_POST['Operacion'];
    // $operacion = 'Listar_PreguntasID';

    if ($operacion == "Registrar_Pregunta") {

        $encuesta     = $_POST['encuesta'];
        $tipoPregunta = $_POST['tipoPregunta'];
        $nomPregunta  = $_POST['nomPregunta'];
        $estado_pre   = $_POST['estado_pre'];
        /* echo "nombre: " . $nomPregunta . ", Estado: " . $estado_pre . ", tipo_pre: " . $tipoPregunta . ", encuesta: " . $encuesta;*/

        $resultado = $pregunta->Registrar_Preguntas($nomPregunta, $estado_pre, $tipoPregunta, $encuesta);
        echo $resultado;
    }

    if ($operacion == "Listar_Preguntas") {

        $resultado = $pregunta->Listar_Preguntas();
        echo $resultado;
    }
    if ($operacion == "Listar_PreguntasID") {
        $idPre     = $_POST['id_pregunta'];
        $id_encues = $_POST['id_encues'];
        // $idPre = "63";

        $resultado = $pregunta->Listar_PreguntasID($idPre, $id_encues);
        echo $resultado;
    }
    if ($operacion == "Listar_PreguntasIdEncuesta") {
        $idEnc = $_POST['encuesta2'];
        // $idPre = "63";

        $resultado = $pregunta->Listar_PreguntasIDEnc($idEnc);
        echo $resultado;
    }
    if ($operacion == "EliminarID") {
        $idPre = $_POST['id'];
        // $idPre = "63";

        $resultado = $pregunta->EliminarID($idPre);
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
