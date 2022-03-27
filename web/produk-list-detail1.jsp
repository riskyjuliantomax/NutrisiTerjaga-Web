<%@page import="java.sql.*" %>
<%-- 
    Document   : produk-list1
    Created on : Nov 27, 2020, 8:20:29 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">    
        <title>Daily Shop | Home</title>

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
        <!-- Start Database Connection -->
        <% try {
                String hosts = "jdbc:mysql://localhost:3306/nutrisiterjaga";
                Connection conn = null;
                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection(hosts, "root", "");
                statement = conn.createStatement();
                String data = "Select * from produk order by nama asc";
                rs = statement.executeQuery(data);
        %>
        <%while (rs.next()) {%>

    <li>
        <figure>
            <a class="aa-product-img" href="#"><img src="img/<%= rs.getString("lokasi_gambar")%>" alt="polo shirt img" width="250px" height="300px"></a>
            <a class="aa-add-card-btn" href="prosescart.jsp?id=<%= rs.getString("id")%>"><span class="fa fa-shopping-cart"></span>Masuk Keranjang</a>
            <figcaption>
                <h4 class="aa-product-title"><a href="prosescart.jsp?id=<%= rs.getString("id")%>"><%= rs.getString("nama")%></a></h4>
                <span class="aa-product-price">Rp.<%= rs.getString("harga")%> / <%= rs.getString("satuan")%></span><span class="aa-product-price">
            </figcaption>
        </figure>   

        <div class="aa-product-hvr-content">
            <!-- <a href="#" data-toggle="tooltip" data-placement="top" title="Compare"><span class="fa fa-exchange"></span></a>-->                          
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
