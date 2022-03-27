<%-- 
    Document   : proses_edit_account
    Created on : Feb 3, 2021, 8:22:37 PM
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
            String namalengkap = request.getParameter("nama");
            String email = request.getParameter("email");
            String provinsi = request.getParameter("provinsi");
            String kabupaten = request.getParameter("kabupaten");
            String hp = request.getParameter("nohp");
            String kodepos = request.getParameter("kodepos");
            String kecamatan = request.getParameter("kecamatan");
            String alamat = request.getParameter("alamat");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (con != null) {
                    if (namalengkap != null && email != null && namalengkap != "" && email != "" && hp != null && hp != "") {
                        PreparedStatement ps = con.prepareStatement("update user set nama=?,email=?,nohp=?,provinsi=?,kabupaten=?,kecamatan=?, kodepos=?, alamat=? where id = '" + id + "'");
                        ps.setString(1, namalengkap);
                        ps.setString(2, email);
                        ps.setString(3, hp);
                        ps.setString(4, provinsi);
                        ps.setString(5, kabupaten);
                        ps.setString(6, kecamatan);
                        ps.setString(7, kodepos);
                        ps.setString(8, alamat);
                        ps.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Di edit');
                window.location.href = 'account.jsp';
            }
        </script>
        <%
        } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Edit Akun Silakan hubungi kami');
                window.location.href = 'account.jsp';
            }

        </script>
        <%}
                }
            } catch (Exception e) {
                out.print("can't connect database : " + e.getMessage());
            }%>
    </body>
</html>
