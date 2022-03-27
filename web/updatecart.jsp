<%-- 
    Document   : updatecart
    Created on : Feb 8, 2021, 12:29:43 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id_produk[] = request.getParameterValues("id");
            String harga[] = request.getParameterValues("harga");
            String jumlah[] = request.getParameterValues("jumlah");
            String satuan[] = request.getParameterValues("satuan");
            String gambar[] = request.getParameterValues("gambar");
            try {
                for (int i = 0; i < id_produk.length; i++) {
//                    out.print(", id Produk : " + id_produk[i] + " Jumlah = " + jumlah[i] + ", Harga : " + harga[i] + "/" + satuan[i]);
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                    Statement st = con.createStatement();
                    String sql = "update cart set jumlah='" + jumlah[i] + "' where id ='" + id_produk[i] + "'";
                    int k = st.executeUpdate(sql);
                } request.getRequestDispatcher("checkout.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
