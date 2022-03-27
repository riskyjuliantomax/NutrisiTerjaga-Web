<%-- 
    Document   : session
    Created on : Jan 5, 2021, 8:58:06 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
            String user = request.getParameter("user");
            session.setAttribute("sessuser", user);
            request.getRequestDispatcher("dashboard.jsp ").forward(request, response);
        %> 
    </body>
</html>
