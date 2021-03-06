<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
        <title>
            Upcube - Responsive Flat Admin Dashboard
        </title>
        <meta content="Admin Dashboard" name="description"/>
        <meta content="Themesdesign" name="author"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <!-- App Icons -->
        <link rel="shortcut icon" href="../assets/images/logo_sig/logo.png"/>
        <!-- App css -->
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrapper-page">
            <div style="background-color: #220505 " class="card">
                <div class="card-body">
                    <h3 class="text-center mt-0 m-b-15">
                        <a href="" class="logo logo-admin">
                            <img src="../assets/images/logo_sig/logo.png" height="30" alt="logo"/>
                        </a>
                    </h3>
                    <h4 class="text-muted text-center font-18">
                        <b style="color: #ffffff">
                            Registro
                        </b>
                    </h4>
                    <div class="p-3">
                        <form class="form-horizontal m-t-20" action="" method="POST">
                            <div class="form-group row">
                                <div class="col-12">
                                    <input id="email" class="form-control" type="email" required="" placeholder="Correo"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-12">
                                    <input  id="usuario" class="form-control" type="text" required="" placeholder="Usuario"/>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-12">
                                    <input id="pass"  class="form-control" type="password" required="" placeholder="Contraseña"/>
                                </div>
                            </div>

                            <div class="form-group text-center row m-t-20">
                                <div class="col-12">
                                    <button onclick="Validar_Usuario()" style="background-color:#CB4F24; border-color: #CB4F24 " class="btn btn-info btn-block waves-effect waves-light" type="button">
                                        Registrar
                                    </button>
                                </div>
                            </div>
                            <div class="form-group m-t-10 mb-0 row">
                                <div class="col-12 m-t-20 text-center">
                                    <a href="login.php" class="text-muted">
                                        Iniciar sesión
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- java script para el usuario -->
        <script type="text/javascript" src="../js/usuario.js"></script>
        <!-- jQuery  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/popper.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/modernizr.min.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>
    </body>
</html>
