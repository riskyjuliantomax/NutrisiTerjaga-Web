<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Favourite</title>

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
        <!-- Top Slider CSS -->
        <link href="css/sequence-theme.modern-slide-in.css" rel="stylesheet" media="all">

        <!-- Main style sheet -->
        <link href="css/style.css" rel="stylesheet">    

        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body>  
        <%@include file="headerlogin.jsp" %>
        
        <section id="aa-catg-head-banner">
            <img src="img/green1920x300.jpg" alt="fashion img">
            <div class="aa-catg-head-banner-area">
                <div class="container">
                    <div class="aa-catg-head-banner-content">
                        <h2>Produk Favourite</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>                   
                            <li class="active">Produk Favourite</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
            <!-- Cart view section -->
            <section id="cart-view" style="margin-bottom: 40px">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="cart-view-area">
                                <div class="cart-view-table aa-wishlist-table">
                                    <form action="">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th>Nama Produk</th>
                                                        <th>Harga</th>
                                                        <th>Stok Status</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                                                        <td><a href="#"><img src="img/sayur/kankung.jpg" alt="img"></a></td>
                                                        <td><a class="aa-cart-title" href="#">Kankung</a></td>
                                                        <td>Rp 1.500 /1Ikat</td>
                                                        <td>Tersedia</td>
                                                        <td><a href="#" class="aa-add-to-cart-btn">Masuk Keranjang</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td><a class="remove" href="#"><fa class="fa fa-close"></fa></a></td>
                                                        <td><a href="#"><img src="img/sayur/daunsingkong.jpg" alt="img"></a></td>
                                                        <td><a class="aa-cart-title" href="#">Daun Singkong</a></td>
                                                        <td>Rp 2.000 /1Ikat</td>
                                                        <td>Tersedia</td>
                                                        <td><a href="#" class="aa-add-to-cart-btn">Masuk Keranjang</a></td>
                                                    </tr>                      
                                                </tbody>
                                            </table>
                                        </div>
                                    </form>             
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- / Cart view section -->
            <%@include file="footer.jsp" %>
            <%@include file="loginmodal.html" %>



            <!-- jQuery library -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script src="js/bootstrap.js"></script>  
            <!-- SmartMenus jQuery plugin -->
            <script type="text/javascript" src="js/jquery.smartmenus.js"></script>
            <!-- SmartMenus jQuery Bootstrap Addon -->
            <script type="text/javascript" src="js/jquery.smartmenus.bootstrap.js"></script>  
            <!-- To Slider JS -->
            <script src="js/sequence.js"></script>
            <script src="js/sequence-theme.modern-slide-in.js"></script>  
            <!-- Product view slider -->
            <script type="text/javascript" src="js/jquery.simpleGallery.js"></script>
            <script type="text/javascript" src="js/jquery.simpleLens.js"></script>
            <!-- slick slider -->
            <script type="text/javascript" src="js/slick.js"></script>
            <!-- Price picker slider -->
            <script type="text/javascript" src="js/nouislider.js"></script>
            <!-- Custom js -->
            <script src="js/custom.js"></script> 


    </body>
</html>