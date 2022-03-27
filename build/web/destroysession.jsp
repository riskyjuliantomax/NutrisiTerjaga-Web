<%-- 
    Document   : destroysession
    Created on : Jan 5, 2021, 8:25:40 PM
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
            session.invalidate();
            request.getRequestDispatcher("index.jsp").forward(request, response);
        %>
    </body>
</html>
