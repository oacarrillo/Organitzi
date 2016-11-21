<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Organitzi</title>

    
    <asset:stylesheet src="bootstrap.min.css" />
    <!-- bootstrap theme -->
    <asset:stylesheet src="bootstrap-theme.css" />
    <!-- font icon -->
    <asset:stylesheet src="eleganticons/css/elegant-icons-style.css" />
    <asset:stylesheet src="fontawesome/css/font-awesome.min.css" />    
	<!-- Custom styles -->
	<asset:stylesheet src="widgets.css" />
    <asset:stylesheet src="style.css" />
    <asset:stylesheet src="style-responsive.css" />
	<asset:stylesheet src="xcharts.min.css" />	
	<asset:stylesheet src="jquery-ui-1.10.4.min.css" />
    <asset:stylesheet src="switch.css" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
  </head>

  <body>
  <!-- container section start -->
  <section id="container" class="">
     
      
      <header class="header dark-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
            </div>

            <!--logo start-->
            <a href="${createLink(controller:'main', action:'index')}" class="logo">Organitzi <span class="lite"></span></a>
            <!--logo end-->

            <div class="top-nav notification-row">                
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <asset:image src="avatar1_small.jpg" />
                            </span>
                            <span class="username"><sec:username /></span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li>
                                <a href="${createLink(controller:'logout',action:'index')}"><i class="icon_key_alt"></i> Log Out</a>
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
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu">                
                  <li class="active">
                      <g:link controller="main" action="index">
                          <i class="icon_house_alt"></i>
                          <span>Tareas</span>
                      </g:link>
                  </li>
				  <li class="sub-menu">
                      <g:link controller="proyecto" action="index">
                          <i class="icon_folder-open_alt"></i>
                          <span>Proyectos</span>
                      </g:link>
                  </li>       
                  <li class="sub-menu">
                      <g:link controller="espera" action="index">
                          <i class="icon_stop_alt"></i>
                          <span>En Espera</span>
                      </g:link>
                  </li>
                  <li>
                      <g:link controller="accion" action="index">
                          <i class="icon_calendar"></i>
                          <span>Proximas Acciones</span>
                      </g:link>
                  </li>
                  <li>                     
                      <g:link controller="quizas" action="index">
                          <i class="icon_question_alt"></i>
                          <span>Quizas</span>
                      </g:link>
                  </li>
                  <li class="sub-menu">
                      <g:link controller="lista" action="index">
                          <i class="icon_piechart"></i>
                          <span>Reportes</span>
                      </g:link>
                  </li>
                  
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
