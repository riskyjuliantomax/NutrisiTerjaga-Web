<%-- 
    Document   : proses_contact
    Created on : Feb 4, 2021, 9:05:00 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String namalengkap = request.getParameter("namalengkap");
            String email = request.getParameter("email");
            String judul = request.getParameter("judul");
            String isi = request.getParameter("isi");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (id != null) {
                        PreparedStatement ps = con.prepareStatement("update mail_balas set status=? where userid='" + id + "'");
                        ps.setString(1, "Baca");
                        ps.executeUpdate();
                        request.getRequestDispatcher("notifikasi.jsp").forward(request, response);
                    } else {
                        out.print("Gagal");
                        request.getRequestDispatcher("notifikasi.jsp").forward(request, response);
                    }
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }%>
    </body>
</html>
