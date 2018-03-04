<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>UNIB APIS</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- full calendar css-->
  <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
  <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
  <!-- easy pie chart-->
  <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
  <!-- owl carousel -->
  <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
  <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
  <!-- Custom styles -->
  <link rel="stylesheet" href="css/fullcalendar.css">
  <link href="css/widgets.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet" />
  <link href="css/xcharts.min.css" rel=" stylesheet">
  <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
  <!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.html" class="logo">UNIB <span class="lite">Apis</span></a>
      <!--logo end-->


      <div class="top-nav notification-row">
        <!-- notificatoin dropdown start-->
        <ul class="nav pull-right top-menu">

        
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <!--<img alt="" src="img/avatar1_small.jpg">-->
                            </span>
                             {{ Auth::user()->name }}
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>              
              <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
              
            </ul>
          </li>
          <!-- user login dropdown end -->
        </ul>
        <!-- notificatoin dropdown end-->
      </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu">
          <li class="">
            <a class="" href="{{ route('home') }}">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
          </li>
        
         
          
          <li>

          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>Acessos</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="{{ route('api') }}">Criar Tokens </a></li>
            </ul>
          </li>

        

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <!--overview start-->
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
            <ol class="breadcrumb">
              <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
              <li><i class="fa fa-laptop"></i>Dashboard</li>
            </ol>
          </div>
        </div>

       


        </div>


        <!-- Today status end -->



        <div class="row">

          <div class="col-lg-9 col-md-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h2><i class="fa fa-flag-o red"></i><strong>Produtos</strong></h2>
                <div class="panel-actions">
                  
                </div>
              </div>
              <div class="panel-body">
                <table class="table bootstrap-datatable countries">
                  <thead>
                    <tr>
                      <th>lm</th>
                      <th>Name</th>
                      <th>Free Shipping</th>
                      <th>Description</th>                      
                      <th>Price</th>                      
                    </tr>
                  </thead>
                  <tbody>
                      @foreach($product as $p)                                   
                    <tr>                      
                      <td>{{$p->lm}} </td>
                      <td>{{$p->name}} </td>
                      <td>{{$p->free_shipping}} </td>
                      <td>{{$p->description}} </td>
                      <td>{{$p->price}} </td>                      
                      <td>                        
                        <span class="sr-only">73%</span>
                      </td>
                    </tr> 
                    @endforeach
                  </tbody>
                </table>
              </div>

            </div>

          </div>
          <!--/col-->
        
          <!--/col-->
          
          <!--/col-->




                    <section class="content">        
                    </section> 

                    <div style="display: none;" id="cargador_empresa" align="center">           
                        <label style="color:#FFF; background-color:#ABB6BA; text-align:center">&nbsp;&nbsp;&nbsp;Espere... &nbsp;&nbsp;&nbsp;</label>
                        <img src="imagenes/cargando.gif" align="middle" alt="cargador"> &nbsp;<label style="color:#ABB6BA">Carregando ...</label>
                        <hr style="color:#003" width="50%">      
                    </div>    
                    <button type="button"  class="btn btn-primary medio"  title='Import Excel'  data-toggle="modal" data-target="#cadastrar"  onclick="cargarformulario(2);"><span class="fa fa-upload" aria-hidden="true"></span></button>

                    <div class="modal fade" id="cadastrar" role="dialog">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 style="color:green;"><span class="glyphicon glyphicon-open-file"></span>Add Excel</h4>
                                </div>
                                <div class="modal-body">          
                                    <div id="notificacion_resul_fcdu"></div>
                                    <form  id="f_cargar_datos_usuarios" name="f_cargar_datos_usuarios" method="post"  action="cargar_datos_usuario" class="formarchivo" enctype="multipart/form-data" >                
                                        <input type="hidden" name="_token" id="_token"  value="<?= csrf_token(); ?>"> 
                                        <div class="box-body">
                                            <div class="form-group col-xs-12"  >
                                                <label>Add Excel </label>
                                                <input name="archivo" id="archivo" type="file"   class="archivo form-control"  required/><br /><br />
                                                  <input type="hidden" name="title" value="catalogo "/>  
                                                  <input type="hidden" name="body" value="produtos em destaque "/>  
                                                  
                                            </div>
                                            <div class="box-footer">
                                                <button type="submit" class="btn btn-primary">Upload Data</button>
                                            </div>
                                        </div>
                                    </form>             
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 
                                        Cancel</button>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>  
        </div>              
            </section>
            <!--Project Activity end-->          
        <br><br>

                <div class="widget-foot">
                  <!-- Footer goes here -->
                </div>              
        </div>

      </section>
      <div class="text-right">
        <div class="credits">
         
         
        </div>
      </div>
    </section>
    <!--main content end-->
  </section>
  <!-- container section start -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script src="js/sistemalaravel.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
