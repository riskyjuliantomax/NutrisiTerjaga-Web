<%-- 
    Document   : header
    Created on : Nov 27, 2020, 10:20:56 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>NutrisiTerjaga</title>

        <!-- Font awesome -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">   
        <!-- SmartMenus jQuery Bootstrap Addon CSS -->
        <link href="css/jquery.smartmenus.bootstrap.css" rel="stylesheet">
        <!-- Product view slider -->
        <link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">    
        <!-- slick slider -->
        <link rel="stylesheet" type="text/css" href="css/slick.css">
        <!-- price picker slider -->
        <link rel="stylesheet" type="text/css" href="css/nouislider.css">
        <!-- Theme color -->
        <link id="switcher" href="css/theme-color/green-theme.css" rel="stylesheet">
        <!-- <link id="switcher" href="css/theme-color/bridge-theme.css" rel="stylesheet"> -->
        <!-- Top Slider CSS -->
        <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

        <!-- Main style sheet -->
        <link href="css/style.css" rel="stylesheet">    

        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>

    </head>
    <body>
        <!-- wpf loader Two -->
        <div id="wpf-loader-two">          
            <div class="wpf-loader-two-inner">
                <span>Loading</span>
            </div>
        </div> 
        <!-- / wpf loader Two -->       
        <!-- SCROLL TOP BUTTON -->
        <a class="scrollToTop" href="#"><i class="fa fa-chevron-up"></i></a>
        <!-- END SCROLL TOP BUTTON -->


        <!-- Start header section -->
        <header id="aa-header">
            <!-- start header top  -->
            <div class="aa-header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="aa-header-top-area">
                                <!-- start header top left -->

                                <!-- / header top left -->
                                <div class="aa-header-top-right">
                                    <ul class="aa-head-top-nav-right">
                                        <li><a href="" data-toggle="modal" data-target="#login-modal">Login</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- / header top  -->

            <!-- start header bottom  -->
            <div class="aa-header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="aa-header-bottom-area">
                                <!-- logo  -->
                                <div class="aa-logo">
                                    <!-- Text based logo -->
                                    <a href="index.jsp">
                                        <span class="fa fa-shopping-vegetable"></span>
                                        <p>Nutrisi<strong>Terjaga</strong> <span>Buah dan sayur mencukupi nutrisi mu</span></p>
                                    </a>
                                    <!-- img based logo -->
                                    <!-- <a href="index.html"><img src="img/logo.jpeg" alt="logo img" width="200px;"></a> -->
                                </div>
                                <!-- / logo  -->
                                <!-- cart box -->
                                <div class="aa-cartbox">
                                    <a class="aa-cart-link" href="" data-toggle="modal" data-target="#login-modal">
                                        <span class="fa fa-shopping-basket"></span>
                                        <span class="aa-cart-title">KERANJANG</span>
<!--                                        <span class="aa-cart-notify">2</span>-->
                                    </a>
