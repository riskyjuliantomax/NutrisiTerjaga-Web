<%--
    Document   : produk
    Created on : Nov 27, 2020, 11:50:45 AM
    Author     : USER
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Produk Detail</title>

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
        <!-- Products section -->
        <section id="aa-product">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="aa-product-area">
                                <div class="aa-product-inner">
                                    <!-- start prduct navigation -->
                                    <ul class="nav nav-tabs aa-products-tab">
                                        <li class="active"><a href="#sayur" data-toggle="tab">Sayur</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <!-- Start men product category -->
                                        <div class="tab-pane fade in active" id="sayur">
                                            <ul class="aa-product-catg">
                                                <%
                                                    String userids = (String) session.getAttribute("sessuser");
                                                    try {

                                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                        Connection conn = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conn = DriverManager.getConnection(hosts, "root", "");
                                                        statement = conn.createStatement();
                                                        String data = "Select * from produk where jenis = 'SAYUR' order by nama asc limit 8";
                                                        rs = statement.executeQuery(data);
                                                %>
                                                <%while (rs.next()) {%>

                                                <!-- start single product item -->
                                                <li>
                                                    <figure> 
                                                        <a class="aa-product-img" 
                                                           <%
                                                               if (userids == null) {
                                                           %> href="" data-toggle="modal" data-target="#login-modal"
                                                           <%} else {%>
                                                           href="product-detail.jsp?id=<%= rs.getString("id")%>"
                                                           <%}%>
                                                           ><img src="img/<%= rs.getString("lokasi_gambar")%>"
                                                              alt="polo shirt img" width="250px" height="300px"></a>
                                                        <a class="aa-add-card-btn" 
                                                           <%
                                                               if (userids == null) {
                                                           %> href="" data-toggle="modal" data-target="#login-modal"
                                                           <%} else {%>
                                                           href="prosescart.jsp?id=<%= rs.getString("id")%>&&jumlah=1"
                                                           <%}%>
                                                           ><span class="fa fa-shopping-cart"></span>Masuk Keranjang</a>
                                                        <figcaption>
                                                            <h4 class="aa-product-title"><a href="#"><%= rs.getString("nama")%></a></h4>
                                                            <span class="aa-product-price"><%= rs.getString("harga")%>/<%= rs.getString("satuan")%></span><span class="aa-product-price">
                                                        </figcaption>
                                                    </figure>            
                                                    <div class="aa-product-hvr-content">
                                                    </div>
                                                    <!-- product badge -->
                                                    <%
                                                        int stok = Integer.parseInt(rs.getString("stok"));
                                                        if (stok >= 10) {
                                                    %>
                                                    <span class="aa-badge aa-sale" href="#">Jual!</span>
                                                    <% } else if (stok < 10 && stok >= 1) { %>
                                                    <span class="aa-badge aa-hot" href="#">Hampir Habis!</span>
                                                    <% } else { %>
                                                    <span class="aa-badge aa-sold-out" href="#">Habis!</span>
                                                    <% } %>
                                                </li>
                                                <% } %>

                                            </ul>
                                            <center><a class="aa-browse-btn" 
                                                       <%
                                                           if (userids == null) {%>
                                                       href="" data-toggle="modal" data-target="#login-modal"
                                                       <% } else {%>
                                                       href="product.jsp"
                                                       <% }
                                                       %>
                                                       >Lihat Selengkapnya <span class="fa fa-long-arrow-right"></span></a></center>
                                        </div>

                                        <%
                                                rs.close();
                                                statement.close();
                                                conn.close();
                                            } catch (SQLException ex) {
                                                out.print("Gagal Koneksi");
                                            } catch (Exception ex) {
                                                out.print(ex.getMessage());
                                            }
                                        %>
                                        </section>
                                        <!-- banner section -->
                                        <!-- <section id="aa-banner">
                                             <div class="container">
                                                 <div class="row">
                                                     <div class="col-md-12">        
                                                         <div class="row">
                                                             <div class="aa-banner-area">
                                                                 <a href="#"><img src="img/fashion-banner.jpg" alt="fashion banner img"></a>
                                                             </div>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </div>
                                         </section>
                                        <!-- popular section -->
                                        <section id="aa-popular-category">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="row">
                                                            <div class="aa-popular-category-area">
                                                                <!-- start prduct navigation -->

                                                                <!-- <li class="active"><a href="#popular" data-toggle="tab">Popular</a></li>
                                                                 <li><a href="#featured" data-toggle="tab">Featured</a></li> -->
                                                                <ul class="nav nav-tabs aa-products-tab">
                                                                    <li class="active"><a href="#sayur" data-toggle="tab">Buahan</a></li>

                                                                </ul>
                                                                <!-- Tab panes -->
                                                                <div class="tab-content">
                                                                    <!-- Start men popular category -->
                                                                    <!-- start latest product category
                                                                    Example non active
                                                                    -->
                                                                    <!-- <div class="tab-pane fade" id="latest"> -->
                                                                    <div class="tab-pane fade in active" id="latest">
                                                                        <ul class="aa-product-catg">
                                                                            <!-- start single product item -->
                                                                            <% try {
                                                                                    String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                                                    Connection conn = null;
                                                                                    Statement statement = null;
                                                                                    ResultSet rs = null;
                                                                                    Class.forName("com.mysql.jdbc.Driver");
                                                                                    conn = DriverManager.getConnection(hosts, "root", "");
                                                                                    statement = conn.createStatement();
                                                                                    String data = "Select * from produk where jenis = 'BUAHAN' order by nama asc limit 8";
                                                                                    rs = statement.executeQuery(data);
                                                                            %>
                                                                            <%while (rs.next()) {%>
                                                                            <li>
                                                                                <figure>
                                                                                    <a class="aa-product-img"
                                                                                       <%
                                                                                           if (userids == null) {
                                                                                       %> href="" data-toggle="modal" data-target="#login-modal"
                                                                                       <%} else {%>
                                                                                       href="product-detail.jsp?id=<%= rs.getString("id")%>"
                                                                                       <%}%>
                                                                                       ><img src="img/<%= rs.getString("lokasi_gambar")%>" alt="polo shirt img" width="250px" height="300px"></a>
                                                                                    <a class="aa-add-card-btn" 
                                                                                       <%
                                                                                           if (userids == null) {
                                                                                       %> href="" data-toggle="modal" data-target="#login-modal"
                                                                                       <%} else {%>
                                                                                       href="prosescart.jsp?id=<%= rs.getString("id")%>"
                                                                                       <%}%>><span class="fa fa-shopping-cart"></span>Masuk Keranjang</a>
                                                                                    <figcaption>
                                                                                        <h4 class="aa-product-title"><a href="#"><%= rs.getString("nama")%></a></h4>
                                                                                        <span class="aa-product-price"><%= rs.getString("harga")%> /<%= rs.getString("satuan")%></span><span class="aa-product-price">
                                                                                            <!--Promo-->
                                                                                            <!--<del>$65.50</del></span>-->
                                                                                    </figcaption>
                                                                                </figure>                        
                                                                                <div class="aa-product-hvr-content">
                                                                                </div>
                                                                                <!-- product badge -->
                                                                                <%
                                                                                    int stok = Integer.parseInt(rs.getString("stok"));
                                                                                    if (stok >= 10) {
                                                                                %>
                                                                                <span class="aa-badge aa-sale" href="#">Jual!</span>
                                                                                <% } else if (stok < 10 && stok >= 1) { %>
                                                                                <span class="aa-badge aa-hot" href="#">Hampir Habis!</span>
                                                                                <% } else { %>
                                                                                <span class="aa-badge aa-sold-out" href="#">Habis!</span>
                                                                                <% } %>
                                                                            </li>
                                                                            <% } %>

                                                                            <!-- start single product item -->

                                                                            <!-- start single product item -->

                                                                        </ul>
                                                                        <center><a class="aa-browse-btn" h<%
                                                                            if (userids == null) {%>
                                                                                   href="" data-toggle="modal" data-target="#login-modal"
                                                                                   <% } else {%>
                                                                                   href="product.jsp"
                                                                                   <% }
                                                                                   %>>Lihat Selengkapnya <span class="fa fa-long-arrow-right"></span></a></center>
                                                                                <%
                                                                                        rs.close();
                                                                                        statement.close();
                                                                                        conn.close();
                                                                                    } catch (SQLException ex) {
                                                                                        out.print("Gagal Koneksi");
                                                                                    } catch (Exception ex) {
                                                                                        out.print(ex.getMessage());
                                                                                    }
                                                                                %>
                                                                    </div>
                                                                    <!-- / latest product category -->              
                                                                </div>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                        <!-- / popular section -->

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