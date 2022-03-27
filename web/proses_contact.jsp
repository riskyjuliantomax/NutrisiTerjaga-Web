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
            String id = (String) session.getAttribute("sessuser");
            String namalengkap = request.getParameter("namalengkap");
            String email = request.getParameter("email");
            String judul = request.getParameter("judul");
            String isi = request.getParameter("isi");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (judul != null && isi != null && id != null) {
                        PreparedStatement ps = con.prepareStatement("insert into contact (judul,isi,userid,status,notifikasi) values(?,?,?,?,?)");
                        ps.setString(1, judul);
                        ps.setString(2, isi);
                        ps.setString(3,id);
                        ps.setString(4,"Belum Proses");
                        ps.setString(5,"Belum Baca");
                        ps.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Terkirim');
                window.location.href = 'indexlogin.jsp';
            }
        </script>
        <%
        } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Mengirimkan Contact Us');
                window.location.href = 'indexlogin.jsp';
            }

        </script>
        <%}
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }%>
    </body>
</html>
