<!doctype html>
  <head>
   <link rel="stylesheet" type="text/css" href="lib/morris.css">

   <!--Chartist Chart CSS -->
   <link rel="stylesheet" href="../assets/plugins/chartist/css/chartist.min.css">
   <!-- jquery -->
   <script src="../assets/js/jquery.min.js"></script>
   <!-- Raphael -->
   <script src="../assets/plugins/raphael/raphael-min.js"></script>
   <!-- Chartist -->
   <script src="../assets/plugins/chartist/js/chartist.min.js"></script>
   <script src="../assets/plugins/chartist/js/chartist-plugin-tooltip.min.js"></script>
   <!-- Morris -->
   <script charset="utf-8" src="lib/morris.js"></script>
   <script src="../assets/plugins/morris/morris.min.js"></script>
   <!-- bootrap -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <title>SIG MTEE</title>
  <!-- App css -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
  <link href="../assets/css/style.css" rel="stylesheet" type="text/css" />
  <!-- App Icons -->
  <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <!-- Titulo de la ventana -->
  <link rel="shortcut icon" href="../assets/images/logo_sig/logo.png">
  <title>SIG MTEE</title>


  </head>
  <body>
     <header id="topnav" style="background-color:#220505; ">
        <div class="topbar-main">
            <div class="container-fluid">
               <div class="topbar-main">
                  <!-- Logo container-->
                  <div class="logo">
                      <!-- Text Logo -->
                      <!--<a href="index.html" class="logo">-->
                      <!--Upcube-->
                      <!--</a>-->
                      <!-- Image Logo -->
                      <a href="../index.php" class="logo">
                          <img src="../assets/images/logo_sig/logo.png" alt="" height="35" class="logo-small"/>
                          <img src="../assets/images/logo_sig/logo.png" alt="" height="50" class="logo-large"/>
                      </a>
                  </div>
                  <!-- End Logo container-->
                  <div class="menu-extras topbar-custom">

                  </div>
                  <!-- end menu-extras -->
                  <div class="clearfix">
                  </div>
               </div>
            </div>
            <!--
                end container
            -->
        </div>
    </header>
    <div class="container">
      <div class="wrapper">
        <div class="row">
            <div class="col-sm-12">
                <div class="page-title-box">
                    <div class="btn-group pull-right">
                        <ol class="breadcrumb hide-phone p-0 m-0">
                            <li class="breadcrumb-item">
                              <form class="" method="POST" action="">
                                <div class="form-group">
                                    <label>Encuesta</label>
                                    <div class="form-group">
                                        <select id="encuesta" required class="form-control">

                                        </select>
                                    </div>
                                </div>
                              </form>
                            </li>
                        </ol>
                    </div>
                    <h4 class="page-title"></h4>
                </div>
            </div>
          </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">Gráfica Diaria</h2>
                <hr>
                <h6 id="TiDiaria" style="text-anchor: 12px">INCENDIOS</h6>
                 <div id="simple-line-chart" class="ct-chart ct-golden-section"></div>
                 <div id="resultado"></div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">Gráfica mensual</h2>
                <hr>
                <h6 id="TiMensual" style="text-anchor: 12px">INCENDIOS</h6>
                <div id="myfirstchart"></div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <div class="row">
            <div class="col-md-12">
                <h2 align="center">Gráfica Anual</h2>
                <hr>
                <h6 id="TiAnual" style="text-anchor: 12px">INCENDIOS</h6>
                <div id="graficaAnual"></div>
            </div>
        </div>
    </div>
    <footer class="footer" align="center">
        <div class="container-fluid" align="center">
            <div class="row">
                <div class="col-12">

                    Copyright:
                    <i class="mdi mdi-copyright">
                    </i>
                    roque castro garzón.
                </div>
            </div>
        </div>
    </footer>

    <script charset="utf-8" src="../js/Esta_lineas.js"></script>
  </body>
</html>
