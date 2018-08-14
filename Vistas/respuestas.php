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
        $('#respuestasM').hide();
        $('#nombreRespuestaOpcion').hide();
        $('#multipleOpcion').hide();
        $('#btnEnviar').hide();
        $('#estadoOpcion').hide();
        $('#pregunta').hide();
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
            <label>Encuesta</label>
            <div class="form-group">
                <select id="encuesta" required class="form-control">

                </select>
            </div>
            <!--  <input type="text" class="form-control" required placeholder="Type something"/> -->
        </div>
         <div class="form-group">
            <label>Pregunta</label>
            <div class="form-group">
                <select id="pregunta" required class="form-control">

                </select>
            </div>
            <!--  <input type="text" class="form-control" required placeholder="Type something"/> -->
        </div>


        <div class="form-group" id="multipleOpcion">
            <label>Tipo de dato en respuesta</label>
            <div class="form-group">
                <select id="tipo_dato" required class="form-control">


                </select>
            </div>

        </div>

        <div class="form-group" id="nombreRespuestaOpcion">
            <label>Nombre de la respuesta</label>
            <div>
                <textarea id="nombre_respuesta" required class="form-control" rows="1"></textarea>
            </div>
        </div>

        <div class="form-group" id="estadoOpcion">
            <label>Estado de la respuesta</label>
            <div class="form-group">
                <select id="estado" required class="form-control">
                    <option value="1">Activo</option>
                    <option value="0">Inactivo</option>
                </select>
            </div>

        </div>
         <div class="form-group" id="respuestasM">
            <label>Respuestas existentes</label>
            <div>
                <textarea id="respuestas" readonly="readonly"   class="form-control" rows="3">
                </textarea>
            </div>
        </div>

        <div class="form-group">
            <div>
                <button id="btnEnviar" type="button" onclick="Registrar_Respuesta()" class="btn btn-primary">
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
<script src="js/respuestas.js" type="text/javascript"></script>

<!-- App js -->
<script src="assets/js/app.js"></script>

<!-- Sweet-Alert  -->
<script src="assets/plugins/sweet-alert2/sweetalert2.js"></script>
<script src="assets/plugins/sweet-alert2/sweetalert2.min.js"></script>
</body>
</html>
