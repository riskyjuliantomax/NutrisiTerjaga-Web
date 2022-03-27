<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDateTime"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Melakukan Pembayaran</title>

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
                        <h2>Pembayaran</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>                   
                            <li class="active">Pembayaran</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <!-- / catg header banner section -->

        <!-- Cart view section -->
        <section id="checkout">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="checkout-area">
                            <form action="proses_bayar.jsp">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="checkout-left">
                                            <div class="panel-group" id="accordion"> 
                                                <div class="panel panel-default aa-checkout-billaddress">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a>
                                                                Alamat Lokasi Anda Sekarang
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseFour" class="panel-collapse collapse in">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Name Depan*" required="" name="namadepan">
                                                                    </div>                             
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Nama Belakang*" required="" name="namabelakang">
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="number" placeholder="Nomor Handphone*" required="" name="nohp">
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <textarea cols="8" rows="3" required="" name="alamatpengiriman" placeholder="Alamat Pengiriman"></textarea>
                                                                    </div>                             
                                                                </div>                            
                                                            </div>   
                                                            <!--<div class="row">
                                                              <div class="col-md-12">
                                                                <div class="aa-checkout-single-bill">
                                                                  <select>
                                                                    <option value="0">Select Your Country</option>
                                                                    <option value="1">Australia</option>
                                                                    <option value="2">Afganistan</option>
                                                                    <option value="3">Bangladesh</option>
                                                                    <option value="4">Belgium</option>
                                                                    <option value="5">Brazil</option>
                                                                    <option value="6">Canada</option>
                                                                    <option value="7">China</option>
                                                                    <option value="8">Denmark</option>
                                                                    <option value="9">Egypt</option>
                                                                    <option value="10">India</option>
                                                                    <option value="11">Iran</option>
                                                                    <option value="12">Israel</option>
                                                                    <option value="13">Mexico</option>
                                                                    <option value="14">UAE</option>
                                                                    <option value="15">UK</option>
                                                                    <option value="16">USA</option>
                                                                  </select>
                                                                </div>                             
                                                              </div>                            
                                                            </div>-->
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Tempat Tinggal Contoh : Rumah/Apartement" required name="tempattinggal">
                                                                    </div>                             
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Kota*" required="" name="kota">
                                                                    </div>
                                                                </div>
                                                            </div>   
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Provinsi/Kabupaten*" required="" name="kabupaten/provinsi">
                                                                    </div>                             
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <input type="text" placeholder="Kodepos*" required="" name="kodepos">
                                                                    </div>
                                                                </div>
                                                            </div> 
                                                            <div class="row">
                                                                <div class="col-md-12">
                                                                    <div class="aa-checkout-single-bill">
                                                                        <textarea cols="8" rows="3" placeholder="catatan" name="catatan"></textarea>
                                                                    </div>                             
                                                                </div>                            
                                                            </div>              
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="checkout-right">
                                            <h4>Ringkasan Pesanan</h4>
                                            <div class="aa-order-summary-area">
                                                <table class="table table-responsive">
                                                    <thead>
                                                        <tr>
                                                            <th>Produk</th>
                                                            <th>Jumlah Produk</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <%                                                      try {
                                                                String userids = (String) session.getAttribute("sessuser");
                                                                String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                                Connection conn = null;
                                                                Statement statement = null;
                                                                ResultSet rs = null;
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                conn = DriverManager.getConnection(hosts, "root", "");
                                                                statement = conn.createStatement();
                                                                String data = "Select * from cart where user_id ='" + userids + "'";

                                                                rs = statement.executeQuery(data);
                                                                while (rs.next()) {
                                                                    String ids = rs.getString("id_produk");
                                                                    Connection con2 = DriverManager.getConnection(host, "root", "");
                                                                    Statement stmt2 = con2.createStatement();
                                                                    String data2 = "select * from produk where id='" + ids + "'";
                                                                    ResultSet rs2 = stmt2.executeQuery(data2);
                                                        %>
                                                        <% while (rs2.next()) {%>

                                                        <tr>
                                                            <td><%= rs2.getString("nama")%> </td>

                                                    <input type="hidden" name="id_produk" value="<%= rs2.getString("id")%>">
                                                    <input type="hidden" name="id_cart" value="<%= rs.getString("id")%>">
                                                    <input type="hidden" name="namaproduk" value="<%= rs2.getString("nama")%>">
                                                    <input type="hidden" name="harga" value="<%= rs2.getString("harga")%>">
                                                    <input type="hidden" name="satuan" value="<%= rs2.getString("satuan")%>">
                                                    <input type="hidden" name="jumlah" value="<%= rs.getString("jumlah")%>">
                                                    <td><%= rs.getString("jumlah")%><strong> X <%= rs2.getString("harga")%>  /Per <%= rs2.getString("satuan")%> </strong></td>
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
                                                    <tfoot>

                                                        <tr>
                                                            <th>Subtotal</th>
                                                            <td>
                                                                <%
                                                                    try {
                                                                        String userids = (String) session.getAttribute("sessuser");
                                                                        String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                                                                        Connection conn = null;
                                                                        Statement statement = null;
                                                                        ResultSet rs = null;
                                                                        Class.forName("com.mysql.jdbc.Driver");
                                                                        conn = DriverManager.getConnection(hosts, "root", "");
                                                                        statement = conn.createStatement();
                                                                        String data = "select sum((p.harga*c.jumlah)) from produk p, cart c where c.user_id='" + userids + "' && p.id = c.id_produk";

                                                                        rs = statement.executeQuery(data);
                                                                        while (rs.next()) {
                                                                %>
                                                                <%= rs.getString(1)%>
                                                            </td>
                                                    <input type="hidden" name="totalharga" value="<%= rs.getString(1)%>">
                                                    </tr>
                                                    <%}

                                                            rs.close();
                                                            statement.close();
                                                            conn.close();
                                                        } catch (SQLException ex) {
                                                            out.print("Gagal Koneksi");
                                                        } catch (Exception ex) {
                                                            out.print(ex.getMessage());
                                                        }
                                                    %>

                                                    </tfoot>
                                                </table>
                                            </div>
                                            <h4>Payment Method</h4>
                                            <div class="aa-payment-method">                    
                                                <label for="cashdelivery"><input type="radio" id="cashdelivery" name="metodepembayaran" value="Bayar Di Tempat"> Bayar di tempat </label>
                                                <label for="mandiri"><input type="radio" name="metodepembayaran" value="Mandiri" checked> Via Mandiri </label>
                                                <!--                                                <img src="img/mandiri.png" border="0" alt="Mandiri Mark" width="40px">-->
                                                <label for="bni"><input type="radio" name="metodepembayaran" value="BNI"> Via BNI </label>
                                                <label for="bri"><input type="radio" name="metodepembayaran" value="BRI"> Via BRI </label>
                                                <input type="submit" value="Place Order" class="aa-browse-btn">                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
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