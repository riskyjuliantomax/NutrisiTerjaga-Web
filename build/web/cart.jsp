<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Keranjang Pembelanjaan</title>

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
                        <h2>Keranjang</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>                   
                            <li class="active">Keranjang</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- / catg header banner section -->

        <!-- Cart view section -->
        <section id="cart-view" style="margin-bottom: 40px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="cart-view-area">
                            <div class="cart-view-table">
                                <form action="updatecart.jsp" method="post">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Aksi</th>
                                                    <th>Gambar</th>
                                                    <th>Produk</th>
                                                    <th>Harga</th>
                                                    <th>Jumlah</th>
                                                </tr>
                                                <%                                                    try {
                                                        String userids = (String) session.getAttribute("sessuser");
                                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                        Connection conn = null;
                                                        Statement statement = null;
                                                        ResultSet rs = null;
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conn = DriverManager.getConnection(hosts, "root", "");
                                                        statement = conn.createStatement();
                                                        String data = "Select * from cart  where user_id ='" + userids + "'";
                                                        rs = statement.executeQuery(data);
                                                        while (rs.next()) {
                                                            String ids = rs.getString("id_produk");
                                                            Connection con2 = DriverManager.getConnection(host, "root", "");
                                                            Statement stmt2 = con2.createStatement();
                                                            String data2 = "select * from produk where id='" + ids + "'";
                                                            ResultSet rs2 = stmt2.executeQuery(data2);
                                                %>
                                                <% while (rs2.next()) {%>

                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><a class="remove" href="removecart.jsp?id=<%= rs.getString("id")%>"><fa class="fa fa-close"></fa></a></td>
                                                    <td><a href="#"><img src="img/<%= rs2.getString("lokasi_gambar")%>" alt="img"></a></td>
                                                    <td><a class="aa-cart-title" href="#"><%= rs2.getString("nama")%></a></td>
                                                    <td><%= rs2.getString("harga")%></td>
                                            <input type="hidden" name="userid" value="<%= userids %>">
                                            <input type="hidden" name="id" value="<%= rs.getString("id")%>">
                                            <input type="hidden" name="nama" value="<%= rs2.getString("nama")%>">
                                            <input type="hidden" name="harga" value="<%= Integer.parseInt(rs2.getString("harga"))%>">
                                            <input type="hidden" name="satuan" value="<%= rs2.getString("satuan")%>">
                                            <input type="hidden" name="gambar" value="<%= rs2.getString("lokasi_gambar")%>">
                                            <script>
                                                function imposeMinMax(el) {
                                                    if (el.value != "") {
                                                        if (parseInt(el.value) < parseInt(el.min)) {
                                                            el.value = el.min;
                                                        }
                                                        if (parseInt(el.value) > parseInt(el.max)) {
                                                            el.value = el.max;
                                                        }
                                                    }
                                                }
                                            </script>
                                            <td><input class="aa-cart-quantity" type="number" 
                                                       <%
                                                           int stok = Integer.parseInt(rs2.getString("stok"));
                                                           if (stok != 0) {%>
                                                       value="1"
                                                       <% } else {%>
                                                       value="0"
                                                       <%}%>
                                                       min="0" max="<%= rs2.getString("stok")%>" onkeyup="imposeMinMax(this)" name="jumlah" > KG</td>
                                            </tr>
                                            <% }
                                                        rs2.close();
                                                        stmt2.close();
                                                        con2.close();
                                                    }

                                                    rs.close();
                                                    statement.close();
                                                    conn.close();
                                                } catch (SQLException ex) {
                                                    out.print("Gagal Koneksi");
                                                } catch (Exception ex) {
                                                    out.print(ex.getMessage());
                                                }
                                            %>
                                            </tbody>
                                            <tr>
                                                <td colspan="6" class="aa-cart-view-bottom">
                                                    <text style="float: right;font-size: 15px; color: red">Silakan di sesuaikan jumlah yang diingin beli kemudian, klik Pembayaran</text>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div> 
                                    <input type="submit"  class="aa-cart-view-btn" value="Melakukan Pembayaran">
                                </form>
                            </div>
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