<!--                                    <div class="aa-cartbox-summary">
                                        <ul>
                                            <li>
                                                <a class="aa-cartbox-img" href="#"><img src="img/sayur/kacangpanjang.jpg" alt="img"></a>
                                                <div class="aa-cartbox-info">
                                                    <h4><a href="#">Kancang Panjang</a></h4>
                                                    <p>1Ikat x Rp 8.500</p>
                                                </div>
                                                <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                            </li>
                                            <li>
                                                <a class="aa-cartbox-img" href="#"><img src="img/sayur/brokoli.jpg" alt="img"></a>
                                                <div class="aa-cartbox-info">
                                                    <h4><a href="#">Brokoli</a></h4>
                                                    <p>1KG x Rp 13.000</p>
                                                </div>
                                                <a class="aa-remove-product" href="#"><span class="fa fa-times"></span></a>
                                            </li>                    
                                            <li>
                                                <span class="aa-cartbox-total-title">
                                                    Total
                                                </span>
                                                <span class="aa-cartbox-total-price">
                                                    Rp 21.500
                                                </span>
                                            </li>
                                        </ul>
                                        <a class="aa-cartbox-checkout aa-primary-btn" href="checkout.html">Melakukan Pembayaran</a>
                                    </div>-->
                                </div>
                                <!-- / cart box -->
                                <!-- search box -->
                                <div class="aa-search-box">
                                    <form action="#">
                                        <input type="text" name="pencarian" id="pencarian" placeholder="Cari Sini Contoh : Kankung ">
                                        <button type="submit"><span class="fa fa-search"></span></button>
                                    </form>
                                </div>
                                <!-- / search box -->             
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- / header bottom  -->
        </header>
        <!-- / header section -->
        <!-- menu -->
        <section id="menu">
            <div class="container">
                <div class="menu-area">
                    <!-- Navbar -->
                    <div class="navbar navbar-default" role="navigation">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>          
                        </div>
                        <div class="navbar-collapse collapse">
                            <!-- Left nav -->
                            <ul class="nav navbar-nav">
                                <li><a href="index.jsp">Home</a></li>
                                <!-- 
                                <li><a href="#">Women <span class="caret"></span></a>
                                    <ul class="dropdown-menu">  
                                        <li><a href="#">Kurta & Kurti</a></li>                                                                
                                        <li><a href="#">Trousers</a></li>              
                                        <li><a href="#">Casual</a></li>
                                        <li><a href="#">Sports</a></li>
                                        <li><a href="#">Formal</a></li>                
                                        <li><a href="#">Sarees</a></li>
                                        <li><a href="#">Shoes</a></li>
                                        <li><a href="#">And more.. <span class="caret"></span></a>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Sleep Wear</a></li>
                                                <li><a href="#">Sandals</a></li>
                                                <li><a href="#">Loafers</a></li>
                                                <li><a href="#">And more.. <span class="caret"></span></a>
                                                    <ul class="dropdown-menu">
                                                        <li><a href="#">Rings</a></li>
                                                        <li><a href="#">Earrings</a></li>
                                                        <li><a href="#">Jewellery Sets</a></li>
                                                        <li><a href="#">Lockets</a></li>
                                                        <li class="disabled"><a class="disabled" href="#">Disabled item</a></li>                       
                                                        <li><a href="#">Jeans</a></li>
                                                        <li><a href="#">Polo T-Shirts</a></li>
                                                        <li><a href="#">SKirts</a></li>
                                                        <li><a href="#">Jackets</a></li>
                                                        <li><a href="#">Tops</a></li>
                                                        <li><a href="#">Make Up</a></li>
                                                        <li><a href="#">Hair Care</a></li>
                                                        <li><a href="#">Perfumes</a></li>
                                                        <li><a href="#">Skin Care</a></li>
                                                        <li><a href="#">Hand Bags</a></li>
                                                        <li><a href="#">Single Bags</a></li>
                                                        <li><a href="#">Travel Bags</a></li>
                                                        <li><a href="#">Wallets & Belts</a></li>                        
                                                        <li><a href="#">Sunglases</a></li>
                                                        <li><a href="#">Nail</a></li>                       
                                                    </ul>
                                                </li>                   
                                            </ul>
                                        </li>
                                    </ul>
                                </li>-->      
                                <li><a href="" data-toggle="modal" data-target="#login-modal">Shop</a></li>
                                <!--<li><a href="product.jsp">Jenis Produk<span class="caret"></span></a>
                                    <ul class="dropdown-menu">                
                                        <li><a href="#sayur">Sayuran</a></li>
                                        <li><a href="#buahan">Buahan</a></li>              
                                    </ul>
                                </li>-->
                                <li><a href=""data-toggle="modal" data-target="#login-modal">Contact</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>       
            </div>
        </section>
        <!-- / menu -->
    </body>
</html>
