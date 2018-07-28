<%-- 
    Document   : logout
    Created on : 1 Jul, 2018, 8:37:10 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogOut</title>
    </head>
    <body>
        <%
            session=request.getSession(false);
            session.invalidate();
            RequestDispatcher rd=request.getRequestDispatcher("/admin_login.jsp");
            rd.forward(request, response);
        %>
    </body>
</html>
