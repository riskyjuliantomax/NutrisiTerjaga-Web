<%-- 
    Document   : sidebar
    Created on : Dec 2, 2020, 7:23:17 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <title></title>

        <!-- Favicons -->
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Bootstrap core CSS -->
        <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!--external css-->
        <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
        <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
        <script src="lib/chart-master/Chart.js"></script>
    </head>
    <body>
        <!--header start-->
        <header class="header black-bg">
            <div class="sidebar-toggle-box">
                <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
            </div>
            <!--logo start-->
            <a href="dashboard.jsp" class="logo"><b>Nutrisi<span style="color:#3fc35f; ">Terjaga</span></b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
            </div>
            <div class="top-menu">
                <ul class="nav pull-right top-menu">
                    <li><a class="logout" href="Index.jsp">Logout</a></li>
                </ul>
            </div>
        </header>
        <!--header end-->
        <!-- **********************************************************************************************************************************************************
            MAIN SIDEBAR MENU
            *********************************************************************************************************************************************************** -->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu" id="nav-accordion">
                    <p class="centered"><a href=""><!--<img src="img/user.png" class="img-circle" width="80">--></a></p>
                    <h5 class="centered">Budi</h5>
                    <li class="mt">
                        <a  id="index" href="dashboard.jsp" onclick="myFunction()">
                            <i class="fa fa-dashboard"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a  id="input" href="tambahproduk.jsp" onclick="myFunction()">
                            <i class="fa fa-dashboard"></i>
                            <span>Tambah Produk</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a  id="list_produk" href="produk_list.jsp" onclick="myFunction()">
                            <i class="fa fa-dashboard"></i>
                            <span>List Produk</span>
                        </a>
                    </li>
                   <!-- <li class="sub-menu">
                        <a href="javascript:;"  id="produk">
                            <i class="fa fa-cogs"></i>
                            <span>Produk</span>
                        </a>
                        <ul class="sub">
                            <li id="input"><a href="tambahproduk.jsp">Tambah Produk</a></li>
                            <li id="list_produk"><a href="produk_list.jsp">List Produk</a></li>
                        </ul>
                    </li>-->
                     <li class="sub-menu">
                         <a  id="mail" href="mail.jsp" onclick="myFunction()">
                            <i class="fa fa-dashboard"></i>
                            <span>Mail</span>
                        </a>
                    </li>
                    <li class="sub-menu">
                        <a  id="akun_setting" href="akunsetting.jsp" onclick="myFunction()">
                            <i class="fa fa-dashboard"></i>
                            <span>Akun Setting</span>
                        </a>
                    </li>
                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
    </body>
</html>
