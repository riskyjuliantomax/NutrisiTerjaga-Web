<%-- 
    Document   : indexlogin
    Created on : Jan 5, 2021, 9:42:53 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body> 
        
        <%@include file="headerlogin.jsp" %>
        <%@include file="slideshow.jsp"%>
        
        <!-- / slider -->
        <!-- Start Promo section -->
        <!--
        <section id="aa-promo">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="aa-promo-area">
                  <div class="row">
        <!-- promo left -->
        <!--  <div class="col-md-5 no-padding">                
            <div class="aa-promo-left">
              <div class="aa-promo-banner">                    
                <img src="img/promo-banner-1.jpg" alt="img">                    
                <div class="aa-prom-content">
                  <span>75% Off</span>
                  <h4><a href="#">For Women</a></h4>                      
                </div>
              </div>
            </div>
          </div>
        <!-- promo right -->
        <!--  <div class="col-md-7 no-padding">
            <div class="aa-promo-right">
              <div class="aa-single-promo-right">
                <div class="aa-promo-banner">                      
                  <img src="img/promo-banner-3.jpg" alt="img">                      
                  <div class="aa-prom-content">
                    <span>Exclusive Item</span>
                    <h4><a href="#">For Men</a></h4>                        
                  </div>
                </div>
              </div>
              <div class="aa-single-promo-right">
                <div class="aa-promo-banner">                      
                  <img src="img/promo-banner-2.jpg" alt="img">                      
                  <div class="aa-prom-content">
                    <span>Sale Off</span>
                    <h4><a href="#">On Shoes</a></h4>                        
                  </div>
                </div>
              </div>
              <div class="aa-single-promo-right">
                <div class="aa-promo-banner">                      
                  <img src="img/promo-banner-4.jpg" alt="img">                      
                  <div class="aa-prom-content">
                    <span>New Arrivals</span>
                    <h4><a href="#">For Kids</a></h4>                        
                  </div>
                </div>
              </div>
              <div class="aa-single-promo-right">
                <div class="aa-promo-banner">                      
                  <img src="img/promo-banner-5.jpg" alt="img">                      
                  <div class="aa-prom-content">
                    <span>25% Off</span>
                    <h4><a href="#">For Bags</a></h4>                        
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section> -->
        <!-- / Promo section -->
        <%@include file="produk-list.jsp"%>
        
        <%@include file="support.jsp" %>
        
        <!--
   
        <!-- / Products section -->

        <!-- Support section -->
        
        <!-- / Support section -->
        <!-- Testimonial -->
        <!--
        <section id="aa-testimonial">  
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-testimonial-area">
                            <ul class="aa-testimonial-slider">
                                <!-- single slide -->
                           <!--     <li>
                                    <div class="aa-testimonial-single">
                                        <img class="aa-testimonial-img" src="img/testimonial-img-2.jpg" alt="testimonial img">
                                        <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.</p>
                                        <div class="aa-testimonial-info">
                                            <p>Allison</p>
                                            <span>Designer</span>
                                            <a href="#">Dribble.com</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- single slide -->
                           <!--     <li>
                                    <div class="aa-testimonial-single">
                                        <img class="aa-testimonial-img" src="img/testimonial-img-1.jpg" alt="testimonial img">
                                        <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.</p>
                                        <div class="aa-testimonial-info">
                                            <p>KEVIN MEYER</p>
                                            <span>CEO</span>
                                            <a href="#">Alphabet</a>
                                        </div>
                                    </div>
                                </li>
                                <!-- single slide -->
                             <!--   <li>
                                    <div class="aa-testimonial-single">
                                        <img class="aa-testimonial-img" src="img/testimonial-img-3.jpg" alt="testimonial img">
                                        <span class="fa fa-quote-left aa-testimonial-quote"></span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui!consectetur adipisicing elit. Sunt distinctio omnis possimus, facere, quidem qui.</p>
                                        <div class="aa-testimonial-info">
                                            <p>Luner</p>
                                            <span>COO</span>
                                            <a href="#">Kinatic Solution</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- / Testimonial -->

        <!-- Latest Blog -->
        <!-- 
        <section id="aa-latest-blog">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-latest-blog-area">
                            <h2>PROMO BLOG</h2>
                            <div class="row">
                                <!-- single latest blog -->
                  <!--               <div class="col-md-4 col-sm-4">
                                    <div class="aa-latest-blog-single">
                                        <figure class="aa-blog-img">                    
                                            <a href="#"><img src="img/promo-banner-1.jpg" alt="img"></a>  
                                            <figcaption class="aa-blog-img-caption">
                                                <span href="#"><i class="fa fa-eye"></i>5K</span>
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>426</a>
                                                <a href="#"><i class="fa fa-comment-o"></i>20</a>
                                                <span href="#"><i class="fa fa-clock-o"></i>June 26, 2016</span>
                                            </figcaption>                          
                                        </figure>
                                        <div class="aa-blog-info">
                                            <h3 class="aa-blog-title"><a href="#">Lorem ipsum dolor sit amet</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, ad? Autem quos natus nisi aperiam, beatae, fugiat odit vel impedit dicta enim repellendus animi. Expedita quas reprehenderit incidunt, voluptates corporis.</p> 
                                            <a href="#" class="aa-read-mor-btn">Read more <span class="fa fa-long-arrow-right"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- single latest blog -->
                   <!--              <div class="col-md-4 col-sm-4">
                                    <div class="aa-latest-blog-single">
                                        <figure class="aa-blog-img">                    
                                            <a href="#"><img src="img/promo-banner-3.jpg" alt="img"></a>  
                                            <figcaption class="aa-blog-img-caption">
                                                <span href="#"><i class="fa fa-eye"></i>5K</span>
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>426</a>
                                                <a href="#"><i class="fa fa-comment-o"></i>20</a>
                                                <span href="#"><i class="fa fa-clock-o"></i>June 26, 2016</span>
                                            </figcaption>                          
                                        </figure>
                                        <div class="aa-blog-info">
                                            <h3 class="aa-blog-title"><a href="#">Lorem ipsum dolor sit amet</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, ad? Autem quos natus nisi aperiam, beatae, fugiat odit vel impedit dicta enim repellendus animi. Expedita quas reprehenderit incidunt, voluptates corporis.</p> 
                                            <a href="#" class="aa-read-mor-btn">Read more <span class="fa fa-long-arrow-right"></span></a>         
                                        </div>
                                    </div>
                                </div>
                                <!-- single latest blog -->
                     <!--            <div class="col-md-4 col-sm-4">
                                    <div class="aa-latest-blog-single">
                                        <figure class="aa-blog-img">                    
                                            <a href="#"><img src="img/promo-banner-1.jpg" alt="img"></a>  
                                            <figcaption class="aa-blog-img-caption">
                                                <span href="#"><i class="fa fa-eye"></i>5K</span>
                                                <a href="#"><i class="fa fa-thumbs-o-up"></i>426</a>
                                                <a href="#"><i class="fa fa-comment-o"></i>20</a>
                                                <span href="#"><i class="fa fa-clock-o"></i>June 26, 2016</span>
                                            </figcaption>                          
                                        </figure>
                                        <div class="aa-blog-info">
                                            <h3 class="aa-blog-title"><a href="#">Lorem ipsum dolor sit amet</a></h3>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda, ad? Autem quos natus nisi aperiam, beatae, fugiat odit vel impedit dicta enim repellendus animi. Expedita quas reprehenderit incidunt, voluptates corporis.</p> 
                                            <a href="#" class="aa-read-mor-btn">Read more <span class="fa fa-long-arrow-right"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
            </div>
        </section>
        <!-- / Latest Blog -->

        <%@include file="footer.jsp" %>
        <!-- Client Brand -->
       <!-- <section id="aa-client-brand">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-client-brand-area">
                            <ul class="aa-client-brand-slider">
                                <li><a href="#"><img src="img/client-brand-java.png" alt="java img"></a></li>
                                <li><a href="#"><img src="img/client-brand-jquery.png" alt="jquery img"></a></li>
                                <li><a href="#"><img src="img/client-brand-html5.png" alt="html5 img"></a></li>
                                <li><a href="#"><img src="img/client-brand-css3.png" alt="css3 img"></a></li>
                                <li><a href="#"><img src="img/client-brand-wordpress.png" alt="wordPress img"></a></li>
                                <li><a href="#"><img src="img/client-brand-joomla.png" alt="joomla img"></a></li>
                                <li><a href="#"><img src="img/client-brand-java.png" alt="java img"></a></li>
                                <li><a href="#"><img src="img/client-brand-jquery.png" alt="jquery img"></a></li>
                                <li><a href="#"><img src="img/client-brand-html5.png" alt="html5 img"></a></li>
                                <li><a href="#"><img src="img/client-brand-css3.png" alt="css3 img"></a></li>
                                <li><a href="#"><img src="img/client-brand-wordpress.png" alt="wordPress img"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- / Client Brand -->

        <!-- Subscribe section -->
    <!--    <section id="aa-subscribe">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-subscribe-area">
                            <h3>Subscribe our newsletter </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex, velit!</p>
                            <form action="" class="aa-subscribe-form">
                                <input type="email" name="" id="" placeholder="Enter your Email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- / Subscribe section -->

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