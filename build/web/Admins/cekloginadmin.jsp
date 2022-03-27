<%-- 
    Document   : cekloginadmin
    Created on : Dec 3, 2020, 7:22:13 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="gagalloginadmin.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% String username = request.getParameter("user");
           String password = request.getParameter("pass");

          if (username.equals("budi") && password.equals("budi")) {
         getServletContext().getRequestDispatcher("/Admin/dashboard.jsp").forward(request, response);
            }
            else if (username == null || "".equals(username) || password == null || "".equals(password)
                   || username != "budi" || password != "budi"){
                  throw new ServletException("Mandatory Parameter missing");
            }
        %>
    </body>
</html>
