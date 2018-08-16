<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui"/>
        <title>
            SIG MTEE
        </title>
        <meta content="Admin Dashboard" name="description"/>
        <meta content="Themesdesign" name="author"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <!-- App Icons -->
        <link rel="shortcut icon" href="assets/images/favicon.ico"/>
        <!--Morris Chart CSS -->
        <!-- <link rel="stylesheet" href="assets/plugins/morris/morris.css"/> -->
        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>

        <!-- DataTables -->
        <link href="assets/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
        <!-- Responsive datatable examples -->
        <link href="assets/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />

        <!-- Magnific popup -->
        <link href="assets/plugins/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

    </head>
    <body>
        <!-- Loader -->
     <!--    <div id="preloader">
            <div id="status">
                <div class="spinner">
                </div>
            </div>
        </div> -->
        <!-- Navigation Bar -->
        <header id="topnav">
            <div class="topbar-main">
                <div class="container-fluid">
                    <!-- Logo container-->
                    <div class="logo">
                        <!-- Text Logo -->
                        <!--<a href="index.html" class="logo">-->
                        <!--Upcube-->
                        <!--</a>-->
                        <!-- Image Logo -->
                        <a href="index.php" class="logo">
                            <img src="assets/images/logo_sig/logo.png" alt="" height="35" class="logo-small"/>
                            <img src="assets/images/logo_sig/logo.png" alt="" height="50" class="logo-large"/>
                        </a>
                    </div>
                    <!-- End Logo container-->
                    <div class="menu-extras topbar-custom">
                        <!-- Search input -->
                        <div class="search-wrap" id="search-wrap">
                            <div class="search-bar">
                                <input class="alert-warning" type="search" placeholder="Search"/>
                                <a href="#" class="close-search toggle-search" data-target="#search-wrap">
                                    <i class="mdi mdi-close-circle">
                                    </i>
                                </a>
                            </div>
                        </div>
                        <ul class="list-inline float-right mb-0">
                            <!-- Search -->
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link waves-effect toggle-search" href="#"  data-target="#search-wrap">
                                    <i class="mdi mdi-magnify noti-icon">
                                    </i>
                                </a>
                            </li>
                            <!-- Messages-->
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="mdi mdi-email-outline noti-icon">
                                    </i>
                                    <span class="badge badge-danger noti-icon-badge">
                                        3
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h5>
                                            <span class="badge badge-danger float-right">
                                                745
                                            </span>
                                            Messages
                                        </h5>
                                    </div>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="assets/images/users/avatar-2.jpg" alt="user-img" class="img-fluid rounded-circle"/>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                Charles M. Jones
                                            </b>
                                            <small class="text-muted">
                                                Dummy text of the printing and typesetting industry.
                                            </small>
                                        </p>
                                    </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="assets/images/users/avatar-3.jpg" alt="user-img" class="img-fluid rounded-circle"/>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                Thomas J. Mimms
                                            </b>
                                            <small class="text-muted">
                                                You have 87 unread messages
                                            </small>
                                        </p>
                                    </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon">
                                            <img src="assets/images/users/avatar-4.jpg" alt="user-img" class="img-fluid rounded-circle"/>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                Luis M. Konrad
                                            </b>
                                            <small class="text-muted">
                                                It is a long established fact that a reader will
                                            </small>
                                        </p>
                                    </a>
                                    <!-- All-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        View All
                                    </a>
                                </div>
                            </li>
                            <!-- notification-->
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <i class="mdi mdi-bell-outline noti-icon">
                                    </i>
                                    <span class="badge badge-danger noti-icon-badge">
                                        3
                                    </span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                    <!-- item-->
                                    <div class="dropdown-item noti-title">
                                        <h5>
                                            Notification (3)
                                        </h5>
                                    </div>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item active">
                                        <div class="notify-icon bg-success">
                                            <i class="mdi mdi-cart-outline">
                                            </i>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                Your order is placed
                                            </b>
                                            <small class="text-muted">
                                                Dummy text of the printing and typesetting industry.
                                            </small>
                                        </p>
                                    </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-warning">
                                            <i class="mdi mdi-message">
                                            </i>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                New Message received
                                            </b>
                                            <small class="text-muted">
                                                You have 87 unread messages
                                            </small>
                                        </p>
                                    </a>
                                    <!-- item-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        <div class="notify-icon bg-info">
                                            <i class="mdi mdi-martini">
                                            </i>
                                        </div>
                                        <p class="notify-details">
                                            <b>
                                                Your item is shipped
                                            </b>
                                            <small class="text-muted">
                                                It is a long established fact that a reader will
                                            </small>
                                        </p>
                                    </a>
                                    <!-- All-->
                                    <a href="javascript:void(0);" class="dropdown-item notify-item">
                                        View All
                                    </a>
                                </div>
                            </li>
                            <!-- User-->
                            <li class="list-inline-item dropdown notification-list">
                                <a class="nav-link dropdown-toggle arrow-none waves-effect nav-user" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                                    <img src="assets/images/users/avatar-1.jpg" alt="user" class="rounded-circle"/>
                                </a>
                                <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                    <a class="dropdown-item" href="#">
                                        <i class="dripicons-user text-muted">
                                        </i>
                                        Profile
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="dripicons-wallet text-muted">
                                        </i>
                                        My Wallet
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <span class="badge badge-success pull-right m-t-5">
                                            5
                                        </span>
                                        <i class="dripicons-gear text-muted">
                                        </i>
                                        Settings
                                    </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="dripicons-lock text-muted">
                                        </i>
                                        Lock screen
                                    </a>
                                    <div class="dropdown-divider">
                                    </div>
                                    <a class="dropdown-item" href="#">
                                        <i class="dripicons-exit text-muted">
                                        </i>
                                        Logout
                                    </a>
                                </div>
                            </li>
                            <li class="menu-item list-inline-item">
                                <!-- Mobile menu toggle-->
                                <a class="navbar-toggle nav-link">
                                    <div class="lines">
                                        <span>
                                        </span>
                                        <span>
                                        </span>
                                        <span>
                                        </span>
                                    </div>
                                </a>
                                <!-- End mobile menu toggle-->
                            </li>
                        </ul>
                    </div>
                    <!-- end menu-extras -->
                    <div class="clearfix">
                    </div>
                </div>
                <!--
                    end container
                -->
            </div>
            <!-- end topbar-main -->
            <!-- MENU Start -->
            <div class="navbar-custom">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">
                            <li class="has-submenu">
                                <a href="#">
                                    <i class="ti-pencil-alt">
                                    </i>
                                    Registro
                                </a>
                                <ul class="submenu">
                                    <li>
                                        <a onclick="tablapregunta('pregunta')"  href="javascript:Abrir_Form_Pregunta()">
                                            Preguntas
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="tablapregunta('respuesta')" href="javascript:Abrir_Form_Respuesta()">
                                            Respuestas
                                        </a>
                                    </li>
                                    <li>
                                        <a onclick="tablapregunta('encuesta')" href="javascript:Abrir_Form_Encuestas()">
                                            Encuestas
                                        </a>
                                    </li>
                                     <li>
                                        <a href="javascript:Abrir_Form_Contacto()">
                                            Contactos
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">
                                    <i class="ti-search">
                                    </i>
                                    Consultas
                                </a>
                                <ul class="submenu">
                                    <li>
                                        <a data-toggle="modal" data-target=".bs-example-modal-center" >
                                            Preguntas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-highlight.html">
                                            Respuestas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-rating.html">
                                            Encuestas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-nestable.html">
                                            Tipo preguntas
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-submenu">
                                <a href="#">
                                    <i class="ti-crown">
                                    </i>
                                    Estadisticas
                                </a>
                                <ul class="submenu">
                                    <li>
                                        <a href="estadisticas/mes.php">
                                            Mes
                                        </a>
                                    </li>
                                    <li>
                                        <a href="estadisticas/lineas.php">
                                            Con lineas
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-rating.html">
                                            Rating
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-nestable.html">
                                            Nestable
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-alertify.html">
                                            Alertify
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-rangeslider.html">
                                            Range Slider
                                        </a>
                                    </li>
                                    <li>
                                        <a href="advanced-sessiontimeout.html">
                                            Session Timeout
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <!-- End navigation menu -->
                    </div>
                    <!--
                        end #navigation
                    -->
                </div>
                <!--
                    end container
                -->
            </div>
            <!--
                end navbar-custom
            -->
        </header>
        <!-- End Navigation Bar-->
        <!-- donde va el mapa completo -->
        <div class="wrapper">
            <div class="container-fluid">
                <!-- container para mostrar mapa -->
                <div class="containerr">

                    <!-- mostrar mapa -->
                    <div id="map">
                    </div>
                    <!--end mostrar mapa -->
                </div>
                <!--end container para mostrar mapa -->
            </div>
            <!--  end container -->
            <!---------------------------------------------------------- inicio de modals ------------------------------------------------>
               <div id="Frm_Admin" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="ModalCrear" data-backdrop="static"
  data-keyboard="false">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title mt-0" id="mySmallModalLabel">Large modal</h5>
                                <button onclick="borrarTabla()" data-toggle="modal" data-backdrop="static" data-keyboard="false" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            </div>
                            <div class="modal-body">
                                 <div id="accordion" role="tablist" aria-multiselectable="true"></div>
                            </div>
                            <div class="modal-content">
                                <table id="tables" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                    <thead id="cabeza">

                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
        </div>
        <!--end donde va el mapa completo -->
        <!-- Footer -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        Creado por: Roque Castro Garzón
                        <i class="">
                        </i>
                        ADSI
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Footer -->
        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/modernizr.min.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <!--Morris Chart-->
        <!-- <script src="assets/plugins/morris/morris.min.js"></script> -->
        <script src="assets/plugins/raphael/raphael-min.js"></script>
        <!-- <script src="assets/pages/dashborad.js"></script> -->
        <!-- App js -->
        <script src="assets/js/app.js"></script>
          <!-- Required datatable js -->
        <script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/datatables/dataTables.bootstrap4.min.js"></script>
        <!-- Buttons examples -->
        <script src="assets/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="assets/plugins/datatables/buttons.bootstrap4.min.js"></script>
        <script src="assets/plugins/datatables/jszip.min.js"></script>
        <script src="assets/plugins/datatables/pdfmake.min.js"></script>
        <script src="assets/plugins/datatables/vfs_fonts.js"></script>
        <script src="assets/plugins/datatables/buttons.html5.min.js"></script>
        <script src="assets/plugins/datatables/buttons.print.min.js"></script>
        <script src="assets/plugins/datatables/buttons.colVis.min.js"></script>
        <!-- Responsive examples -->
        <script src="assets/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="assets/plugins/datatables/responsive.bootstrap4.min.js"></script>

        <!-- Datatable init js -->
        <script src="assets/pages/datatables.init.js"></script>
        <!-- ---------------js para mapas --------------->
        <!-- Control de modals -->
        <script src="js/Home.js">
        </script>
        <!-- Control de mapa -->
        <script src="js/Mapa.js" type="text/javascript"> </script>
        <!-- --------------script para cargar el mapa ---------->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCgpYQ8C90Zr8Pg5giypZcc9MneRR3ejkA&callback=initMap" type="text/javascript">
        </script>
          <!-- Magnific popup -->
        <script src="assets/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
        <script src="assets/pages/lightbox.js"></script>
        <!-- --------------estilos de datos ------------->
        <style type="text/css">
        .containerr{
            height: 450px;
        }
        #map{
            width: 100%;
            height: 100%;
            border: 1px solid blue;
        }
        #data{
            display: none;
        }

        </style>
    </body>
    <script type="text/javascript" src="js/consulta_tablas.js"></script>

</html>
