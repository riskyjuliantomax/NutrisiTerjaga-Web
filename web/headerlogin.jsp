<%-- 
    Document   : header
    Created on : Nov 27, 2020, 10:20:56 AM
    Author     : USER
--%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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
        <%
            String userid = (String) session.getAttribute("sessuser");
            String host = "jdbc:mysql://localhost:3306/nutrisiterjaga";
        %>
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
                                        <li class="hidden-xs"><a href="proses_notifikasi_update.jsp?id=<%= userid %>">Notifikasi
                                                <% try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        Connection connnotif = DriverManager.getConnection(host, "root", "");
                                                        String countnotif = "select count(status) from mail_balas where userid ='" + userid + "' && status = 'Belum Baca'";
                                                        Statement stmtnotif = connnotif.createStatement();
                                                        ResultSet rscountnotif = null;
                                                        rscountnotif = stmtnotif.executeQuery(countnotif);
                                                        while (rscountnotif.next()) {
                                                            int count_notif = Integer.parseInt(rscountnotif.getString(1));
                                                            if (count_notif <= 0) {
                                                                out.print("");
                                                            }else{ %>
                                                            <text style="color: red ; font-weight: bold"><%= count_notif %></text>
                                                            <%}
                                                        }
                                                        rscountnotif.close();
                                                        stmtnotif.close();
                                                        connnotif.close();
                                                    } catch (SQLException ex) {
                                                        out.print("Gagal Koneksi");
                                                    } catch (Exception ex) {
                                                        out.print(ex.getMessage());
                                                    } %>
                                            </a></li>
                                        <li class="hidden-xs"><a href="history.jsp">History Belanja</a></li>
                                            <%
                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection conn = DriverManager.getConnection(host, "root", "");
                                                    String query = "select * from user where id ='" + userid + "'";
                                                    Statement stmt = conn.createStatement();
                                                    ResultSet rs = null;
                                                    rs = stmt.executeQuery(query);
                                                    while (rs.next()) {
                                            %>
                                        <li><a href="account.jsp?nama='<%= rs.getString("user")%>">
                                                <%= rs.getString("user")%> 
                                            </a></li>
                                        <li class="hidden-xs" style="background: red; margin-left: -3px"><a href="destroysession.jsp" style="color: white">LogOut</a></li>
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
                                    <a href="indexlogin.jsp">
                                        <span class="fa fa-shopping-vegetable"></span>
                                        <p>Nutrisi<strong>Terjaga</strong> <span>Buah dan sayur mencukupi nutrisi mu</span></p>
                                    </a>
                                    <!-- img based logo -->
                                    <!-- <a href="index.html"><img src="img/logo.jpeg" alt="logo img" width="200px;"></a> -->
                                </div>
                                <!-- / logo  -->
                                <!-- cart box -->
                                <div class="aa-cartbox">
                                    <a class="aa-cart-link" href="cart.jsp">
                                        <span class="fa fa-shopping-basket"></span>
                                        <span class="aa-cart-title">KERANJANG</span>
                                        <%

                                        %>
                                        <span class="aa-cart-notify">
                                            <%   try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection conn2 = DriverManager.getConnection(host, "root", "");
                                                    String countid = "select count(user_id) from cart where user_id='" + userid + "'";
                                                    Statement stmt2 = conn2.createStatement();
                                                    ResultSet rs2 = null;
                                                    rs2 = stmt2.executeQuery(countid);
                                                    while (rs2.next()) {

                                                        String countids = rs2.getString(1);
                                                        out.print(countids);
                                                    }
                                                    rs2.close();
                                                    stmt2.close();
                                                    conn2.close();
                                                } catch (SQLException ex) {
                                                    out.print("Gagal Koneksi");
                                                } catch (Exception ex) {
                                                    out.print(ex.getMessage());
                                                }
                                            %>
                                        </span>

                                    </a>
                                </div>
                                <!-- / cart box -->
                                <!-- search box -->
                                <div class="aa-search-box">
                                    <form action="product_list_search.jsp">
                                        <input type="text" name="cari" id="pencarian" placeholder="Cari Sini Contoh : Kankung ">
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
                                <li><a href="indexlogin.jsp">Home</a></li>
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
                                <li><a href="product.jsp">Shop</a></li>
                                <!--<li><a href="product.jsp">Jenis Produk<span class="caret"></span></a>
                                    <ul class="dropdown-menu">                
                                        <li><a href="#sayur">Sayuran</a></li>
                                        <li><a href="#buahan">Buahan</a></li>              
                                    </ul>
                                </li>-->
                                <li><a href="contact.jsp">Contact</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div>
                </div>       
            </div>
        </section>
        <!-- / menu -->
        <%}
                rs.close();
                stmt.close();
                conn.close();
            } catch (SQLException ex) {
                out.print("Gagal Koneksi");
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
