<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <title>Upcube - Responsive Flat Admin Dashboard</title>
    <meta content="Admin Dashboard" name="description" />
    <meta content="Themesdesign" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <!-- App Icons -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">

    <!-- X-editable css -->
    <link type="text/css" href="assets/plugins/x-editable/css/bootstrap-editable.css" rel="stylesheet">

    <!-- App css -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>

   <div id="accordion" role="tablist" aria-multiselectable="true">
    <div class="card">

 <?php
require '../bomberos.php';
$bomb         = new bomberos;
$coll['data'] = $bomb->obtenerInfoMarcador();
$coll         = json_encode($coll, true);

$result      = json_decode($coll, true);
$informacion = $result['data'];
$conta       = 0;
foreach ($informacion as $infor) {

    if ($conta == 0) {

        ?>
    <div class="card-header" role="tab" id="headingOne">
            <h5 class="mb-0 mt-0 font-16">
                <a data-toggle="collapse" data-parent="#accordion"
                href="#collapseOne" aria-expanded="true"
                aria-controls="collapseOne" class="text-dark">
                <?php echo $data = $infor['Evento']; ?>
                 </a>
            </h5>
        </div>

        <div id="collapseOne" class="collapse show" role="tabpanel"
        aria-labelledby="headingOne">
            <div class="card-body">
                <table id="datatable-buttons" class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <tr>
                        <td>EVENTO</td>
                        <td>RESULTADO</td>

                    </tr>

<?php
}

    echo '<tr>';
    echo '<td>' . $data = $infor['Encuesta'] . '</td>';
    echo '<td>' . $data = $infor['Resultado'] . '</td>';

    echo '</tr>';
    ?>



    <?php
$conta = $conta + 1;
}
?>

                </table>
            </div>
        </div>
    </div>
</div>
 <script type="text/javascript" src="js/marcador_datos.js"></script>
</body>
</html>
