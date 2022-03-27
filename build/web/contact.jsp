<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Kontak Kami</title>

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
        <!-- catg header banner section -->
        <section id="aa-catg-head-banner">
            <img src="img/green1920x300.jpg" alt="fashion img">
            <div class="aa-catg-head-banner-area">
                <div class="container">
                    <div class="aa-catg-head-banner-content">
                        <h2>Kontak Kami</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>         
                            <li class="active">Kontak Kami</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- / catg header banner section -->
        <!-- start contact section -->
        <section id="aa-contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-contact-area">
                            <div class="aa-contact-top">
                                <h2>Kontak Kami</h2>
                                <p>Apabila menemukan masalah silakan kontak kami</p>
                            </div>
                            <!-- Contact address -->
                            <div class="aa-contact-address">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="aa-contact-address-left">
                                            <form class="comments-form contact-form" action="proses_contact.jsp" method="post">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">                        
                                                            <input type="text" placeholder="Judul" class="form-control" name="judul">
                                                        </div>
                                                    </div>  
                                                    <div class="col-md-12">
                                                        <div class="form-group">                        
                                                            <textarea rows="8" cols="10" class="form-control"  placeholder="Penjelasan" name="isi"></textarea>
                                                        </div>
                                                        <button class="aa-secondary-btn">Kirim</button>
                                                    </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="aa-contact-address-right">
                                        <address>
                                            <h4>Kontak Kami</h4>
                                            <p>Akan kami melayani anda selama 24 jam</p>
                                            <p><span class="fa fa-phone"></span>(0761) 887790</p>
                                            <p><span class="fa fa-envelope"></span>Email: nutrisiterjaga@gmail.com</p>
                                        </address>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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