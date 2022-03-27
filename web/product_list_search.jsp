<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Produk | NutrisiTerjaga</title>

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
    <%
        String user = (String) session.getAttribute("sessuser");
        if (user != null) {%>
    <%@include file="headerlogin.jsp" %>
    <% } else {%> 
    <%@include file="header.jsp" %>
    <% }%>
    <!-- !Important notice -->
    <!-- Only for product page body tag have to added .productPage class -->
    <body class="productPage">  
        <!-- catg header banner section -->
        <!--<section id="aa-catg-head-banner">
         <img src="img/fashion/fashion-header-bg-8.jpg" alt="fashion img">
         <div class="aa-catg-head-banner-area">
           <div class="container">
            <div class="aa-catg-head-banner-content">
              <h2>Fashion</h2>
              <ol class="breadcrumb">
                <li><a href="index.html">Home</a></li>         
                <li class="active">Women</li>
              </ol>
            </div>
           </div>
         </div>
        </section>
        <!-- / catg header banner section -->

        <!-- product category -->
        <section id="aa-product-category">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-8 col-md-push-3">
                        <div class="aa-product-catg-content">
                            <div class="aa-product-catg-head">
                                <div class="aa-product-catg-head-left">

                                    <!--
                                  <form action="" class="aa-show-form">
                                    <label for="">Show</label>
                                    <select name="">
                                      <option value="1" selected="12">1</option>
                                      <option value="2">24</option>
                                      <option value="3">48</option>
                                    </select>
                                  </form> -->

                                </div>
                                <div class="aa-product-catg-head-right">
                                    <a id="grid-catg" href="#"><span class="fa fa-th"></span></a>
                                    <a id="list-catg" href="#"><span class="fa fa-list"></span></a>
                                </div>
                            </div>
                            <div class="aa-product-catg-body">
                                <ul class="aa-product-catg">
                                    <!-- start single product item -->
                                    <% try {
                                            String jenis = request.getParameter("jenis");
                                            String cari = request.getParameter("cari");
                                            String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                            Connection conn = null;
                                            Statement statement = null;
                                            ResultSet rs = null;
                                            Class.forName("com.mysql.jdbc.Driver");
                                            conn = DriverManager.getConnection(hosts, "root", "");
                                            statement = conn.createStatement();
                                            String data = "Select * from produk where nama like '%" + cari + "%' or jenis ='"+jenis+"'";
                                            rs = statement.executeQuery(data);
                                    %>
                                    <%while (rs.next()) {%>

                                    <li>
                                        <figure>
                                            <a class="aa-product-img" href="product-detail.jsp?id=<%= rs.getString("id")%>"><img src="img/<%= rs.getString("lokasi_gambar")%>" alt="polo shirt img" width="250px" height="300px"></a>
                                            <a class="aa-add-card-btn" href="prosescart.jsp?id=<%= rs.getString("id")%>"><span class="fa fa-shopping-cart"></span>Masuk Keranjang</a>
                                            <figcaption>
                                                <h4 class="aa-product-title"><a href="prosescart.jsp?id=<%= rs.getString("id")%>"><%= rs.getString("nama")%></a></h4>
                                                <span class="aa-product-price">Rp.<%= rs.getString("harga")%> / <%= rs.getString("satuan")%></span><span class="aa-product-price">
                                            </figcaption>
                                        </figure>   

                                        <div class="aa-product-hvr-content">
                                       </div>
                                        <!-- product badge -->
                                        <%
                                            int stok = Integer.parseInt(rs.getString("stok"));
                                            if (stok > 10) {
                                        %>
                                        <span class="aa-badge aa-sale" href="#">Jual!</span>
                                        <% } else if (stok < 10 && stok >= 1) { %>
                                        <span class="aa-badge aa-hot" href="#">Hampir Habis!</span>
                                        <% } else { %>
                                        <span class="aa-badge aa-sold-out" href="#">Habis!</span>
                                        <% }%>
                                        <!-- Closing Database Connection -->
                                        <% } %>
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
                                    </li>

                                </ul>                       

                            </div>
                            <!--                            <div class="aa-product-catg-pagination">
                                                            <nav>
                                                                <ul class="pagination">
                                                                    <li>
                                                                        <a href="#" aria-label="Previous">
                                                                            <span aria-hidden="true">&laquo;</span>
                                                                        </a>
                                                                    </li>
                                                                    <li><a href="#">1</a></li>
                                                                    <li><a href="#">2</a></li>
                                                                    <li><a href="#">3</a></li>
                                                                    <li><a href="#">4</a></li>
                                                                    <li><a href="#">5</a></li>
                                                                    <li>
                                                                        <a href="#" aria-label="Next">
                                                                            <span aria-hidden="true">&raquo;</span>
                                                                        </a>
                                                                    </li>
                                                                </ul>
                                                            </nav>
                                                        </div>-->

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 col-md-pull-9">
                        <aside class="aa-sidebar">
                            <!-- single sidebar -->
                            <div class="aa-sidebar-widget">
                                <h3>Category</h3>
                                <ul class="aa-catg-nav">
                                     <li><a href="product.jsp">Semua</a></li>
                                    <li><a href="product_list_search.jsp?jenis=Sayur">Sayur</a></li>
                                    <li><a href="product_list_search.jsp?jenis=BUAHAN">Buahan</a></li>
                                </ul>
                            </div>

                        </aside>
                    </div>

                </div>
            </div>
        </section>
        <!-- / product category -->


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