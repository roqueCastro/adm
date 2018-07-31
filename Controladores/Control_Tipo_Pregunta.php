<?php

try {

    require '../Acceso_Datos/Tipo_Pregunta.php';

    $tipo_pregunta = new Tipo_Pregunta();

    $operacion = $_POST['Operacion'];

    if ($operacion == "Registrar_Ti_Pr") {

        $nom_t_p = $_POST['nom_t_p'];

        $resultado = $tipo_pregunta->Registrar_Tipo_Pregunta($nom_t_p);
        echo $resultado;
    }

    if ($operacion == "Listar_Tipo_Pregunta") {

        $resultado = $tipo_pregunta->Listar_Tipo_Preguntas();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
