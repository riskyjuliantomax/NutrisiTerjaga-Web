<%-- 
    Document   : prosescart
    Created on : Jan 26, 2021, 5:19:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String id = request.getParameter("id");
            String userid = (String) session.getAttribute("sessuser");
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                if (conn != null) {
                    if (userid != null) {
                        PreparedStatement pst = conn.prepareStatement("insert into cart(id_produk,user_id) values(?,?)");
                        pst.setString(1, id);
                        pst.setString(2, userid);
                        pst.executeUpdate();
        %>
        <script>
            window.onload = function () {
                alert('Berhasil Di Tambahkan ke Cart');
                window.location.href = "indexlogin.jsp";
            }
        </script>
        <%
        } else {
        %>
        <script>
            window.onload = function () {
                alert('Gagal Menambahkan produk Cart');
                window.location.href = "indexlogin.jsp";
            }

        </script>
        <%
                    }
                }
            } catch (SQLException ex) {
                out.print("Gagal Koneksi");
            } catch (Exception ex) {
                out.print(ex.getMessage());
            }
        %>
    </body>
</body>
</html>
