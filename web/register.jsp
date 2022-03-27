<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Akun Setting</title>

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
        <%@include file="header.jsp" %>
        <!-- Start header section -->

        <section id="aa-catg-head-banner">

        </section>
        <!-- catg header banner section -->
        <!--  <section id="aa-catg-head-banner">
          <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
          <div class="aa-catg-head-banner-area">
           <div class="container">
            <div class="aa-catg-head-banner-content">
              <h2>Account Page</h2>
              <ol class="breadcrumb">
                <li><a href="index.html">Home</a></li>                   
                <li class="active">Account</li>
              </ol>
            </div>
           </div>
         </div>
        </section>
        <!-- / catg header banner section -->

        <!-- Cart view section -->
        <section id="aa-myaccount">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-myaccount-area">  
                            <h2>Register</h2>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="aa-myaccount-login">
                                        <form action="SaveRegister" class="aa-login-form" method="post">
                                            <label>Username<span>*</span></label>
                                            <input type="text" name="user" required>
                                            <label>Email<span>*</span></label>
                                            <input type="email" name="email" style="border: 1px solid #ccc;
                                                   font-size: 16px;
                                                   height: 40px;
                                                   margin-bottom: 15px;
                                                   padding: 10px;
                                                   width: 100%;" required>
                                            <label>Password<span>*</span></label>
                                            <input type="password" name="pass" required>
                                            <!-- <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                                             <p class="aa-lost-password"><a href="#">Lost your password?</a></p> -->
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="aa-myaccount-register">                 
                                                    <div class="aa-login-form">
                                                        <label>Nama Lengkap<span>*</span></label>
                                                        <input type="text" name="namalengkap" required>
                                                        <label>No Handphone<span>*</span></label>
                                                        <input type="number" name="nohp" style="border: 1px solid #ccc;
                                                               font-size: 16px;
                                                               height: 40px;
                                                               margin-bottom: 15px;
                                                               padding: 10px;
                                                               width: 100%;" min="1" maxlength="12" required>
                                                        <label>Ulangi Password<span>*</span></label>
                                                        <input type="password" name="passrepeat" required>
                                                        <input type="submit" class="aa-browse-btn">                    
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                    </div>          
                                </div>
                            </div>
                        </div>
                    </div>
                    </section>
                    <!-- / Cart view section -->
                    <%@include file="footer.jsp" %>
                    <!-- / footer -->
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