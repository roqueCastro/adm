<?php
/* Conectar a una base de datos de MySQL invocando al controlador */

include_once 'Conexion.php';

$bd       = new Conecar_bd();
$Conexion = $bd->Realizar_Conexion();

$Sql      = "SELECT * FROM pregunta";
$Consulta = $Conexion->prepare($Sql);

if ($Consulta->execute()) {
    $results      = $Consulta->fetchAll(PDO::FETCH_ASSOC);
    $json['data'] = $results;
    echo json_encode($json);

} else {
    $resulta['id_pgta']     = 'no registra';
    $resulta['nomb_pgta']   = 'No Registra';
    $resulta['estado_pgta'] = 'No Registra';

    $json['data'] = $resulta;
    echo json_encode($json);
}
