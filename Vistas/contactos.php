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
    <script type="text/javascript">
        $('#rojo').hide();
        $('#verde').hide();
    </script>

</head>


<body>


    <div class="card m-b-30">
     <!--  ----------------------Mensaje de alertas--------------------------- -->
     <div class="alert alert-danger alert-dismissible fade show" id="rojo" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">
                &times;
            </span>
        </button>
        <strong id="error">
            Error..
        </strong>

    </div>
    <div id="verde" class="alert alert-success" role="alert">
        <strong id="correcto">Correcto</strong>
    </div>
    <!--  Mensaje de alertas -->
    <form class="" method="POST" action="">
        <div class="form-group">
            <label>Nombre empresa</label>
            <div>
                <input class="form-control" type="text" id="nombre_c"required >
            </div>
        </div>
        <div class="form-group">
            <label>Numero telefonico</label>
            <div>
                <input class="form-control" type="number" id="telefono_c"required >
            </div>
        </div>
        <div class="form-group">
            <label>Correo electronico</label>
            <div>
                <input class="form-control" type="email" id="correo_c"required >
            </div>
        </div>

        <div class="form-group">
            <div>
                <button type="button" onclick="Registrar_Encuesta()" class="btn btn-primary">
                    Enviar
                </button>
                <button type="button" onclick="javascript:Abrir_Form_Consulta_Preguntas()" class="btn btn-secondary waves-effect">
                    Consultar
                </button>

            </div>
        </div>
    </form>

</div>
</div>


<!-- jQuery  -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.min.js"></script>
<script src="assets/js/waves.js"></script>
<script src="assets/js/jquery.slimscroll.js"></script>
<script src="assets/js/jquery.nicescroll.js"></script>
<script src="assets/js/jquery.scrollTo.min.js"></script>

<!-- XEditable Plugin -->
<script src="assets/plugins/moment/moment.js"></script>
<script type="text/javascript" src="assets/plugins/x-editable/js/bootstrap-editable.min.js"></script>
<script type="text/javascript" src="assets/pages/xeditable.js"></script>

<!-- JS para codigo MVC -->
<script src="js/encuestas.js" type="text/javascript"></script>

<!-- App js -->
<script src="assets/js/app.js"></script>

<!-- Sweet-Alert  -->
<script src="assets/plugins/sweet-alert2/sweetalert2.js"></script>
<script src="assets/plugins/sweet-alert2/sweetalert2.min.js"></script>
</body>
</html>
