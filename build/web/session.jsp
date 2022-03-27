<%-- 
    Document   : session
    Created on : Jan 6, 2021, 7:27:22 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nutrisiterjaga", "root", "");
                String query = "select * from user where user='" + user + "'";
                Statement stmt = conn.createStatement();
                ResultSet rs = null;
                rs = stmt.executeQuery(query);

                while (rs.next()) {
                    String userid = rs.getString("id");
                    session.setAttribute("sessuser", userid);
                    request.getRequestDispatcher("indexlogin.jsp").forward(request, response);

                }
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
