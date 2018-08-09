<?php

try {

    require '../Acceso_Datos/Contacto.php';

    $contacto = new Contacto();

    $operacion = $_POST['Operacion'];

    if ($operacion == "Registrar_Con") {

        $n = $_POST['nom_c'];
        $t = $_POST['telefono_c'];
        $c = $_POST['correo_c'];

        $resultado = $contacto->Registrar_Contactos($n, $t, $c);
        echo $resultado;
    }

    if ($operacion == "Listar_Tipo_Pregunta") {

        $resultado = $tipo_pregunta->Listar_Tipo_Preguntas();
        echo $resultado;
    }

} catch (PDOException $e) {
    echo 'Falló la conexión: ' . $e->getMessage();
}
