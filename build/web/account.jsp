<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
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
        <%@include file="headerlogin.jsp" %>
        <!-- Start header section -->

        <section id="aa-catg-head-banner">
            <img src="img/green1920x300.jpg" alt="fashion img">
            <div class="aa-catg-head-banner-area">
                <div class="container">
                    <div class="aa-catg-head-banner-content">
                        <h2>Akun Setting</h2>
                        <ol class="breadcrumb">
                            <li><a href="index.html">Home</a></li>                   
                            <li class="active">Akun Setting</li>
                        </ol>
                    </div>
                </div>
            </div>
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
                            <div class="row">
                                <div class="col-md-6">

                                    <div class="aa-myaccount-login">
                                        <%                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conn = DriverManager.getConnection(host, "root", "");
                                                String querys = "select * from user where id='" + userid + "'";
                                                Statement stmt = conn.createStatement();
                                                ResultSet rs = null;
                                                rs = stmt.executeQuery(querys);
                                                while (rs.next()) {
                                        %>
                                        <form action="proses_edit_account.jsp" class="aa-login-form" method="post">
                                            <label for="">Nama Lengkap<span>*</span></label>
                                            <input type="text" value="<%= rs.getString("nama")%>" name="nama">
                                            <label for="">Email<span>*</span></label>
                                            <input type="text" value="<%= rs.getString("email")%>" name="email">
                                            <label for="">Provinsi<span>*</span></label>
                                            <input type="text" value="
                                                   <%
                                                       String provinsi = rs.getString("provinsi");
                                                       if (provinsi != null) {
                                                           out.println(provinsi);
                                                       } else {
                                                           out.println("");
                                                       }
                                                   %>
                                                   " name="provinsi">
                                            <label for="">Kabupaten<span>*</span></label>
                                            <input type="text" value=" <%
                                                String kabupaten = rs.getString("kabupaten");
                                                if (kabupaten != null) {
                                                    out.println(kabupaten);
                                                } else {
                                                    out.println("");
                                                }
                                                   %>" name="kabupaten">
                                            <!-- <label class="rememberme" for="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
                                             <p class="aa-lost-password"><a href="#">Lost your password?</a></p> -->

                                            </div>
                                            </div>      
                                            <div class="col-md-6">
                                                <div class="aa-myaccount-register">                 
                                                    <div class="aa-login-form">

                                                        <label for="">Handphone<span>*</span></label>
                                                        <input type="text" value="<%= rs.getString("nohp")%>" name="nohp">
                                                        <label for="">Kodepos<span>*</span></label>
                                                        <input type="text" value="<%
                                                            String kodepos = rs.getString("kodepos");
                                                            if (kodepos != null) {
                                                                out.println(kodepos);
                                                            } else {
                                                                out.println("");
                                                            }
                                                               %>" name="kodepos">
                                                        <label for="">Kecamatan<span>*</span></label>
                                                        <input type="text" value="
                                                               <%
                                                                   String kecamatan = rs.getString("kecamatan");
                                                                   if (kecamatan != null) {
                                                                       out.println(kabupaten);
                                                                   } else {
                                                                       out.println("");
                                                                   }
                                                               %>" name="kecamatan">
                                                        <label for="">Alamat<span>*</span></label>
                                                        <textarea rows="8" cols="10" class="form-control"  name="alamat">
                                                            <%
                                                                String alamat = rs.getString("alamat");
                                                                if (kecamatan != null) {
                                                                    out.println(alamat);
                                                                } else {
                                                                    out.println("");
                                                                }
                                                            %></textarea>
                                                        <button type="submit" class="aa-browse-btn">Ubah</button>                    
                                                    </div>
                                                </div>
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